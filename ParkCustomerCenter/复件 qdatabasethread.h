#ifndef QDATABASETHREAD_H
#define QDATABASETHREAD_H

#include <QThread>
#include "qdatabaseevent.h"
#include "../DatabaseModule/qdatabasefactory.h"

class QDatabaseThread : public QThread
{
    Q_OBJECT
public:
    static QDatabaseThread* CreateInstance( );
    void PostDatabaseConnectEvent( ParkSolution::QStringHash& hashParam );
    void PostDatabaseDisconnectEvent( );
    void PostQueryCustomerVehicleDataEvent( QStringList& lstParams );
    void PostQueryServiceDataEvent( QStringList& lstParams, QSqlQueryModel* pModel );

protected:
    void run( );
    void customEvent( QEvent* pEvent );

private:
    explicit QDatabaseThread(QObject *parent = 0);

    void ProcessDatabaseConnectEvent( QDatabaseEvent* pEvent );
    void ProcessDatabaseDisconnectEvent( QDatabaseEvent* pEvent );
    void ProcessQueryCustomerVehicleDataEvent( QDatabaseEvent* pEvent );
    void ProcessQueryServiceDataEvent( QDatabaseEvent* pEvent );

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
