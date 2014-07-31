#ifndef QTCPSERVERTHREAD_H
#define QTCPSERVERTHREAD_H

#include "../CommonModule/qbasethread.h"

class QTcpServerThread : public QBaseThread
{
    Q_OBJECT
public:
    static QTcpServerThread* CreateInstance( );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QTcpServerThread(QObject *parent = 0);

signals:

public slots:

};

#endif // QTCPSERVERTHREAD_H
