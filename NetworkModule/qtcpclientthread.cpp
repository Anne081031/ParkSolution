#include "qtcpclientthread.h"

QTcpClientThread* QTcpClientThread::pThreadInstance = NULL;

QTcpClientThread::QTcpClientThread(QObject *parent) :
    QBaseThread( "QTcpClientThread", parent )
{
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

void QTcpClientThread::customEvent( QEvent* pEvent )
{
    QTcpClientEvent* pTcpClientEvent = ( QTcpClientEvent* ) pEvent;
    QTcpClientEvent::TcpClientEvent eEvent = ( QTcpClientEvent::TcpClientEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QTcpClientEvent::a :

        break;
    default:
        break;
    }
}

bool QTcpClientThread::ThreadInitialize( )
{
    return true;
}

void QTcpClientThread::ThreadUninitialize( )
{

}
