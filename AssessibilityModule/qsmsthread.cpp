#include "qsmsthread.h"
#include <winsock2.h>
#include <windows.h>

QSmsThread* QSmsThread::pThreadInstance = NULL;

QSmsThread::QSmsThread( QObject *parent) :
    QBaseThread(  "QSmsThread", parent )
{
    pAxCtrl = new QAxWidget( );
    pAxCtrl->setVisible( false );
    bool bRet = pAxCtrl->setControl( QString::fromUtf8( "{6C701A8E-0EFD-4539-83D6-3BDEBCDD9C1F}" ) );

    bRet = connect( pAxCtrl, SIGNAL( exception( int, const QString&, const QString&, const QString& ) ),
                    this, SLOT( HandleException( int, const QString&, const QString&, const QString& ) ) );
    bRet = connect( pAxCtrl, SIGNAL( OnConnectResult( int ) ), this, SLOT( OnConnectResult( int ) ) );
    bRet = connect( pAxCtrl, SIGNAL( OnRecvMsg( int ) ), this, SLOT( OnRecvMsg( int ) ) );
    bRet = connect( pAxCtrl, SIGNAL( OnSendMsg( int, int ) ), this, SLOT( OnSendMsg( int, int ) ) );
    QVariant var = pAxCtrl->dynamicCall( "init( )" );
    qDebug( ) << ( QVariant( 0 ) == var ? "Init GSM Success" : "Init GSM Failure" ) << endl;

    pConfigurator = QConfigurator::CreateConfigurator( );
}

QSmsThread* QSmsThread::CreateInstance( QObject* pParent )
{
    if (  NULL == pThreadInstance ) {
        pThreadInstance = new QSmsThread( pParent );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QSmsThread::PostSendSmsEvent( const QStringList& lstTelephoneID, const QString& strContent  )
{
    QSmsEvent* pEvent = QSmsEvent::CreateSmsEvent( QSmsEvent::SendSms );
    pEvent->SetTelephoneID( lstTelephoneID );
    pEvent->SetContent( strContent );

    PostEvent( pEvent );
}

void QSmsThread::run( )
{
    if ( !ThreadInitialize( ) ) {
        return;
    }

    exec( );
}

void QSmsThread::customEvent( QEvent* pEvent )
{
    QSmsEvent* pSmsEvent = ( QSmsEvent* ) pEvent;
    QSmsEvent::SmsEvent eEvent = ( QSmsEvent::SmsEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QSmsEvent::SendSms :
        ProcessSendSmsEvent( pSmsEvent );
        break;
    }
}

bool QSmsThread::ThreadInitialize( )
{
    bool bRet = QBaseThread::ThreadInitialize( );

    return bRet;
}

void QSmsThread::ThreadUninitialize( )
{
    if ( NULL != pAxCtrl ) {
            pAxCtrl->clear( );
            delete pAxCtrl;
            pAxCtrl = NULL;
        }
}

bool QSmsThread::ConnectModem( )
{
    bool bRet = false;
    QVariant var = pAxCtrl->dynamicCall( "ModemConnected( )" );

    if ( !var.toBool( ) ) {
         QString strValue;
        pConfigurator->GetSmsAccessCode( strValue );
        QVariant varAC = strValue;

        pConfigurator->GetSmsCOM( strValue );
        QVariant varCOM = strValue;

        int nBaudRate = 115200;
        pConfigurator->GetSmsCOMBaudRate( nBaudRate );
        QVariant varBR = nBaudRate;

        var = pAxCtrl->dynamicCall( "ConnectModem( const QString&, int, const QString& )", varCOM, varBR, varAC );

        int nCounter = 12;

        while ( 0 < nCounter-- ) {
            var = pAxCtrl->dynamicCall( "ModemConnected( )" );
            if ( var.toBool( ) ) {
                break;
            }

            msleep( 10000 );
            qDebug( ) << "Wait for 10 seconds." << endl;
        }
    }

    return bRet;
}

void QSmsThread::ProcessSendSmsEvent( QSmsEvent *pEvent )
{
    const QStringList& lstTelNumber = pEvent->GetTlephoneID( );
    QVariant varContent = pEvent->GetContent( );
    QVariant var;

    foreach ( const QString& str, lstTelNumber ) {
        if ( 11 != str.count( ) || "1" != str.left( 1 ) ) {
            continue;
        }

        QVariant varTelNum = str;
        QVariant varIndex = str.toInt( );
        var = pAxCtrl->dynamicCall( "SendMsg(  const QString&, const QString&, int )", varTelNum, varContent, varIndex  );
    }
}

void QSmsThread::HandleException( int code, const QString &source, const QString &desc, const QString &help )
{
    QString strLog = QString( "nCode:%1 Source:%2 Desc:%3 Help:%4" ).arg( QString::number( code ), source, desc, help );
    EmitLog( strLog );
    qDebug( ) <<  strLog << endl;
}

void QSmsThread::OnConnectResult( int nStatus )
{
    QString strLog = QString( "Connect SGM Modem %1" ).arg( ( 0 == nStatus ) ? "Success" : "Failure" );
    EmitLog( strLog );
    qDebug( ) <<  strLog << endl;
}

void QSmsThread::OnRecvMsg( int nMsgCount )
{
    QVariant var;
    QVariant nYear = 0, nMonth = 0, nDay = 0, nHour = 0, nMinute = 0, nSecond = 0;
    QString strTel, strCnt;
    strTel.reserve( 32 );
    strCnt.reserve( 200 );
    QString strLogPattern = "Received message :%1 %2";
    QString strLog;

    while ( 0 < nMsgCount ) {
        var = pAxCtrl->dynamicCall( "RecvMsg( QString&, QString&, int&, int&, int&, int&, int&, int& )",
                                    strTel, strCnt, nYear, nMonth, nDay, nHour, nMinute, nSecond );

        strLog = strLogPattern.arg( strTel, strCnt  );
        EmitLog( strLog );
        qDebug( ) << strLog << endl;

        nMsgCount--;
    }
}

void QSmsThread::OnSendMsg( int nResult, int nMsgIndex )
{
    QString strLog = QString( "Send Message %1 DestNumber:%2" ).arg( ( 0 == nResult ) ? "Success" : "Failure", QString::number( nMsgIndex ) );
    EmitLog( strLog );
    qDebug( ) <<  strLog << endl;
}
