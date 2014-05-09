#include "qbasethread.h"
#include <QGuiApplication>
#include "CommonStructType.h"

QBaseThread::QBaseThread(QString strThreadName, QObject *parent) :
    QThread(parent)
{
    setObjectName( strThreadName );
    ThreadInitialize( );
}

QBaseThread::~QBaseThread( )
{
    ThreadUninitialize( );
}

bool QBaseThread::ThreadInitialize( )
{
    connect( this, SIGNAL( started( ) ), this, SLOT( ThreadStarted( ) ) );
    connect( this, SIGNAL( finished( ) ), this, SLOT( ThreadFinished( ) ) );

    return true;
}

void QBaseThread::ThreadUninitialize( )
{

}

void QBaseThread::ThreadExitLaunch( )
{
    moveToThread( qApp->thread( ) );
    exit( );
}

void QBaseThread::PostEvent( QEvent* pEvent )
{
    qApp->postEvent( this, pEvent );
    //ThreadEventInfo( true, pEvent );
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

    QString strLog = QString( " %1 %2 Event" ).arg( bPostEvent ? "Post" : "Process", strEvent );
    EmitLog( strLog );
}

void QBaseThread::EmitLog( QString &strLog )
{
    QString strDateTime;
    QCommonFunction::GetCurrentDateTime( strDateTime );

    emit Log( QString( "%1 %2 %3\n" ).arg( objectName( ), strLog, strDateTime ) );
}

void QBaseThread::ThreadStarted( )
{
    QString strLog = "Started";
    EmitLog( strLog );
}

void QBaseThread::ThreadFinished( )
{
    QString strLog = "Finished";
    EmitLog( strLog );

    deleteLater( );
}

