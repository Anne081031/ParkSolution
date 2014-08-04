#ifndef QTCPCLIENTTHREAD_H
#define QTCPCLIENTTHREAD_H

#include "NetworkModule_global.h"
#include "../CommonModule/qbasethread.h"
#include "qtcpclientevent.h"

class NETWORKMODULESHARED_EXPORT QTcpClientThread : public QBaseThread
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

private:
    static QTcpClientThread* pThreadInstance;

signals:

public slots:

};

#endif // QTCPCLIENTTHREAD_H
