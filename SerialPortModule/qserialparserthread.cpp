#include "qserialparserthread.h"

QSerialParserThread* QSerialParserThread::pThreadInstance = NULL;

QSerialParserThread::QSerialParserThread(QObject *parent) :
    QBaseThread( "QSerialParserThread", parent )
{
}

QSerialParserThread* QSerialParserThread::CreateInstance( QObject* pParent  )
{
    if( NULL == pThreadInstance ) {
        pThreadInstance = new QSerialParserThread( pParent );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QSerialParserThread::PostParseProtocolDataEvent( const QSerialParserEvent::ProtocolDataType eType, const QByteArray &byData )
{
    QSerialParserEvent* pEvent = QSerialParserEvent::CreateSerialEvent( QSerialParserEvent::ParseProtocolData );
    pEvent->SetProtocolType( eType );
    pEvent->SetSerialData( byData );

    PostEvent( pEvent );
}

void QSerialParserThread::run( )
{
    if ( !ThreadInitialize( )  ) {
        return;
    }

    exec( );
}

void QSerialParserThread::customEvent( QEvent* pEvent )
{
    QSerialParserEvent* pParserEvent = ( QSerialParserEvent* ) pEvent;
    QSerialParserEvent::SerialParserEvent eEvent = ( QSerialParserEvent::SerialParserEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QSerialParserEvent::ParseProtocolData :
        ProcessParseProtocolDataEvent( pParserEvent );
        break;
    }
}

void QSerialParserThread::ProcessParseProtocolDataEvent( QSerialParserEvent *pEvent )
{
    const QByteArray byData = pEvent->GetSerialData( );
    const QSerialParserEvent::ProtocolDataType eType = pEvent->GetProtocolType( );

    if ( 0 > eType || eType >= QSerialParserEvent::ProtocolCount ) {
        return;
    }

    QByteArray& byProtocolData = byAllProtocolData[ eType ];
    byProtocolData.append( byData );

    switch ( eType ) {
    case QSerialParserEvent::ProtocolFuture :
        ParseFutureProtocolData( eType, byProtocolData );
        break;

    case QSerialParserEvent::ProtocolInvalid :
    case QSerialParserEvent::ProtocolCount:
        break;
    }
}

void QSerialParserThread::EmitProtocolData( const QSerialParserEvent::ProtocolDataType eType, QByteArray &byData )
{
    emit ProtocolData( eType, byData );
}

void QSerialParserThread::ParseFutureProtocolData( const QSerialParserEvent::ProtocolDataType eType, QByteArray &byProtocolData )
{
    EmitProtocolData( eType, byProtocolData );
}

bool QSerialParserThread::ThreadInitialize( )
{
    bool bRet = QBaseThread::ThreadInitialize( );

    return bRet;
}

void QSerialParserThread::ThreadUninitialize( )
{

}
