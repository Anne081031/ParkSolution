#ifndef QBASEZMQTHREAD_H
#define QBASEZMQTHREAD_H

#include <QThread>
#include "zmq.h"
#include "zmq_utils.h"
#include "qthreadevent.h"
#include <QDebug>
// Context Socket Message 透传
// 服务端和客户端无论谁先启动，效果是相同的，这点不同于Socket。
// 客户端需要$subscriber->setSockOpt(ZMQ::SOCKOPT_SUBSCRIBE, $filter);
// 设置一个过滤值，相当于设定一个订阅频道，否则什么信息也收不到
class QBaseZmqThread : public QThread
{
    Q_OBJECT
public:
    explicit QBaseZmqThread(QObject *parent = 0);
    ~QBaseZmqThread( );

    void PostCreateZMQCtxEvent( );
    void PostDestroyZMQCtxEvent( );
    void PostCreateZMQSocketEvent( );
    void PostDestoryZMQSocketEvent( );
    void PostConnectLPRServerEvent( QString& strHost, quint16 nPort, QThreadEvent::ZMQTransport eTransport, bool bConnect );

protected:
    virtual void customEvent( QEvent* event );

private:
    inline void PostEvent( QThreadEvent* pEvent );
    void PrintMessage( const char* strFuncName, const char* strMsg );
    void ProcessCreateZMQCtxEvent( QThreadEvent* pEvent );
    void ProcessDestroyZMQCtxEvent( QThreadEvent* pEvent );
    void ProcessCreateZMQSocketEvent( QThreadEvent* pEvent );
    void ProcessDestoryZMQSocketEvent( QThreadEvent* pEvent );
    void ProcessConnectLPRServerEvent( QThreadEvent* pEvent );

    void GetAddress( QString& strAddress, QString& strZmqHost, quint16 nZmqPort, QThreadEvent::ZMQTransport zmqStyle );

private:
    void* pZMQContext;

protected:
    void* pZMQSocket;

signals:

public slots:

};

#endif // QBASEZMQTHREAD_H
