#ifndef QHTTPTHREAD_H
#define QHTTPTHREAD_H

#include "NetworkModule_global.h"
#include <QThread>
#include "qhttpevent.h"

class NETWORKMODULESHARED_EXPORT QHttpThread : public QThread
{
    Q_OBJECT
public:
    static QHttpThread* CreateInstance( );

    void PostGetInOutImageEvent( QStringList& lstParams );

protected:
    void run( );
    void customEvent( QEvent* pEvent );

private:
    explicit QHttpThread(QObject *parent = 0);
    inline void PostEvent( QHttpEvent* pEvent );

    void ProcessGetInOutImageEvent( QHttpEvent* pEvent );

private:
    static QHttpThread* pThreadInstance;

signals:

public slots:

};

#endif // QHTTPTHREAD_H
