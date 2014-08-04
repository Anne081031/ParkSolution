#ifndef QTCPSERVERTHREAD_H
#define QTCPSERVERTHREAD_H

#include "NetworkModule_global.h"
#include "../CommonModule/qbasethread.h"
#include "qtcpserverevent.h"
#include "qmytcpserver.h"

class NETWORKMODULESHARED_EXPORT QTcpServerThread : public QBaseThread
{
    Q_OBJECT
public:
    static QTcpServerThread* CreateInstance( );
    void PostStartServerEvent( const quint16 nPort );
    void PostStopServerEvent( const quint16 nPort );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QTcpServerThread(QObject *parent = 0);

    void ProcessStartServerEvent( QTcpServerEvent* pEvent );
    void ProcessStopServerEvent( QTcpServerEvent* pEvent );

private:
    static QTcpServerThread* pThreadInstance;

    typedef QHash< const quint16, QMyTcpServer* > QTcpServerHash;
    QTcpServerHash hashTcpServer;

signals:

private slots:
    void HandleSocketConnection( qintptr socketDescriptor );

};

#endif // QTCPSERVERTHREAD_H
