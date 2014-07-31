#include "qudpserverevent.h"

QUdpServerEvent::QUdpServerEvent( UdpServerEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QUdpServerEvent* QUdpServerEvent::CreateUdpServerEvent(UdpServerEvent eEvent)
{
    return new QUdpServerEvent( eEvent );
}
