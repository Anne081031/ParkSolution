#ifndef QZMQCLIENTEVENT_H
#define QZMQCLIENTEVENT_H

#include <QEvent>
#include <QtCore>

class QZmqClientEvent : public QEvent
{
public:
    typedef enum __ZmqClientEvent {
        SendData = User
    } ZmqClientEvent;

    static QZmqClientEvent* CreateClientEvent( ZmqClientEvent eEvent );

private:
    QZmqClientEvent( ZmqClientEvent eEvent );
};

#endif // QZMQCLIENTEVENT_H
