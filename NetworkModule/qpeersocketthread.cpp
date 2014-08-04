#include "qpeersocketthread.h"

QPeerSocketThread::QPeerSocketThread(QObject *parent) :
    QBaseThread( "QPeerSocketThread", parent )
{
}

QPeerSocketThread* QPeerSocketThread::CreateInstance( )
{
    QPeerSocketThread* pThreadInsance = new QPeerSocketThread( );
    pThreadInsance->start( );
    pThreadInsance->moveToThread( pThreadInsance );

    return pThreadInsance;
}

void QPeerSocketThread::run( )
{
    ThreadInitialize( );
    exec( );
}

void QPeerSocketThread::customEvent( QEvent* pEvent )
{
    QPeerSocketEvent* pPeerSocketEvent = ( QPeerSocketEvent* ) pEvent;
    QPeerSocketEvent::PeerSocketEvent eEvent = ( QPeerSocketEvent::PeerSocketEvent ) pEvent->type( );

    switch( eEvent ) {
    case QPeerSocketEvent::a :
        break;
    }
}

bool QPeerSocketThread::ThreadInitialize( )
{
    return true;
}

void QPeerSocketThread::ThreadUninitialize( )
{

}
