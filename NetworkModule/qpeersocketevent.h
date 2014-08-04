#ifndef QPEERSOCKETEVENT_H
#define QPEERSOCKETEVENT_H

#include <QEvent>

class QPeerSocketEvent : public QEvent
{
public:
    typedef enum __PeerSocketEvent {
        a = User
    } PeerSocketEvent;

    static QPeerSocketEvent* CreatePeerSocketEvent( PeerSocketEvent eEvent );

private:
    QPeerSocketEvent( PeerSocketEvent eEvent );
};

#endif // QPEERSOCKETEVENT_H
