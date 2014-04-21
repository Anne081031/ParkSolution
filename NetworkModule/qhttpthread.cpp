#include "qhttpthread.h"
#include <QtCore>

QHttpThread* QHttpThread::pThreadInstance = NULL;

QHttpThread::QHttpThread(QObject *parent) :
    QBaseThread( "QHttpThread", parent )
{
    pNetworkAccessManager = NULL;
}

bool QHttpThread::ThreadInitialize( )
{
    bool bRet = QBaseThread::ThreadInitialize( );

    pConfigurator = QConfigurator::CreateConfigurator( );
    pConfigurator->GetHttpHost( strHttpHost );
    pConfigurator->GetHttpHostPort( nHttpHostPort );

    pNetworkAccessManager = new QNetworkAccessManager( this );

    return bRet;
}

void QHttpThread::ThreadUninitialize( )
{
    if ( NULL != pNetworkAccessManager ) {
        delete pNetworkAccessManager;
    }
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
    ThreadInitialize( );
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
