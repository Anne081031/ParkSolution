#ifndef QPLATETHREAD_H
#define QPLATETHREAD_H

#include <QThread>
#include "zmq.h"
#include "zmq_utils.h"

class QPlateThread : public QThread
{
    Q_OBJECT
public:
    static QPlateThread* CreateInstance( );

protected:
    void run( );

private:
    void DebugMsg( const char* pMsg, int nRet );
    explicit QPlateThread(QObject *parent = 0);

private:
    void* pZMQContext;
    void* pZMQSocket;
    static QPlateThread* pThreadInstance;

signals:
    void PlateData( QByteArray byData );
    void Log( QString strMsg );
public slots:

};

#endif // QPLATETHREAD_H
