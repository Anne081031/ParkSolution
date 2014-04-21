#ifndef QBASETHREAD_H
#define QBASETHREAD_H

#include <QThread>
#include "commonmodule_global.h"
#include "CommonHeader.h"

class COMMONMODULESHARED_EXPORT QBaseThread : public QThread
{
    Q_OBJECT
public:
    explicit QBaseThread(QString strThreadName, QObject *parent = 0);
    ~QBaseThread( );

protected:
    virtual void PostEvent( QEvent* pEvent );
    void ThreadExitLaunch( );
    void ThreadEventInfo( bool bPostEvent, QEvent* pEvent );
    virtual bool ThreadInitialize( );
    virtual void ThreadUninitialize( );

    void EmitLog( QString& strLog );

signals:
    void Log( QString strLog );

private slots:
    void ThreadStarted( );
    void ThreadFinished( );

public slots:

};

#endif // QBASETHREAD_H
