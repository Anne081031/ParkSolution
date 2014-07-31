#ifndef QUDPSERVEREVENT_H
#define QUDPSERVEREVENT_H

#include <QEvent>

class QUdpServerEvent : public QEvent
{
public:
    typedef enum __UdpServerEvent {
        a = User
    } UdpServerEvent;

    static QUdpServerEvent* CreateUdpServerEvent( UdpServerEvent eEvent );

private:
    QUdpServerEvent( UdpServerEvent eEvent );
};

#endif // QUDPSERVEREVENT_H
