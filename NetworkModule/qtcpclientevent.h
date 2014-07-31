#ifndef QTCPCLIENTEVENT_H
#define QTCPCLIENTEVENT_H

#include <QEvent>

class QTcpClientEvent : public QEvent
{
public:
    typedef enum __TcpClientEvent  {
        a = User
    } TcpClientEvent ;

    static QTcpClientEvent * CreateTcpClientEvent ( TcpClientEvent  eEvent );

private:
    QTcpClientEvent( TcpClientEvent eEvent );
};

#endif // QTCPCLIENTEVENT_H
