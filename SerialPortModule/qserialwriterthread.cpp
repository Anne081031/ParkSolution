#include "qserialwriterthread.h"

QSerialWriterThread* QSerialWriterThread::pThreadInstance = NULL;

QSerialWriterThread::QSerialWriterThread(QObject *parent) :
    QBaseThread( "QSerialWriterThread", parent )
{
    pSerialPort = NULL;
    pConfigurator = QConfigurator::CreateConfigurator( );
}

QSerialWriterThread* QSerialWriterThread::CreateInstance( QObject* pParent  )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QSerialWriterThread( pParent );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QSerialWriterThread::PostWriteSerialDataEvent( const QByteArray &bySerialData )
{
    QSerialWriterEvent* pEvent = QSerialWriterEvent::CreateSerialEvent( QSerialWriterEvent::WriteSerialData );
    pEvent->SetSerialData( bySerialData );

    PostEvent( pEvent );
}

void QSerialWriterThread::run( )
{
    if ( !ThreadInitialize( )  ) {
        return;
    }

    exec( );
}

void QSerialWriterThread::customEvent( QEvent* pEvent )
{
    QSerialWriterEvent* pWriterEvent = ( QSerialWriterEvent* ) pEvent;
    QSerialWriterEvent::SerialWriterEvent eEvent = ( QSerialWriterEvent::SerialWriterEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QSerialWriterEvent::WriteSerialData :
        ProcessWriteSerialDataEvent( pWriterEvent );
        break;
    }
}

void QSerialWriterThread::ProcessWriteSerialDataEvent( QSerialWriterEvent *pEvent )
{
    const QByteArray& byData = pEvent->GetSerialData( );

    if ( NULL == pSerialPort ) {
        return;
    }

    if ( !pSerialPort->isOpen( ) && !pSerialPort->open( QIODevice::ReadWrite ) ) {
        return;
    }

    int nLoop = 0;

    while ( nLoop++ < nLoopWriteCount ) {
        if ( pSerialPort->isWritable( ) ) {
            pSerialPort->write( byData );
            break;
        }

        msleep( nWriteSleep );
    }
}

bool QSerialWriterThread::ThreadInitialize( )
{
    bool bRet = QBaseThread::ThreadInitialize( );

    pConfigurator->GetComLoopWriteCount( nLoopWriteCount );
    pConfigurator->GetComWriteSleep( nWriteSleep );

    return bRet;
}

void QSerialWriterThread::ThreadUninitialize( )
{

}
