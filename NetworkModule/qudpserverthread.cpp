#include "qudpserverthread.h"

QUdpServerThread* QUdpServerThread::pThreadInstance = NULL;

QUdpServerThread::QUdpServerThread(QObject *parent) :
    QBaseThread( "QUdpServerThread", parent )
{
}

QUdpServerThread* QUdpServerThread::CreateInstance( )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QUdpServerThread( );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QUdpServerThread::run( )
{
    ThreadInitialize( );
    exec( );
}

void QUdpServerThread::customEvent( QEvent* pEvent )
{
    QUdpServerEvent* pUdpServerEvent = ( QUdpServerEvent* ) pEvent;
    QUdpServerEvent::UdpServerEvent eEvent = ( QUdpServerEvent::UdpServerEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QUdpServerEvent::a :

        break;
    default:
        break;
    }
}

bool QUdpServerThread::ThreadInitialize( )
{

}

void QUdpServerThread::ThreadUninitialize( )
{

}
