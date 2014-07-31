#include "qtcpserverevent.h"

QTcpServerEvent::QTcpServerEvent( TcpServerEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QTcpServerEvent* QTcpServerEvent::CreateTcpServerEvent( TcpServerEvent eEvent )
{
    return new QTcpServerEvent( eEvent );
}
