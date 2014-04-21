#include "qzmqserverthread.h"
QZmqServerThread* QZmqServerThread::pThreadInstance = NULL;

QZmqServerThread::QZmqServerThread(QObject *parent) :
    QBaseThread( "QZmqServerThread", parent )
{
    pConfigurator = QConfigurator::CreateConfigurator( );
    pZMQContext = NULL;
    pZMQSocket = NULL;
}

QZmqServerThread* QZmqServerThread::CreateInstance( QObject* pParent )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QZmqServerThread( pParent );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

bool QZmqServerThread::ThreadInitialize( )
{
    QBaseThread::ThreadInitialize( );

    pConfigurator->GetZmqServerListenPort( nListenPort );

    pZMQContext = zmq_ctx_new( );
    if ( NULL == pZMQContext ) {
        DebugMsg( "创建ZMQ Context失败。", -1 );
        return false;
    }

    pZMQSocket = zmq_socket( pZMQContext, ZMQ_PUB );
    if ( NULL == pZMQSocket ) {
        DebugMsg( "创建ZMQ Socket失败。", -1 );
        return false;
    }

    QString strAddress = QString( "tcp://*:%1" ).arg( nListenPort );
    QByteArray byAddress = strAddress.toUtf8( );
    const char* pAddress = byAddress.data( );

    int nRet = zmq_bind( pZMQSocket, pAddress );
    DebugMsg( "ZMQ bind失败。", nRet );

    return ( 0 == nRet );
}

void QZmqServerThread::ThreadUninitialize( )
{
    if ( NULL != pZMQSocket ) {
        zmq_close( pZMQSocket );
    }

    if ( NULL != pZMQContext ) {
        zmq_ctx_destroy ( pZMQContext );
    }
}

void QZmqServerThread::run( )
{
    if ( !ThreadInitialize( ) ) {
        return;
    }

    exec( );
}

void QZmqServerThread::customEvent( QEvent* pEvent )
{
    QZmqServerEvent* pServerEvent = ( QZmqServerEvent* ) pEvent;
    QZmqServerEvent::ZmqServerEvent eEvent = ( QZmqServerEvent::ZmqServerEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QZmqServerEvent::PusblishData :
        ProcessPublishDataEvent( pServerEvent );
        break;
    }
}

void QZmqServerThread::DebugMsg( const char *pMsg, int nRet )
{
    if ( NULL == pMsg || 0 == nRet ) {
        return;
    }

    qDebug( ) << pMsg << endl << zmq_strerror( zmq_errno( ) ) << endl;

    QString strLog = QString( "%1 %2" ).arg( pMsg, zmq_strerror( zmq_errno( ) ) );
    EmitLog( strLog );
}

void QZmqServerThread::zmq_free_fn( void *data, void *hint )
{
    Q_UNUSED( hint )

    if ( NULL == data ) {
        return;
    }

    free( data );
}

void QZmqServerThread::ProcessPublishDataEvent( QZmqServerEvent *pEvent )
{
    if ( NULL == pZMQSocket ) {
        return;
    }

    const QByteArray& bySendData = pEvent->GetSendData( );
    int nDataSize = bySendData.size( );
    if ( 0 == nDataSize ) {
        return;
    }

    void* pData = malloc( nDataSize );

    if ( NULL == pData ) {
        return;
    }

    memcpy( pData, bySendData.data( ), nDataSize );

    zmq_msg_t msg;
    int nRet = zmq_msg_init_data( &msg, pData, nDataSize, zmq_free_fn, NULL  );
    DebugMsg( "zmq_msg_init( ) 失败", nRet );

    if ( 0 != nRet  ) {
        return;
    }

    nRet = zmq_sendmsg( pZMQSocket, &msg, ZMQ_DONTWAIT );
    DebugMsg( "zmq_sendmsg( ) 失败", -1 == nRet ? nRet : 0 );
}
