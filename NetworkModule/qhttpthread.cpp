#include "qhttpthread.h"
#include <QtCore>

QHttpThread* QHttpThread::pThreadInstance = NULL;

QHttpThread::QHttpThread(QObject *parent) :
    QThread(parent)
{
}

QHttpThread* QHttpThread::CreateInstance( )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QHttpThread( );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QHttpThread::run( )
{
    exec( );
}

void QHttpThread::customEvent( QEvent *pEvent )
{
    QHttpEvent::HttpEvent eEvent = ( QHttpEvent::HttpEvent ) pEvent->type( );
    QHttpEvent* pHttpEvent = ( QHttpEvent* ) pEvent;

    switch ( eEvent ) {
    case QHttpEvent::GetInOutImage :
        ProcessGetInOutImageEvent( pHttpEvent );
        break;
    }
}

void QHttpThread::ProcessGetInOutImageEvent( QHttpEvent *pEvent )
{
    QStringList& lstParams = pEvent->GetListEventParams( );
}

void QHttpThread::PostEvent(QHttpEvent *pEvent)
{
    qApp->postEvent( this, ( QEvent* ) pEvent);
}
