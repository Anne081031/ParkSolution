#include "qzmqclientevent.h"

QZmqClientEvent::QZmqClientEvent( ZmqClientEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QZmqClientEvent* QZmqClientEvent::CreateClientEvent(ZmqClientEvent eEvent)
{
    return new QZmqClientEvent( eEvent );
}
