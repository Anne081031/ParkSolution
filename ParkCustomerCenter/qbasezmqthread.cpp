#include "qbasezmqthread.h"
#include <QDebug>
#include <QApplication>
#include <QTextCodec>

QBaseZmqThread::QBaseZmqThread(QObject *parent) :
    QThread(parent)
{
    pZMQContext = NULL;
    pZMQSocket = NULL;
}

QBaseZmqThread::~QBaseZmqThread( )
{

}

void QBaseZmqThread::PostCreateZMQCtxEvent( )
{
    QThreadEvent* pEvent = QThreadEvent::CreateThreadEvent( QThreadEvent::CreateZMQCtx );
    PostEvent( pEvent );
}

void QBaseZmqThread::PostDestroyZMQCtxEvent( )
{
    QThreadEvent* pEvent = QThreadEvent::CreateThreadEvent( QThreadEvent::DestroyZMQCtx );
    PostEvent( pEvent );
}

void QBaseZmqThread::PostCreateZMQSocketEvent( )
{
    QThreadEvent* pEvent = QThreadEvent::CreateThreadEvent( QThreadEvent::CreateZMQSocket );
    PostEvent( pEvent );
}

void QBaseZmqThread::PostDestoryZMQSocketEvent( )
{
    QThreadEvent* pEvent = QThreadEvent::CreateThreadEvent( QThreadEvent::DestoryZMQSocket );
    PostEvent( pEvent );
}

void QBaseZmqThread::PostConnectLPRServerEvent( QString& strHost, quint16 nPort,
                                                QThreadEvent::ZMQTransport eStyle,
                                                bool bConnect )
{
    QThreadEvent* pEvent = QThreadEvent::CreateThreadEvent( QThreadEvent::ConnectLPRServer );
    pEvent->SetZmpHost( strHost );
    pEvent->SetZmpPort( nPort );
    pEvent->SetZmqStyle( eStyle );
    pEvent->SetZmqConnect( bConnect );

    PostEvent( pEvent );
}

void QBaseZmqThread::PostEvent( QThreadEvent *pEvent )
{
    if ( NULL == pEvent ) {
        return;
    }

    qApp->postEvent( this, pEvent );
}

void QBaseZmqThread::PrintMessage( const char* strFuncName, const char* strMsg )
{
    qDebug( ) << strFuncName << " " << strMsg << endl;
}

void QBaseZmqThread::ProcessCreateZMQCtxEvent( QThreadEvent* pEvent )
{
    Q_UNUSED( pEvent )

    if ( NULL != pZMQContext ) {
        PrintMessage( Q_FUNC_INFO, "ZMQ Context existed" );
        return;
    }

    pZMQContext = zmq_ctx_new( );
    if ( NULL == pZMQContext ) {
        PrintMessage( Q_FUNC_INFO, "zmq_ctx_new( ) failed" );
    }
}

void QBaseZmqThread::ProcessDestroyZMQCtxEvent( QThreadEvent* pEvent )
{
    Q_UNUSED( pEvent )

    if ( NULL == pZMQContext ) {
        PrintMessage( Q_FUNC_INFO, "Not Create ZMQ Context" );
        return;
    }

    int nRet = zmq_ctx_destroy( pZMQContext );
    if ( 0 != nRet ) {
        PrintMessage( Q_FUNC_INFO, zmq_strerror( zmq_errno( ) ) );
    }
}

void QBaseZmqThread::ProcessCreateZMQSocketEvent( QThreadEvent* pEvent )
{
    // ØMQ sockets are not thread safe.
    Q_UNUSED( pEvent )

    if ( NULL == pZMQContext ) {
        PrintMessage( Q_FUNC_INFO, "Not Create ZMQ Context" );
        return;
    }

    if ( NULL != pZMQSocket ) {
        PrintMessage( Q_FUNC_INFO, "ZMQ Socket existed" );
        return;
    }

    pZMQSocket = zmq_socket( pZMQContext, ZMQ_SUB );
    if ( NULL == pZMQSocket ) {
        PrintMessage( Q_FUNC_INFO, zmq_strerror( zmq_errno( ) ) );
    }
}

void QBaseZmqThread::ProcessDestoryZMQSocketEvent( QThreadEvent* pEvent )
{
    Q_UNUSED( pEvent )

    if ( NULL == pZMQSocket ) {
        PrintMessage( Q_FUNC_INFO, "Not Create ZMQ Socket" );
        return;
    }

    int nRet = zmq_close( pZMQSocket );
    if ( 0 != nRet ) {
        PrintMessage( Q_FUNC_INFO, zmq_strerror( zmq_errno( ) ) );
    }
}

void QBaseZmqThread::GetAddress( QString &strAddress, QString &strZmqHost, quint16 nZmqPort, QThreadEvent::ZMQTransport zmqStyle )
{
    switch ( zmqStyle ) {
    case QThreadEvent::TransportTCP : // Unicast
        strAddress = QString( "tcp://%1:%2" ).arg( strZmqHost, QString::number( nZmqPort ) );
        break;

    case QThreadEvent::TransportIPC : // Unicast
        break;

    case QThreadEvent::TransportInproc : // Unicast
        break;

    case QThreadEvent::TransportPGM : // Multicast
        break;

    case QThreadEvent::TransportEPGM : // Multicast
        break;
    }
}

void QBaseZmqThread::ProcessConnectLPRServerEvent( QThreadEvent* pEvent )
{
    if ( NULL == pZMQSocket ) {
        PrintMessage( Q_FUNC_INFO, "Not Create ZMQ Socket" );
        return;
    }

    QString& strZmqHost = pEvent->GetZmqHost( );
    quint16 nZmqPort = pEvent->GetZmpPort( );
    QThreadEvent::ZMQTransport zmqStyle = pEvent->GetZmqStyle( );

    QString strAddress;
    GetAddress( strAddress, strZmqHost, nZmqPort, zmqStyle );
    QByteArray byAddress = strAddress.toUtf8( );
    const char* pAddress = byAddress.data( );

    bool bConnect = pEvent->GetZmqConnect( );
    int nRet = bConnect ? zmq_connect( pZMQSocket, pAddress ) :
                          zmq_disconnect( pZMQSocket, pAddress );
    if ( 0 != nRet ) {
        PrintMessage( Q_FUNC_INFO, zmq_strerror( zmq_errno( ) ) );
    }
}

void QBaseZmqThread::customEvent(QEvent *event)
{
    QThreadEvent* pEvent = ( QThreadEvent* ) event;
    //A ØMQ context is thread safe and may be shared among as many application threads as necessary
    QThreadEvent::ThreadEvent eEvent = ( QThreadEvent::ThreadEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QThreadEvent::CreateZMQCtx :
        ProcessCreateZMQCtxEvent( pEvent );
        break;

    case QThreadEvent::DestroyZMQCtx :
        ProcessDestroyZMQCtxEvent( pEvent );
        break;

    case QThreadEvent::CreateZMQSocket :
        ProcessCreateZMQSocketEvent( pEvent );
        break;

    case QThreadEvent::DestoryZMQSocket :
        ProcessDestoryZMQSocketEvent( pEvent );
        break;

    case QThreadEvent::ConnectLPRServer :
        ProcessConnectLPRServerEvent( pEvent );
        break;
    }
}
