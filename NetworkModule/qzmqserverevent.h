#ifndef QZMQSERVEREVENT_H
#define QZMQSERVEREVENT_H

#include <QEvent>
#include <QtCore>

class QZmqServerEvent : public QEvent
{
public:
    typedef enum __ZmqServerEvent {
        PusblishData = User
    } ZmqServerEvent;

    static QZmqServerEvent* CreateServerEvent( ZmqServerEvent eEvent );
    void SetSendData( const QByteArray& byData );
    QByteArray& GetSendData( );

private:
    QZmqServerEvent( ZmqServerEvent eEvent );

    QByteArray bySendData;
};

#endif // QZMQSERVEREVENT_H
