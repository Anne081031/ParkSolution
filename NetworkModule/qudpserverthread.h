#ifndef QUDPSERVERTHREAD_H
#define QUDPSERVERTHREAD_H

#include "NetworkModule_global.h"
#include "../CommonModule/qbasethread.h"
#include "qudpserverevent.h"

class NETWORKMODULESHARED_EXPORT QUdpServerThread : public QBaseThread
{
    Q_OBJECT
public:
    static QUdpServerThread* CreateInstance( );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QUdpServerThread(QObject *parent = 0);

private:
    static QUdpServerThread* pThreadInstance;

signals:

public slots:

};

#endif // QUDPSERVERTHREAD_H
