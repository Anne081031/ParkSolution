#ifndef QDBPOOLNEWTASK_H
#define QDBPOOLNEWTASK_H

#include <QRunnable>
#include "../ConfigModule/qconfigurator.h"
#include "../CommonModule/qbasethread.h"
#include <QtSql>

class QDbPoolNewTask : public QRunnable
{
public:
    static QDbPoolNewTask* CreateTask( ParkSolution::SpType  nType, QStringList& lstParam, QBaseThread* pReceiver, int nConnectID );
    ~QDbPoolNewTask( );

    void run( );

private:
    QDbPoolNewTask( ParkSolution::SpType  nType, QStringList& lstParam, QBaseThread* pReceiver, int nConnectID );
    bool ConnectDb( );
    void CallSP( QByteArray& bySpResult );

private:
    static ParkSolution::QStringHash hashParam;
    QConfigurator* pConfigurator;
    QString strConnectName;
    ParkSolution::SpType dbSpType;
    QStringList lstSpParam;
    QBaseThread* pReceiverThread;
};

#endif // QDBPOOLNEWTASK_H
