#ifndef QTCPSERVEREVENT_H
#define QTCPSERVEREVENT_H

#include <QEvent>

class QTcpServerEvent : public QEvent
{
public:
    typedef enum __TcpServerEvent {
        StartServer = User,
        StopServer
    } TcpServerEvent;

    static QTcpServerEvent* CreateTcpServerEvent( TcpServerEvent eEvent  );

    void SetServerPort( const quint16 nPort );
    quint16 GetServerPort( ) const;

private:
    QTcpServerEvent( TcpServerEvent eEvent );

    quint16 nServerPort;
};

#endif // QTCPSERVEREVENT_H
