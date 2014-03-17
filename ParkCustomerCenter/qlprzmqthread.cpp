#include "qlprzmqthread.h"

QLprZmqThread::QLprZmqThread(QObject *parent) :
    QBaseZmqThread(parent)
{
}

QBaseZmqThread* QLprZmqThread::CreateThread( QObject *pParent )
{
    qDebug( ) << Q_FUNC_INFO << endl;

    QBaseZmqThread* pThread = new QLprZmqThread( pParent );

    pThread->start( );
    pThread->moveToThread( pThread );

    return pThread;
}

void QLprZmqThread::run( )
{
    exec( );
}

void QLprZmqThread::customEvent( QEvent* pEvent )
{
    QBaseZmqThread::customEvent( pEvent );
}
