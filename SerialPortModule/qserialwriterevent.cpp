#include "qserialwriterevent.h"

QSerialWriterEvent::QSerialWriterEvent( SerialWriterEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QSerialWriterEvent* QSerialWriterEvent::CreateSerialEvent( SerialWriterEvent eEvent )
{
    return new QSerialWriterEvent( eEvent );
}

void QSerialWriterEvent::SetSerialData( const QByteArray& byData )
{
    bySerialData = byData;
}

const QByteArray& QSerialWriterEvent::GetSerialData( ) const
{
    return bySerialData;
}
