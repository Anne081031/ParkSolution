#ifndef QUDPCLIENTEVENT_H
#define QUDPCLIENTEVENT_H

#include <QEvent>

class QUdpClientEvent : public QEvent
{
public:
    typedef enum __UdpClientEvent {
        a = User
    } UdpClientEvent;

    static QUdpClientEvent* CreateUdpClientEvent( UdpClientEvent eEvent );

private:
    QUdpClientEvent( UdpClientEvent eEvent );
};

#endif // QUDPCLIENTEVENT_H
