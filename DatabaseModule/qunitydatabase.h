#ifndef QUNITYDATABASE_H
#define QUNITYDATABASE_H

#include <QObject>
#include "./databasemodule_global.h"
#include "../CommonModule/CommonHeader.h"
#include <QtSql>

class DATABASEMODULESHARED_EXPORT QUnityDatabase : public QObject
{
    Q_OBJECT
public:
    explicit QUnityDatabase(QObject *parent = 0);

    virtual bool DbConnect( QString& strConnectName, ParkSolution::QStringHash& hashConnParams ) = 0;
    virtual void DbDisconnect( QString& strConnectName ) = 0;
    virtual bool DbPing( );

    virtual void CallSP( QString& strConnectName, ParkSolution::SpType eSpType, QStringList& lstParams ) = 0;
    virtual void CallSP( QString& strConnectName, ParkSolution::SpType eSpType, QStringList& lstParams, QByteArray& bySpResult ) = 0;
    virtual void CallSP( QString& strConnectName, ParkSolution::SpType eSpType, QStringList& lstParams, QSqlQueryModel* pQueryModel ) = 0;

    virtual bool DbBeginTransaction( QString& strConnectName ) = 0;
    virtual bool DbRollbackTransaction( QString& strConnectName ) = 0;

    virtual bool DbExecuteSQL( QString& strConnectName, QSqlQueryModel& sqlQueryModel, QStringList& lstParams, ParkSolution::SelectResult uResult ) = 0;
    virtual bool DbExecuteSQL( QString& strConnectName, QSqlTableModel& sqlTableModel, ParkSolution::SelectResult uResult ) = 0;

private:

signals:
    void Log( QString strLog );
    void SpResult( int nSpType, QByteArray byData );
    void SpResultset( int nSpType, QObject* pQueryModel );

public slots:

};

#endif // QUNITYDATABASE_H
