#include "qzmqserverevent.h"

QZmqServerEvent::QZmqServerEvent( ZmqServerEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QZmqServerEvent* QZmqServerEvent::CreateServerEvent( ZmqServerEvent eEvent )
{
    return new QZmqServerEvent( eEvent );
}

void QZmqServerEvent::SetSendData( const QByteArray& byData )
{
   bySendData = byData;
}

QByteArray& QZmqServerEvent::GetSendData( )
{
    return bySendData;
}
