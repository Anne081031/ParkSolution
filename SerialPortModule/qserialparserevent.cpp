#include "qserialparserevent.h"

QSerialParserEvent::QSerialParserEvent( SerialParserEvent eEvent ) : QEvent( ( Type ) eEvent )
{
    eProtocolType = ProtocolInvalid;
}

QSerialParserEvent* QSerialParserEvent::CreateSerialEvent( SerialParserEvent eEvent )
{
    return new QSerialParserEvent( eEvent );
}

void QSerialParserEvent::SetSerialData( const QByteArray& byData )
{
    bySerialData = byData;
}

const QByteArray& QSerialParserEvent::GetSerialData( ) const
{
    return bySerialData;
}

void QSerialParserEvent::SetProtocolType( const ProtocolDataType protocolType )
{
    eProtocolType = protocolType;
}

const QSerialParserEvent::ProtocolDataType QSerialParserEvent::GetProtocolType( ) const
{
    return eProtocolType;
}
