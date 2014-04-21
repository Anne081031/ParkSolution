#ifndef QZMQSERVERTHREAD_H
#define QZMQSERVERTHREAD_H

#include <QThread>
#include "NetworkModule_global.h"
#include "qzmqserverevent.h"
#include "../CommonModule/qcommonfunction.h"
#include "../CommonModule/qbasethread.h"
#include "../ConfigModule/qconfigurator.h"
#include "zmq.h"
#include "zmq_utils.h"

class NETWORKMODULESHARED_EXPORT QZmqServerThread : public QBaseThread
{
    Q_OBJECT
public:
    static QZmqServerThread* CreateInstance( QObject* pParent = NULL );

protected:
    void run( );
    void customEvent( QEvent* pEvent );

    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QZmqServerThread(QObject *parent = 0);
    inline void DebugMsg( const char *pMsg, int nRet );

    void ProcessPublishDataEvent( QZmqServerEvent* pEvent );

    static void zmq_free_fn( void *data, void *hint );
private:
    static QZmqServerThread* pThreadInstance;
    void* pZMQContext;
    void* pZMQSocket;
    QConfigurator* pConfigurator;
    quint16 nListenPort;

signals:

public slots:

};

#endif // QZMQSERVERTHREAD_H
