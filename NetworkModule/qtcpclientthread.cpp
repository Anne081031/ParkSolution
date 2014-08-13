#include "qtcpclientthread.h"

QTcpClientThread* QTcpClientThread::pThreadInstance = NULL;

QTcpClientThread::QTcpClientThread(QObject *parent) :
    QBaseThread( "QTcpClientThread", parent )
{
    qRegisterMetaType< QAbstractSocket::SocketError >( "QAbstractSocket::SocketError" );
}

QTcpClientThread* QTcpClientThread::CreateInstance( )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QTcpClientThread( );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QTcpClientThread::run( )
{
    ThreadInitialize( );
    exec( );
}

void QTcpClientThread::PostConnectServerEvent( QString& strIP, quint16 nPort )
{
    QTcpClientEvent* pEvent = QTcpClientEvent::CreateTcpClientEvent( QTcpClientEvent::ConnectServer );
    pEvent->SetServerIP( strIP );
    pEvent->SetServerPort( nPort );
    PostEvent( pEvent );
}

void QTcpClientThread::PostDisconnectServerEvent( )
{
    QTcpClientEvent* pEvent = QTcpClientEvent::CreateTcpClientEvent( QTcpClientEvent::DisconnectServer );
    PostEvent( pEvent );
}

void QTcpClientThread::PostSendDataEvent( QByteArray& byData )
{
    QTcpClientEvent* pEvent = QTcpClientEvent::CreateTcpClientEvent( QTcpClientEvent::SendData );
    pEvent->SetSendData( byData );
    PostEvent( pEvent );
}

void QTcpClientThread::ProcessConnectServerEvent( QTcpClientEvent* pEvent )
{
    strServerIP = pEvent->GetServerIP( );
    nServerPort = pEvent->GetServerPort( );

    ConnectServer( strServerIP, nServerPort );
}

void QTcpClientThread::ProcessDisconnectServerEvent( QTcpClientEvent* pEvent )
{
    Q_UNUSED( pEvent )
    DisconnectServer( );
}

void QTcpClientThread::ProcessSendDataEvent( QTcpClientEvent* pEvent )
{
    const QByteArray& byData = pEvent->GetSendData( );
    pTcpSocket->write( byData );
}

void QTcpClientThread::customEvent( QEvent* pEvent )
{
    QTcpClientEvent* pTcpClientEvent = ( QTcpClientEvent* ) pEvent;
    QTcpClientEvent::TcpClientEvent eEvent = ( QTcpClientEvent::TcpClientEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QTcpClientEvent::ConnectServer :
        ProcessConnectServerEvent( pEvent );
        break;

    case QTcpClientEvent::DisconnectServer :
        ProcessDisconnectServerEvent( pEvent );
        break;

    case QTcpClientEvent::SendData :
        ProcessSendDataEvent( pEvent );
        break;

    default:
        break;
    }
}

bool QTcpClientThread::ThreadInitialize( )
{
    pTcpSocket = new QTcpSocket( this );
    return true;
}

void QTcpClientThread::ThreadUninitialize( )
{

}

void QTcpClientThread::GetSocketInfo( QObject* pSocketSender, QString& strSocketInfo )
{
    QTcpSocket* pSocket = ( QTcpSocket* ) pSocketSender;
    QString strLocalAddr = pSocket->localAddress( ).toString( );
    QString strPeerAddr = pSocket->peerAddress( ).toString( );

    quint16 nLocalPort = pSocket->localPort( );
    quint16 nPeerPort = pSocket->peerPort( );

    strSocketInfo = QString( "Client【%1:%2】Server【%3:%4】%5" ).arg( strLocalAddr, QString::number( nLocalPort),
                                                                 strPeerAddr, QString::number( nPeerPort ), pSocket->errorString( ) );
    EmitLog( strtLog );
}

void QTcpClientThread::ConnectServer( QString& strIP, quint16 nPort )
{
    pTcpSocket->connectToHost(  strIP, nPort );
}

void QTcpClientThread::DisconnectServer( )
{
    pTcpSocket->disconnectFromHost( );
}

void QTcpClientThread::HandleConnected( )
{
    QString strLog;
    GetSocketInfo( sender( ), strLog );
}

void QTcpClientThread::HandleDisconnected( )
{
    QString strLog;
    GetSocketInfo( sender( ), strLog );
    ConnectServer( strServerIP, nServerPort );
}

void QTcpClientThread::HandleError( QAbstractSocket::SocketError socketError )
{
    Q_UNUSED( socketError )
    QString strLog;
    GetSocketInfo( sender( ), strLog );
}

void QTcpClientThread::HandleReadyRead( )
{
    QTcpSocket* pSocket = ( QTcpSocket* ) sender( );
    QByteArray byData = pSocket->readAll( );
    qDebug( ) << Q_FUNC_INFO << QString( byData );
}
