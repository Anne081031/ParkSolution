#include "qudpclientevent.h"

QUdpClientEvent::QUdpClientEvent( UdpClientEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QUdpClientEvent* QUdpClientEvent::CreateUdpClientEvent( UdpClientEvent eEvent )
{
    return new QUdpClientEvent( eEvent );
}
