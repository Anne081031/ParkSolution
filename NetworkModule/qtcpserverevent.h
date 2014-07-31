#ifndef QTCPSERVEREVENT_H
#define QTCPSERVEREVENT_H

#include <QEvent>

class QTcpServerEvent : public QEvent
{
public:
    typedef enum __TcpServerEvent {
        a = User
    } TcpServerEvent;

    static QTcpServerEvent* CreateTcpServerEvent( TcpServerEvent eEvent  );

private:
    QTcpServerEvent( TcpServerEvent eEvent );
};

#endif // QTCPSERVEREVENT_H
