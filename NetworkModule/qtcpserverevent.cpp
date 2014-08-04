#include "qtcpserverevent.h"

QTcpServerEvent::QTcpServerEvent( TcpServerEvent eEvent ) : QEvent( ( Type ) eEvent )
{
    nServerPort = 0;
}

QTcpServerEvent* QTcpServerEvent::CreateTcpServerEvent( TcpServerEvent eEvent )
{
    return new QTcpServerEvent( eEvent );
}

void QTcpServerEvent::SetServerPort( const quint16 nPort )
{
    nServerPort  = nPort;
}

quint16 QTcpServerEvent::GetServerPort( ) const
{
    return nServerPort;
}
