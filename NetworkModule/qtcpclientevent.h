#ifndef QTCPCLIENTEVENT_H
#define QTCPCLIENTEVENT_H

#include <QEvent>

class QTcpClientEvent : public QEvent
{
public:
    typedef enum __TcpClientEvent  {
        ConnectServer = User,
        DisconnectServer,
        SendData
    } TcpClientEvent ;

    static QTcpClientEvent * CreateTcpClientEvent ( TcpClientEvent  eEvent );

    void SetSendData( QByteArray& byData );
    const QByteArray& GetSendData( ) const;

    void SetServerIP( QString& strIP );
    const QString& GetServerIP( ) const;

    void SetServerPort( quint16 nPort );
    const quint16 GetServerPort( ) const;

private:
    QTcpClientEvent( TcpClientEvent eEvent );

    QByteArray bySendData;
    QString strServerIP;
    quint16 nServerPort;
};

#endif // QTCPCLIENTEVENT_H
