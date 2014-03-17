#include "qthreadevent.h"

QThreadEvent::QThreadEvent( ThreadEvent eEvent ) : QEvent( ( Type ) eEvent)
{
}

QThreadEvent* QThreadEvent::CreateThreadEvent( ThreadEvent eEvent)
{
    return new QThreadEvent( eEvent );
}

void QThreadEvent::SetZmqStyle( ZMQTransport eStyle )
{
    zmpStyle = eStyle;
}

QThreadEvent::ZMQTransport QThreadEvent::GetZmqStyle( )
{
    return zmpStyle;
}

void QThreadEvent::SetZmpHost( QString& strZmqHost )
{
    strHost = strZmqHost;
}

QString& QThreadEvent::GetZmqHost( )
{
    return strHost;
}

void QThreadEvent::SetZmpPort( quint16 nZmqPort )
{
    nPort = nZmqPort;
}

quint16 QThreadEvent::GetZmpPort( )
{
    return nPort;
}

void QThreadEvent::SetZmqConnect( bool bZmqConnect )
{
    bConnect = bZmqConnect;
}

bool QThreadEvent::GetZmqConnect( )
{
    return bConnect;
}
