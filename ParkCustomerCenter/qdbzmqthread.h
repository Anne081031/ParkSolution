#ifndef QDBZMQTHREAD_H
#define QDBZMQTHREAD_H

#include "qbasezmqthread.h"

class QDbZmqThread : public QBaseZmqThread
{
    Q_OBJECT
public:
    QBaseZmqThread* CreateThread( QObject *pParent );

protected:
    void run( );
    void customEvent( QEvent* pEvent );

private:
    explicit QDbZmqThread(QObject *parent = 0);

signals:

public slots:

};

#endif // QDBZMQTHREAD_H
