#ifndef QDATABASETHREAD_H
#define QDATABASETHREAD_H

#include <QThread>
#include "qdatabaseevent.h"
#include "qdatabasefactory.h"
#include "../CommonModule/qbasethread.h"

class DATABASEMODULESHARED_EXPORT QDatabaseThread : public QBaseThread
{
    Q_OBJECT
public:
    static QDatabaseThread* CreateInstance( );
    void PostWriteInOutRecordEvent( QStringList& lstParams );
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
    void PostQueryInOutImageEvent( QStringList& lstParams );
    void PostChangeCommonDataEvent( QStringList& lstParams );
    void PostExportCustomerEvent( QStringList& lstParams, QSqlQueryModel* pModel );
    void PostQueryServiceDataEvent( QStringList& lstParams, QSqlQueryModel* pModel );
    void PostQueryCustomerDataEvent( QStringList& lstParams, QSqlQueryModel* pModel );
    void PostQueryCommonDataByTypeEvent( QStringList& lstParams, QSqlQueryModel* pModel );

    bool DatabasePing( );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QDatabaseThread(QObject *parent = 0);

    void ProcessWriteInOutRecordEvent( QDatabaseEvent* pEvent );
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
    void ProcessQueryInOutImageEvent( QDatabaseEvent* pEvent );
    void ProcessQueryCommonDataByTypeEvent( QDatabaseEvent* pEvent );
    void ProcessChangeCommonDataEvent( QDatabaseEvent* pEvent );
    void ProcessIgnoreOrDeleteCustomerEvent( QDatabaseEvent* pEvent );
    void ProcessChangeServiceRecordEvent( QDatabaseEvent* pEvent );

private:
    static QDatabaseThread* pThreadInstance;
    QString strConnectName;
    QUnityDatabase* pMySQLDatabase;

signals:
    void SpResult( int nSpType, QByteArray byData );
    void SpResultset( int nSpType, QObject* pQueryModel );

private slots:
    void HandleLog( QString strLog );
    void HandleSpResult( int nSpType, QByteArray byData );
    void HandleSpResultset( int nSpType, QObject* pQueryModel );
};

#endif // QDATABASETHREAD_H
