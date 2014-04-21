#include "qspeechthread.h"
#include <QApplication>
#include <QDebug>
#include <windows.h>

QSpeechThread* QSpeechThread::pThreadInstance = NULL;

QSpeechThread::QSpeechThread(QObject *parent) :
    QThread(parent)
{
    pAxSAPI = NULL;
}

QSpeechThread::~QSpeechThread( )
{
    if ( NULL != pAxSAPI ) {
        delete pAxSAPI;
    }

    ::CoUninitialize( );
}

void QSpeechThread::HandleException( int code, const QString &source, const QString &desc, const QString &help )
{
    qDebug( ) << Q_FUNC_INFO << endl
              << QString::number( code ) << "   "
              << source << "    "
              << desc << "    "
              << help << endl;

    QString strLog = QString( "语音模块异常\n%1" ).arg( desc );

    emit Log( strLog );
}

QSpeechThread* QSpeechThread::CreateInstance( )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QSpeechThread( );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QSpeechThread::PostSpeakVoiceEvent( QString& strText )
{
    QSpeechEvent* pEvent = QSpeechEvent::CreateSpeechEvent( QSpeechEvent::SpeakVoice );
    pEvent->SetSpeechText( strText );

    PostEvent( pEvent );
}

void QSpeechThread::run( )
{
    HRESULT hr =  CoInitialize( NULL );
    if ( FAILED( hr ) ) {
        QString strLog = "COM初始化失败。";
        emit Log( strLog );
        return;
    }

    pAxSAPI = new QAxObject( "SAPI.SpVoice" );
    connect( pAxSAPI, SIGNAL( exception( int, const QString&, const QString&, const QString& ) ),
             this, SLOT( HandleException( int, const QString&, const QString&, const QString& ) ) );

    exec( );
}

void QSpeechThread::customEvent( QEvent* pEvent )
{
    QSpeechEvent* pSheepEvent = ( QSpeechEvent* ) pEvent;
    QSpeechEvent::SpeechEvent eEvent = ( QSpeechEvent::SpeechEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QSpeechEvent::SpeakVoice :
        ProcessSpeakVoiceEvent( pSheepEvent );
        break;
    }
}

void QSpeechThread::PostEvent( QSpeechEvent* pEvent )
{
    qApp->postEvent( this, pEvent );
}

void QSpeechThread::ProcessSpeakVoiceEvent( QSpeechEvent* pEvent )
{
    QList< QVariant > lstVariant;
    QString strText = QString( "<volume level='100'/><lang langid='804'/>%1" ).arg(
                pEvent->GetSpeechText( ) );

    QVariant varValue = strText;
    lstVariant.append( varValue );

    varValue = ( 1 << 0 ) | ( 1 << 3 ); // Async XML
    lstVariant.append( varValue );

    varValue = pAxSAPI->dynamicCall( "Speak(const QString&, uint )", lstVariant );
    qDebug( ) << Q_FUNC_INFO << endl
              << "Out Argument value "
              << varValue.toString( ) << endl;
}
