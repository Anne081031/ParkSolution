#ifndef QUDPCLIENTTHREAD_H
#define QUDPCLIENTTHREAD_H

#include "NetworkModule_global.h"
#include "../CommonModule/qbasethread.h"
#include "qudpclientevent.h"

class NETWORKMODULESHARED_EXPORT QUdpClientThread : public QBaseThread
{
    Q_OBJECT
public:
    static QUdpClientThread* CreateInstance( );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QUdpClientThread(QObject *parent = 0);

private:
    static QUdpClientThread* pThreadInstance;

signals:

public slots:

};

#endif // QUDPCLIENTTHREAD_H
