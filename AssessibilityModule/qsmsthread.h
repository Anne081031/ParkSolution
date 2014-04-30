#ifndef QSMSTHREAD_H
#define QSMSTHREAD_H

#include <QtCore>
#include "AssessibilityModule_global.h"
#include "../CommonModule/qbasethread.h"
#include "../ConfigModule/qconfigurator.h"
#include "qsmsevent.h"
#include <QAxWidget>

class ASSESSIBLILITYMODULESHARED_EXPORT QSmsThread : public QBaseThread
{
    Q_OBJECT
public:
    static QSmsThread* CreateInstance(  QObject* pParent = NULL );
    void PostSendSmsEvent( const QStringList& lstTelephoneID, const QString& strContent );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QSmsThread(QObject *parent = 0);

    bool ConnectModem( );
    void ProcessSendSmsEvent( QSmsEvent* pEvent );

private:
    static QSmsThread* pThreadInstance;
    QAxWidget* pAxCtrl;
    QConfigurator* pConfigurator;

signals:

private slots:
    void OnConnectResult( int nStatus );
    void OnRecvMsg( int nMsgCount );
    void OnSendMsg( int nResult,int nMsgIndex );
    void HandleException ( int code, const QString & source, const QString & desc, const QString & help );

};

#endif // QSMSTHREAD_H
