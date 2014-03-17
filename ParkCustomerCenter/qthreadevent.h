#ifndef QPLATETHREADEVENT_H
#define QPLATETHREADEVENT_H

#include <QEvent>
#include <QString>

class QThreadEvent : public QEvent
{
public:
    typedef enum __ThreadEvent {
        CreateZMQCtx = QEvent::User,
        DestroyZMQCtx,
        CreateZMQSocket,
        DestoryZMQSocket,
        ConnectLPRServer
    } ThreadEvent;

    typedef enum __ZMQTransport {
        TransportTCP,
        TransportIPC,
        TransportInproc,
        TransportPGM,
        TransportEPGM,
    } ZMQTransport;

    static QThreadEvent* CreateThreadEvent( ThreadEvent eEvent );

    void SetZmqStyle( ZMQTransport eStyle );
    ZMQTransport GetZmqStyle( );

    void SetZmpHost( QString& strZmqHost );
    QString& GetZmqHost( );

    void SetZmpPort( quint16 nZmqPort );
    quint16 GetZmpPort( );

    void SetZmqConnect( bool bZmqConnect );
    bool GetZmqConnect( );

private:
    QThreadEvent( ThreadEvent eEvent );

private:
    ZMQTransport zmpStyle;
    QString strHost;
    quint16 nPort;
    bool bConnect;
};

#endif // QPLATETHREADEVENT_H
