#ifndef QLOCALSERVERTHREAD_H
#define QLOCALSERVERTHREAD_H

#include <QThread>
#include <QtNetwork>

class QLocalServerThread : public QThread
{
    Q_OBJECT
public:
    static QLocalServerThread* CreateInstance( );

protected:
    void run( );

private:
    explicit QLocalServerThread(QObject *parent = 0);

private:
    QLocalServer* pLocalServer;
    QLocalSocket* pLocalSocket;

signals:
    void Foreground( );

private slots:
    void HandleNewConnection( );
    void HandleReadyRead( );

private:
    static QLocalServerThread* pThreadInstance;

};

#endif // QLOCALSERVERTHREAD_H
