#ifndef QDATABASETHREAD_H
#define QDATABASETHREAD_H

#include <QThread>
#include "qdatabaseevent.h"
#include "qdatabasefactory.h"

class DATABASEMODULESHARED_EXPORT QDatabaseThread : public QThread
{
    Q_OBJECT
public:
    static QDatabaseThread* CreateInstance( );
    void PostDatabaseConnectEvent( ParkSolution::QStringHash& hashParam );
    void PostDatabaseDisconnectEvent( );
    void PostVehicleEnterQueryDataEvent( QStringList& lstParams );
    void PostQueryCustomerVehicleDataEvent( QStringList& lstParams );
    void PostQueryCommonDataInfoEvent( QStringList& lstParams );
    void PostChangeCustomerVehicleDataEvent( QStringList& lstParams );
    void PostIgnoreOrDeleteCustomerEvent( QStringList& lstParams );
    void PostChangeServiceRecordEvent( QStringList& lstParams );
    void PostImportCustomerEvent( QStringList& lstParams );
    void PostQueryUserInfoEvent( QStringList& lstParams );
    void PostExportCustomerEvent( QStringList& lstParams, QSqlQueryModel* pModel );
    void PostQueryServiceDataEvent( QStringList& lstParams, QSqlQueryModel* pModel );
    void PostQueryCustomerDataEvent( QStringList& lstParams, QSqlQueryModel* pModel );
protected:
    void run( );
    void customEvent( QEvent* pEvent );

private:
    explicit QDatabaseThread(QObject *parent = 0);

    void ProcessDatabaseConnectEvent( QDatabaseEvent* pEvent );
    void ProcessDatabaseDisconnectEvent( QDatabaseEvent* pEvent );
    void ProcessQueryCustomerVehicleDataEvent( QDatabaseEvent* pEvent );
    void ProcessVehicleEnterQueryDataEvent( QDatabaseEvent* pEvent );
    void ProcessQueryServiceDataEvent( QDatabaseEvent* pEvent );
    void ProcessQueryCustomerDataEvent( QDatabaseEvent* pEvent );
    void ProcessQueryCommonDataInfoEvent( QDatabaseEvent* pEvent );
    void ProcessChangeCustomerVehicleDataEvent( QDatabaseEvent* pEvent );
    void ProcessImportCustomerEvent( QDatabaseEvent* pEvent );
    void ProcessExportCustomerEvent( QDatabaseEvent* pEvent );
    void ProcessQueryUserInfoEvent( QDatabaseEvent* pEvent );
    void ProcessIgnoreOrDeleteCustomerEvent( QDatabaseEvent* pEvent );
    void ProcessChangeServiceRecordEvent( QDatabaseEvent* pEvent );

    inline void PostEvent( QDatabaseEvent* pEvent );

private:
    static QDatabaseThread* pThreadInstance;
    QString strConnectName;
    QUnityDatabase* pMySQLDatabase;

signals:
    void Log( QString strMsg );
    void SpResult( int nSpType, QByteArray byData );
    void SpResultset( int nSpType, QObject* pQueryModel );

private slots:
    void HandleLog( QString strLog );
    void HandleSpResult( int nSpType, QByteArray byData );
    void HandleSpResultset( int nSpType, QObject* pQueryModel );
};

#endif // QDATABASETHREAD_H
