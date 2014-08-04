#include "qmytcpserver.h"

QMyTcpServer::QMyTcpServer(QObject *parent) :
    QTcpServer(parent)
{
    qRegisterMetaType< qintptr >( "qintptr" );
}

void QMyTcpServer::incomingConnection( qintptr socketDescriptor )
{
    emit SocketConnection( socketDescriptor );
}
