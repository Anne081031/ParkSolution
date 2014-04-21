#include "qzmqclientthread.h"

QZmqClientThread* QZmqClientThread::pThreadInstance = NULL;

QZmqClientThread::QZmqClientThread(QObject *parent) :
    QBaseThread( "QZmqClientThread", parent)
{
    pConfigurator = QConfigurator::CreateConfigurator( );
    pZMQContext = NULL;
    pZMQSocket = NULL;
}

bool QZmqClientThread::ThreadInitialize( )
{
    QBaseThread::ThreadInitialize( );

    pConfigurator->GetZmqClientHost( strZmqServerHost );
    pConfigurator->GetZmqClientHostPort( nZmqServerHPort );

    pZMQContext = zmq_ctx_new( );
    if ( NULL == pZMQContext ) {
        DebugMsg( "创建ZMQ Context失败。", -1 );
        return false;
    }

    pZMQSocket = zmq_socket( pZMQContext, ZMQ_SUB );
    if ( NULL == pZMQSocket ) {
        DebugMsg( "创建ZMQ Socket失败。", -1 );
        return false;
    }

    QString strAddress = QString( "tcp://%1:%2" ).arg( strZmqServerHost, QString::number( nZmqServerHPort ) );
    QByteArray byAddress = strAddress.toUtf8( );
    const char* pAddress = byAddress.data( );

    int nRet = zmq_connect( pZMQSocket, pAddress );
    if ( 0 != nRet ) {
        QString strLog = QString( "连接ZMQ车牌识别服务器【%1:%2】失败。\n%3" ).arg(
                    strZmqServerHost, QString::number( nZmqServerHPort ),
                    zmq_strerror( zmq_errno( ) ) );
        EmitLog( strLog );

        return false;
    }

    nRet = zmq_setsockopt( pZMQSocket, ZMQ_SUBSCRIBE, "", 0 );
    DebugMsg( "设置数据预订通道失败。", nRet );

    return ( 0 == nRet );
}

void QZmqClientThread::ThreadUninitialize( )
{
    if ( NULL != pZMQSocket ) {
        zmq_close( pZMQSocket );
    }

    if ( NULL != pZMQContext ) {
        zmq_ctx_destroy ( pZMQContext );
    }
}

QZmqClientThread* QZmqClientThread::CreateInstance( QObject* pParent )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QZmqClientThread( pParent );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QZmqClientThread::DebugMsg( const char *pMsg, int nRet )
{
    if ( NULL == pMsg || 0 == nRet ) {
        return;
    }

    qDebug( ) << pMsg << endl << zmq_strerror( zmq_errno( ) ) << endl;

    QString strLog = QString( "%1 %2" ).arg( pMsg, zmq_strerror( zmq_errno( ) ) );
    EmitLog( strLog );
}

void QZmqClientThread::ReceiveData( )
{
    quint64 nMoreData = 0;
    size_t nMoreDataSzie = sizeof ( nMoreData );
    QByteArray byData;
    void* pData = NULL;
    int nMsgLen = 0;
    int nRet = 0;

    while ( true ) {
        byData.clear( );

        do {
            zmq_msg_t msgPart;
            nMoreData = 0;

            nRet = zmq_msg_init( &msgPart );
            DebugMsg( "zmq_msg_init( ) 失败", nRet );

            nRet = zmq_recvmsg ( pZMQSocket, &msgPart, 0 );
            nMsgLen = nRet;
            DebugMsg( "zmq_recvmsg( ) 失败", -1 == nRet ? nRet : 0 );

            nRet = zmq_getsockopt( pZMQSocket, ZMQ_RCVMORE, &nMoreData, &nMoreDataSzie);
            DebugMsg( "zmq_recvmsg( ) 失败", nRet );

            if ( -1 != nRet ) {
                pData = zmq_msg_data( &msgPart );
                const char* pPartMsg = ( const char* ) pData;
                byData.append( pPartMsg, nMsgLen );
            }

            nRet = zmq_msg_close( &msgPart );
            DebugMsg( "zmq_msg_close( ) 失败", nRet );
        } while( 0 != nMoreData );

        emit ZmqClientData( byData );
    }
}

void QZmqClientThread::run( )
{
    if ( !ThreadInitialize( ) ) {
        return;
    }

    //exec( );
    // Message type value
    ReceiveData( );
}

void QZmqClientThread::customEvent( QEvent* pEvent )
{
    QZmqClientEvent* pClientEvent = ( QZmqClientEvent* ) pEvent;
    QZmqClientEvent::ZmqClientEvent eEvent = ( QZmqClientEvent::ZmqClientEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QZmqClientEvent::SendData :
        break;
    }
}
