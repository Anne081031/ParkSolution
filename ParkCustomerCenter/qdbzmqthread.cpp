#include "qdbzmqthread.h"

QDbZmqThread::QDbZmqThread(QObject *parent) :
    QBaseZmqThread(parent)
{
}

QBaseZmqThread* QDbZmqThread::CreateThread( QObject *pParent )
{
    qDebug( ) << Q_FUNC_INFO << endl;

    QBaseZmqThread* pThread = new QDbZmqThread( pParent );

    pThread->start( );
    pThread->moveToThread( pThread );

    return pThread;
}

void QDbZmqThread::run( )
{
    exec( );
}

void QDbZmqThread::customEvent( QEvent* pEvent )
{
    QBaseZmqThread::customEvent( pEvent );
}
