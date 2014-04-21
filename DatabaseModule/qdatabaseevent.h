#ifndef QDATABASEEVENT_H
#define QDATABASEEVENT_H

#include <QEvent>
#include <QtSql>
#include "../CommonModule/CommonTypedef.h"

class QDatabaseEvent : public QEvent
{
public:
    typedef enum __DatabaseEvent {
        DatabaseConnect = QEvent::User,
        DatabaseDisconnect,
        VehicleEnterQueryData,
        QueryCustomerVehicleData,
        QueryServiceData,
        QueryCustomerData,
        QueryCommonDataInfo,
        ChangeCustomerVehicleData,
        IgnoreOrDeleteCustomer,
        ChangeServiceRecord,
        ImportCustomer,
        ExportCustomer,
        QueryUserInfo,
        QueryInOutImage,
        QueryCommonDataByType,
        ChangeCommonData,
        WriteInOutRecord
    } DatabaseEvent;

    static QDatabaseEvent* CreateDatabaseEvent( DatabaseEvent eDbEvent );

    void SetConnectName( QString& strName );
    QString& GetConnectName( );

    void SetParamHash( ParkSolution::QStringHash& hashParm );
    ParkSolution::QStringHash& GetParamHash( );

    void SetPlate( QString& strPlate );
    QString& GetPlate( );

    void SetQueryModel( QSqlQueryModel* pModel );
    QSqlQueryModel* GetQueryModel( );

    void SetParamList( QStringList& lstParams );
    QStringList& GetParamList( );

private:
    QDatabaseEvent( DatabaseEvent eDbEvent);

private:
    QString strConnectName;
    ParkSolution::QStringHash hashDbParam;
    QString strQueryPlate;
    QSqlQueryModel* pQueryModel;
    QStringList lstSpParams;
};

#endif // QDATABASEEVENT_H
