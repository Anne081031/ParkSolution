#include "qserialreaderthread.h"

QSerialReaderThread* QSerialReaderThread::pThreadInstance = NULL;

QSerialReaderThread::QSerialReaderThread( bool bStartParser, QObject *parent ) :
    QBaseThread( "QSerialReaderThread", parent )
{
    pSerialPort = NULL;
    pSerialParserThread = NULL;
    bStartParserThread = bStartParser;
    protocolType = QSerialParserEvent::ProtocolFuture;
    pConfigurator = QConfigurator::CreateConfigurator( );
}

QSerialReaderThread* QSerialReaderThread::CreateInstance( bool bStartParser, QObject* pParent  )
{
    if( NULL == pThreadInstance ) {
        pThreadInstance = new QSerialReaderThread( bStartParser, pParent );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QSerialReaderThread::run( )
{
    if ( !ThreadInitialize( )  ) {
        return;
    }

    exec( );
}

void QSerialReaderThread::customEvent( QEvent* pEvent )
{
    QSerialReaderEvent* pReaderEvent = ( QSerialReaderEvent* ) pEvent;
    QSerialReaderEvent::SerialReaderEvent eEvent = ( QSerialReaderEvent::SerialReaderEvent ) pEvent->type( );
    /*
    switch ( eEvent ) {
    case QSerialReaderEvent
    }*/
}

bool QSerialReaderThread::ThreadInitialize( )
{
    bool bRet = QBaseThread::ThreadInitialize( );
    pSerialPort = new QSerialPort( );

    connect( pSerialPort, SIGNAL( readyRead( ) ),
             this, SLOT( HandleReadyData( ) ) );

    OpenSerial( );

    if ( bStartParserThread ) {
        pSerialParserThread = QSerialParserThread::CreateInstance( );
    }

    return bRet;
}

void QSerialReaderThread::OpenSerial( )
{
    if ( NULL == pSerialPort ) {
        return;
    }

    QString strName;
    pConfigurator->GetComName( strName );
    pSerialPort->setPortName( strName );

    int nValue;

    pConfigurator->GetComProtocol( nValue );
    protocolType = ( QSerialParserEvent::ProtocolDataType ) nValue;

    pConfigurator->GetComBaudRate( nValue );
    pSerialPort->setBaudRate( nValue );

    pConfigurator->GetComDataBit( nValue );
    pSerialPort->setDataBits( ( QSerialPort::DataBits ) nValue );

    pConfigurator->GetComFlowControl( nValue );
    pSerialPort->setFlowControl( ( QSerialPort::FlowControl ) nValue );

    pConfigurator->GetComParity( nValue );
    pSerialPort->setParity( ( QSerialPort::Parity ) nValue );

    pConfigurator->GetComStopBit( nValue );
    pSerialPort->setStopBits( ( QSerialPort::StopBits ) nValue );

    bool bRet = pSerialPort->open( QSerialPort::ReadWrite );

    QString strLog = QString( "Open Serial Port【%1】%2." ).arg( strName, bRet ? "Success" : "Failure" );
    EmitLog( strLog );
}

void QSerialReaderThread::ThreadUninitialize( )
{
    if ( NULL == pSerialPort ) {
        return;
    }

    pSerialPort->close( );
}

void QSerialReaderThread::HandleReadyData( )
{
    QSerialPort* pPort = ( QSerialPort* ) sender( );
    QByteArray byData = pPort->readAll( );

    emit SerialData( protocolType, byData );

    if ( NULL != pSerialParserThread ) {
        pSerialParserThread->PostParseProtocolDataEvent( protocolType, byData );
    }
}
