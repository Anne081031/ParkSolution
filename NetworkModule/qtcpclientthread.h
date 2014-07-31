#ifndef QTCPCLIENTTHREAD_H
#define QTCPCLIENTTHREAD_H

#include "../CommonModule/qbasethread.h"

class QTcpClientThread : public QBaseThread
{
    Q_OBJECT
public:
    static QTcpClientThread* CreateInstance( );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
     explicit QTcpClientThread(QObject *parent = 0);

signals:

public slots:

};

#endif // QTCPCLIENTTHREAD_H
