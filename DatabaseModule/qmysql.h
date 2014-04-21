#ifndef QMYSQL_H
#define QMYSQL_H

#include "qunitydatabase.h"

class QMySQL : public QUnityDatabase
{
    Q_OBJECT
public:
    explicit QMySQL(QObject *parent = 0);

    bool DbConnect( QString& strConnectName, ParkSolution::QStringHash& hashConnParams );
    void DbDisconnect( QString& strConnectName );
    bool DbPing( );

    bool DbBeginTransaction( QString& strConnectName );
    bool DbRollbackTransaction( QString& strConnectName );

    void CallSP( QString& strConnectName, ParkSolution::SpType eSpType, QStringList& lstParams );
    void CallSP( QString& strConnectName, ParkSolution::SpType eSpType, QStringList& lstParams, QSqlQueryModel* pQueryModel );

    bool DbExecuteSQL( QString& strConnectName, QSqlQueryModel& sqlQueryModel, QStringList& lstParams, ParkSolution::SelectResult uResult );
    bool DbExecuteSQL( QString& strConnectName, QSqlTableModel& sqlTableModel, ParkSolution::SelectResult uResult );

private:
    inline void EmitLog( QString strTip, QString strError );
    inline void EmitResult( ParkSolution::SpType eSpType, QByteArray& byData );
    inline void EmitResultset( ParkSolution::SpType eSpType, QSqlQueryModel* pQueryModel );

    void CallVehicleEnter( QString& strConnectName,
                           ParkSolution::SpType eSpType,
                           QString& strSpName,
                           QString& strXmlPattern,
                           QStringList& lstParams );

    void CallQueryCustomerVehicleData( QString& strConnectName,
                           ParkSolution::SpType eSpType,
                           QString& strSpName,
                           QString& strXmlPattern,
                           QStringList& lstParams );

    void CallQueryCommonDataInfo( QString& strConnectName,
                           ParkSolution::SpType eSpType,
                           QString& strSpName,
                           QString& strXmlPattern,
                           QStringList& lstParams );

    void CallChangeCustomerVehicleData( QString& strConnectName,
                           ParkSolution::SpType eSpType,
                           QString& strSpName,
                           QString& strXmlPattern,
                           QStringList& lstParams );

    void CallChangeServiceRecord( QString& strConnectName,
                           ParkSolution::SpType eSpType,
                           QString& strSpName,
                           QString& strXmlPattern,
                           QStringList& lstParams );

    void CallChangeCommonData( QString& strConnectName,
                                   ParkSolution::SpType eSpType,
                                   QString& strSpName,
                                   QString& strXmlPattern,
                                   QStringList& lstParams );

    void CallImportCustomer( QString& strConnectName,
                           ParkSolution::SpType eSpType,
                           QString& strSpName,
                           QString& strXmlPattern,
                           QStringList& lstParams );

    void CallQueryUserInfo( QString& strConnectName,
                           ParkSolution::SpType eSpType,
                           QString& strSpName,
                           QString& strXmlPattern,
                           QStringList& lstParams );

    void CallQueryInOutImage( QString& strConnectName,
                           ParkSolution::SpType eSpType,
                           QString& strSpName,
                           QString& strXmlPattern,
                           QStringList& lstParams );

    void CallWriteInOutRecord( QString& strConnectName,
                           ParkSolution::SpType eSpType,
                           QString& strSpName,
                           QString& strXmlPattern,
                           QStringList& lstParams );

    void CallQueryServiceData( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams,
                               QSqlQueryModel* pQueryModel );

    void CallQueryCustomerData( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams,
                               QSqlQueryModel* pQueryModel );

    void CallExportCustomerData( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams,
                               QSqlQueryModel* pQueryModel );

    void CallQueryCommonDataByType( QString &strConnectName,
                                       ParkSolution::SpType eSpType,
                                       QString &strSpName,
                                       QString &strXmlPattern,
                                       QStringList &lstParams,
                                       QSqlQueryModel* pQueryModel );

    void ExecuteSP( QString& strConnectName,
                    ParkSolution::SpType eSpType,
                    QString& strSQL );

    void ExecuteSP( QString& strConnectName,
                    ParkSolution::SpType eSpType,
                    QString& strSQL,
                    QSqlQueryModel* pQueryModel );
    void DebugMsg( ParkSolution::SpType eSpType, QSqlQuery& query );

signals:

public slots:

};

#endif // QMYSQL_H
