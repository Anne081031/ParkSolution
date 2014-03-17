#ifndef QLPRZMQTHREAD_H
#define QLPRZMQTHREAD_H

#include "qbasezmqthread.h"

class QLprZmqThread : public QBaseZmqThread
{
    Q_OBJECT
public:
    QBaseZmqThread* CreateThread( QObject *pParent );

protected:
    void run( );
    void customEvent( QEvent* pEvent );

private:
    explicit QLprZmqThread(QObject *parent = 0);

signals:

public slots:

};

#endif // QLPRZMQTHREAD_H
