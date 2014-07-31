#ifndef QUDPCLIENTTHREAD_H
#define QUDPCLIENTTHREAD_H

#include "../CommonModule/qbasethread.h"

class QUdpClientThread : public QBaseThread
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

signals:

public slots:

};

#endif // QUDPCLIENTTHREAD_H
