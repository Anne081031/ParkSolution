#ifndef QBASETHREAD_H
#define QBASETHREAD_H

#include <QThread>
#include "commonmodule_global.h"
#include "CommonEnumType.h"

class COMMONMODULESHARED_EXPORT QBaseThread : public QThread
{
    Q_OBJECT
public:
    explicit QBaseThread(QString& strThreadName, QObject *parent = 0);

protected:
    void PostEvent( QEvent* pEvent );
    void ThreadExitLaunch( );
    void ThreadEventInfo( bool bPostEvent, QEvent* pEvent );
    virtual void ThreadInitialize( );

signals:
    void ThreadLog( QString& strLog );

private slots:
    void ThreadStarted( );
    void ThreadFinished( );

public slots:

};

#endif // QBASETHREAD_H
