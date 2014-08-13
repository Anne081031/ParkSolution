#ifndef QTCPCLIENTTHREAD_H
#define QTCPCLIENTTHREAD_H

#include "NetworkModule_global.h"
#include "../CommonModule/qbasethread.h"
#include "qtcpclientevent.h"
#include <QTcpSocket>
#include <QHostAddress>

class NETWORKMODULESHARED_EXPORT QTcpClientThread : public QBaseThread
{
    Q_OBJECT
public:
    static QTcpClientThread* CreateInstance( );
    void PostConnectServerEvent( QString& strIP, quint16 nPort );
    void PostDisconnectServerEvent( );
    void PostSendDataEvent( QByteArray& byData );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
     explicit QTcpClientThread(QObject *parent = 0);
    void GetSocketInfo( QObject* pSocketSender, QString& strSocketInfo );
    inline void ConnectServer( QString& strIP, quint16 nPort );
    inline void DisconnectServer( );

    void ProcessConnectServerEvent( QTcpClientEvent* pEvent );
    void ProcessDisconnectServerEvent( QTcpClientEvent* pEvent );
    void ProcessSendDataEvent( QTcpClientEvent* pEvent );

private:
    static QTcpClientThread* pThreadInstance;
    QTcpSocket* pTcpSocket;
    QString strServerIP;
    quint16 nServerPort;

signals:

private slots:
    void HandleConnected( );
    void HandleDisconnected( );
    void HandleError( QAbstractSocket::SocketError socketError );
    void HandleReadyRead( );

};

#endif // QTCPCLIENTTHREAD_H
