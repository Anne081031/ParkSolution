#include "qbasethread.h"
#include <QGuiApplication>
#include "CommonStructType.h"

QBaseThread::QBaseThread(QString& strThreadName, QObject *parent) :
    QThread(parent)
{
    setObjectName( strThreadName );
    ThreadInitialize( );
}

void QBaseThread::ThreadInitialize( )
{
    connect( this, SIGNAL( started( ) ), this, SLOT( ThreadStarted( ) ) );
    connect( this, SIGNAL( finished( ) ), this, SLOT( ThreadFinished( ) ) );
}

void QBaseThread::ThreadExitLaunch( )
{
    moveToThread( qApp->thread( ) );
    exit( );
}

void QBaseThread::PostEvent( QEvent* pEvent )
{
    qApp->postEvent( this, pEvent );
    ThreadEventInfo( true, pEvent );
}

void QBaseThread::ThreadEventInfo( bool bPostEvent, QEvent *pEvent )
{
    QString strEvent = "";
    ParkSolution::ThreadEvent eEvent = ( ParkSolution::ThreadEvent ) pEvent->type( );

    switch ( eEvent ) {
    case ParkSolution::ThreadExit :
        strEvent = "ThreadExit";
        break;
    }

    QString strLog = objectName( ) + QString( " %1 %2 Event" ).arg( bPostEvent ? "Post" : "Process", strEvent );
    emit ThreadLog( strLog );
}

void QBaseThread::ThreadStarted( )
{
    QString strLog = objectName( ) + " Started";
    emit ThreadLog( strLog );
}

void QBaseThread::ThreadFinished( )
{
    QString strLog = objectName( ) + " Finished";
    emit ThreadLog( strLog );
    deleteLater( );
}
