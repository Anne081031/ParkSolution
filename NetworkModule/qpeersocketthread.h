#ifndef QPEERSOCKETTHREAD_H
#define QPEERSOCKETTHREAD_H

#include "NetworkModule_global.h"
#include "../CommonModule/qbasethread.h"
#include "qpeersocketevent.h"

class NETWORKMODULESHARED_EXPORT QPeerSocketThread : public QBaseThread
{
    Q_OBJECT
public:
    static QPeerSocketThread* CreateInstance( );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QPeerSocketThread(QObject *parent = 0);

signals:

public slots:

};

#endif // QPEERSOCKETTHREAD_H
