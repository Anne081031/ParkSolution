#include "qtcpserverthread.h"

QTcpServerThread* QTcpServerThread::pThreadInstance = NULL;

QTcpServerThread::QTcpServerThread(QObject *parent) :
    QBaseThread( "QTcpServerThread", parent )
{
}

QTcpServerThread* QTcpServerThread::CreateInstance( )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QTcpServerThread( );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QTcpServerThread::PostStartServerEvent( const quint16 nPort )
{
    QTcpServerEvent* pEvent = QTcpServerEvent::CreateTcpServerEvent( QTcpServerEvent::StartServer );
    pEvent->SetServerPort( nPort );
    PostEvent( pEvent );
}

void QTcpServerThread::PostStopServerEvent( const quint16 nPort )
{
    QTcpServerEvent* pEvent = QTcpServerEvent::CreateTcpServerEvent( QTcpServerEvent::StopServer );
    pEvent->SetServerPort( nPort );
    PostEvent( pEvent );
}

void QTcpServerThread::run( )
{
    ThreadInitialize( );
    exec( );
}

void QTcpServerThread::customEvent( QEvent* pEvent )
{
    QTcpServerEvent* pTcpServerEvent = ( QTcpServerEvent* ) pEvent;
    QTcpServerEvent::TcpServerEvent eEvent = ( QTcpServerEvent::TcpServerEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QTcpServerEvent::StartServer :
        ProcessStartServerEvent( pTcpServerEvent );
        break;

    case QTcpServerEvent::StopServer :
        ProcessStopServerEvent( pTcpServerEvent );
        break;

    default:
        break;
    }
}

void QTcpServerThread::HandleSocketConnection( qintptr socketDescriptor )
{

}

void QTcpServerThread::ProcessStartServerEvent( QTcpServerEvent *pEvent)
{
    const quint16 nPort = pEvent->GetServerPort( );
    QMyTcpServer* pTcpServer = hashTcpServer.value( nPort );

    if ( !hashTcpServer.contains( nPort ) || NULL == pTcpServer ) {
        pTcpServer = new QMyTcpServer( this );
        hashTcpServer.insert( nPort, pTcpServer );
        connect( pTcpServer, SIGNAL( SocketConnection( qintptr ) ),
                 this, SLOT( HandleSocketConnection( qintptr ) ) );
    }

    if ( pTcpServer->isListening( )  ) {
        return;
    }

    bool bRet = pTcpServer->listen( QHostAddress::Any, nPort );

    QString strLog = bRet ? QString( "Server start【Port %1】" ).arg( nPort ) : pTcpServer->errorString( );
    EmitLog( strLog );
}

void QTcpServerThread::ProcessStopServerEvent( QTcpServerEvent *pEvent )
{
    const quint16 nPort = pEvent->GetServerPort( );
    QMyTcpServer* pTcpServer = hashTcpServer.value( nPort );

    if ( !hashTcpServer.contains( nPort ) || NULL == pTcpServer ) {
        return;
    }

    pTcpServer->close( );

    QString strLog = QString( "Server stop【Port %1】" ).arg( nPort );
    EmitLog( strLog );
}

bool QTcpServerThread::ThreadInitialize( )
{
    return true;
}

void QTcpServerThread::ThreadUninitialize( )
{

}
