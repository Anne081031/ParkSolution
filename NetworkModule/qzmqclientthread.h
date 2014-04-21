#ifndef QZMQCLIENTTHREAD_H
#define QZMQCLIENTTHREAD_H

#include <QThread>
#include "NetworkModule_global.h"
#include "qzmqclientevent.h"
#include "../CommonModule/qcommonfunction.h"
#include "../ConfigModule/qconfigurator.h"
#include "../CommonModule/qbasethread.h"
#include "zmq.h"
#include "zmq_utils.h"

class NETWORKMODULESHARED_EXPORT QZmqClientThread : public QBaseThread
{
    Q_OBJECT
public:
    static QZmqClientThread* CreateInstance( QObject* pParent = NULL );

protected:
    void run( );
    void customEvent( QEvent* pEvent );

    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QZmqClientThread(QObject *parent = 0);
    void DebugMsg( const char *pMsg, int nRet );
    void ReceiveData( );

private:
    static QZmqClientThread* pThreadInstance;
    void* pZMQContext;
    void* pZMQSocket;
    QConfigurator* pConfigurator;
    QString strZmqServerHost;
    quint16 nZmqServerHPort;

signals:
    void ZmqClientData( QByteArray byData );

public slots:

};

#endif // QZMQCLIENTTHREAD_H
