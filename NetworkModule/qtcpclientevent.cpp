#include "qtcpclientevent.h"

QTcpClientEvent::QTcpClientEvent( TcpClientEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QTcpClientEvent* QTcpClientEvent ::CreateTcpClientEvent( TcpClientEvent eEvent )
{
    return new QTcpClientEvent ( eEvent );
}
