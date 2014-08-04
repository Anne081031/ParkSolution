#include "qudpclientthread.h"

QUdpClientThread* QUdpClientThread::pThreadInstance = NULL;

QUdpClientThread::QUdpClientThread(QObject *parent) :
    QBaseThread( "QUdpClientThread", parent )
{
}

QUdpClientThread* QUdpClientThread::CreateInstance( )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QUdpClientThread( );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QUdpClientThread::run( )
{
    ThreadInitialize( );
    exec( );
}

void QUdpClientThread::customEvent( QEvent* pEvent )
{
    QUdpClientEvent* pUdpClientEvent = ( QUdpClientEvent* ) pEvent;
    QUdpClientEvent::UdpClientEvent eEvent = ( QUdpClientEvent::UdpClientEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QUdpClientEvent::a :

        break;
    default:
        break;
    }
}

bool QUdpClientThread::ThreadInitialize( )
{
    return true;
}

void QUdpClientThread::ThreadUninitialize( )
{

}
