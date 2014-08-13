#include "qtcpclientevent.h"

QTcpClientEvent::QTcpClientEvent( TcpClientEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QTcpClientEvent* QTcpClientEvent ::CreateTcpClientEvent( TcpClientEvent eEvent )
{
    return new QTcpClientEvent ( eEvent );
}

void QTcpClientEvent ::SetSendData( QByteArray& byData )
{
    bySendData = byData;
}

const QByteArray& QTcpClientEvent ::GetSendData( ) const
{
    return bySendData;
}

void QTcpClientEvent ::SetServerIP( QString& strIP )
{
    strServerIP = strIP;
}

const QString& QTcpClientEvent ::GetServerIP( ) const
{
    return strServerIP;
}

void QTcpClientEvent ::SetServerPort( quint16 nPort )
{
    nServerPort = nPort;
}

const quint16 QTcpClientEvent ::GetServerPort( ) const
{
    return nServerPort;
}
