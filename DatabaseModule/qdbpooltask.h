#ifndef QDBPOOLTASK_H
#define QDBPOOLTASK_H

#include <QRunnable>
#include "../CommonModule/CommonHeader.h"
#include "../ConfigModule/qconfigurator.h"
#include "qdatabasefactory.h"
#include "../CommonModule/qbasethread.h"

class QDbPoolTask : public QRunnable
{
public:
    static QDbPoolTask* CreateTask( ParkSolution::SpType  nType, QStringList& lstParam, QBaseThread* pReceiver, int nConnectID );
    ~QDbPoolTask( );

    void run( );

private:
    QDbPoolTask( ParkSolution::SpType  nType, QStringList& lstParam, QBaseThread* pReceiver, int nConnectID );

private:
    ParkSolution::QStringHash hashParam;
    QConfigurator* pConfigurator;
    QUnityDatabase* pDatabase;
    QString strConnectName;
    ParkSolution::SpType dbSpType;
    QStringList lstSpParam;
    QBaseThread* pReceiverThread;
    static ParkSolution::QIntObjectHash hashDatabase;
};

#endif // QDBPOOLTASK_H
