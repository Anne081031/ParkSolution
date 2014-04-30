#include "qserialreaderevent.h"

QSerialReaderEvent::QSerialReaderEvent( SerialReaderEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QSerialReaderEvent* QSerialReaderEvent::CreateSerialEvent( SerialReaderEvent eEvent )
{
    return new QSerialReaderEvent( eEvent );
}
