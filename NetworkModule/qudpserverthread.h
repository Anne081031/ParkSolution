#ifndef QUDPSERVERTHREAD_H
#define QUDPSERVERTHREAD_H

#include "../CommonModule/qbasethread.h"

class QUdpServerThread : public QBaseThread
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

signals:

public slots:

};

#endif // QUDPSERVERTHREAD_H
