#ifndef QHTTPTHREAD_H
#define QHTTPTHREAD_H

#include "NetworkModule_global.h"
#include <QThread>
#include "qhttpevent.h"
#include "../ConfigModule/qconfigurator.h"
#include "../CommonModule/qcommonfunction.h"
#include "../CommonModule/qbasethread.h"

class NETWORKMODULESHARED_EXPORT QHttpThread : public QBaseThread
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
    bool ThreadInitialize( );
    void ThreadUninitialize( );

    void ProcessGetInOutImageEvent( QHttpEvent* pEvent );

private:
    static QHttpThread* pThreadInstance;
    QNetworkAccessManager* pNetworkAccessManager;
    QString strHttpHost;
    quint16 nHttpHostPort;
    QConfigurator* pConfigurator;


signals:
    void VehicleInOutImage( QByteArray& byInImage, QByteArray& byOutImage );

public slots:

};

#endif // QHTTPTHREAD_H
