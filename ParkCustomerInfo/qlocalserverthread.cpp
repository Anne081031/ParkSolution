#include "qlocalserverthread.h"
#include <QDebug>

QLocalServerThread* QLocalServerThread::pThreadInstance = NULL;

QLocalServerThread::QLocalServerThread(QObject *parent) :
    QThread(parent)
{
}

QLocalServerThread* QLocalServerThread::CreateInstance( )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QLocalServerThread( );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QLocalServerThread::HandleNewConnection( )
{
    if ( !pLocalServer->hasPendingConnections( ) ) {
        return;
    }

    pLocalSocket = pLocalServer->nextPendingConnection( );
    connect( pLocalSocket, SIGNAL( readyRead( ) ),
             this, SLOT( HandleReadyRead( ) ) );
}

void QLocalServerThread::HandleReadyRead( )
{
    QByteArray byData = pLocalSocket->readAll( );

    QString strData( byData );

    if ( "CustomerInfo" == strData ) {
        emit Foreground( );

        pLocalSocket->write( "OK" );
        pLocalSocket->waitForBytesWritten( );
    }
}

void QLocalServerThread::run( )
{
    pLocalServer = new QLocalServer( this );
    connect( pLocalServer, SIGNAL( newConnection( ) ),
             this, SLOT( HandleNewConnection( ) ) );

    pLocalServer->listen( "[Guid(9FED4E89-0A0A-4417-96AD-45E151989A56)]" );

    qDebug( ) << Q_FUNC_INFO << pLocalServer->errorString( ) << endl;

    exec( );
}
