#include "qmysql.h"

QMySQL::QMySQL(QObject *parent) :
    QUnityDatabase(parent)
{
}

void QMySQL::EmitLog( QString strTip, QString strError )
{
    strTip = " " + strError;
    emit Log( strTip );
}

void QMySQL::DebugMsg( ParkSolution::SpType eSpType, QSqlQuery &query )
{
    QSqlError sqlError = query.lastError( );

    if ( !sqlError.isValid( ) ) {
        return;
    }

    QString strText = "";
    if ( ParkSolution::SpVehicleEnter == eSpType ) {
        //CallVehicleEnter( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
        strText = "车辆进入";
    } else if ( ParkSolution::SpQueryCustomerVehicleData == eSpType ) {
        //CallQueryCustomerVehicleData( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
        strText = "查询客户、车辆信息";
    } else if ( ParkSolution::SpQueryCommonDataInfo == eSpType ) {
        //CallQueryCommonDataInfo( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
        strText = "查询通用数据";
    } else if ( ParkSolution::SpChangeCustomerVehicleDataUI == eSpType ) {
        //CallQueryCommonDataInfo( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
        strText = "编辑或新增客户、车辆信息";
    } else if ( ParkSolution::SpChangeCustomerVehicleDataDelete == eSpType ) {
        //CallQueryCommonDataInfo( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
        strText = "删除客户、车辆、服务信息信息";
    }

    EmitLog( strText, sqlError.text( ) );
    //qDebug ( ) << sqlError.text( ) << endl;
}

bool QMySQL::DbConnect( QString& strConnectName, ParkSolution::QStringHash& hashConnParams )
{
    // 调试 Qt5.2.1\5.2.1\mingw48_32\bin\libmysql.dll
    // 独立运行 程序文件目录\libmysql.dll
    bool bRet = false;
    //You can have multiple connections to one database by a connect name.
    QSqlDatabase sqlDb = QSqlDatabase::database( strConnectName );

    if ( sqlDb.isValid( ) ) {
        return true;
    }

    sqlDb = QSqlDatabase::addDatabase( "QMYSQL", strConnectName );
    if ( !sqlDb.isValid( ) ) {
        EmitLog( "没找到MySQL Qt驱动", sqlDb.lastError( ).text( ) );
        return bRet;
    }

    sqlDb.setConnectOptions( "MYSQL_OPT_RECONNECT=1" );

    ParkSolution::DbConnectInfo dbInfo;

    QString strInfo = hashConnParams[ dbInfo.strHost ];
    if ( strInfo.isEmpty( ) )
    {
        return bRet;
    }
    sqlDb.setHostName( strInfo );

    strInfo = hashConnParams[ dbInfo.strPort ];
    sqlDb.setPort( strInfo.toInt( ) );

    strInfo = hashConnParams[ dbInfo.strUser ];
    sqlDb.setUserName( strInfo );

    strInfo = hashConnParams[ dbInfo.strPwd ];
    sqlDb.setPassword( strInfo );

    strInfo = hashConnParams[ dbInfo.strSchema ];
    sqlDb.setDatabaseName( strInfo );

    bRet = sqlDb.open( );
    if ( sqlDb.isOpenError( ) ) {
        EmitLog( "连接MySQL失败", sqlDb.lastError( ).text( ) );
    }

    return bRet;
}

void QMySQL::DbDisconnect( QString& strConnectName )
{
    QSqlDatabase sqlDb = QSqlDatabase::database( strConnectName, false );
    if ( sqlDb.isValid( ) && sqlDb.isOpen( ) ) {
        sqlDb.close( );
    }
}

bool QMySQL::DbPing( )
{
    return false;
}

bool QMySQL::DbBeginTransaction( QString& strConnectName )
{
    bool bRet = false;
    QSqlDatabase sqlDb = QSqlDatabase::database( strConnectName, false );
    if ( sqlDb.isValid( ) && sqlDb.isOpen( ) ) {
        return bRet;
    }

    return sqlDb.transaction( );
}

bool QMySQL::DbRollbackTransaction( QString& strConnectName )
{
    bool bRet = false;
    QSqlDatabase sqlDb = QSqlDatabase::database( strConnectName, false );
    if ( sqlDb.isValid( ) && sqlDb.isOpen( ) ) {
        return bRet;
    }

    return sqlDb.rollback( );
}

void QMySQL::EmitResult( ParkSolution::SpType eSpType, QByteArray &byData )
{
    emit SpResult( eSpType, byData );
}

void QMySQL::EmitResultset( ParkSolution::SpType eSpType, QSqlQueryModel *pQueryModel )
{
    emit SpResultset( eSpType, pQueryModel );
}

void QMySQL::ExecuteSP( QString &strConnectName,
                        ParkSolution::SpType eSpType,
                        QString &strSQL,
                        QByteArray &bySopResult )
{
    //qDebug( ) << Q_FUNC_INFO << strSQL << endl;

    QSqlQuery spQuery( QSqlDatabase::database( strConnectName ) );
    bool bRet = spQuery.exec( strSQL );
    DebugMsg( eSpType, spQuery );
    if ( !bRet ) {
        return;
    }

    bRet = spQuery.exec( "SELECT @txtValue" );
    DebugMsg( eSpType, spQuery );
    if ( !bRet ) {
        return;
    }

    if ( !spQuery.next( ) ) {
        DebugMsg( eSpType, spQuery );
        return;
    }

    QVariant varOut = spQuery.value( 0 );
    bySopResult = varOut.toString( ).toUtf8( );
    //EmitResult( eSpType, byData );
    spQuery.clear( );
}

void QMySQL::ExecuteSP( QString& strConnectName,
                        ParkSolution::SpType eSpType,
                        QString& strSQL )
{
    //qDebug( ) << strSQL << endl;

    QSqlQuery spQuery( QSqlDatabase::database( strConnectName ) );
    bool bRet = spQuery.exec( strSQL );
    DebugMsg( eSpType, spQuery );
    if ( !bRet ) {
        return;
    }

    bRet = spQuery.exec( "SELECT @txtValue" );
    DebugMsg( eSpType, spQuery );
    if ( !bRet ) {
        return;
    }

    if ( !spQuery.next( ) ) {
        DebugMsg( eSpType, spQuery );
        return;
    }

    QVariant varOut = spQuery.value( 0 );
    QByteArray byData = varOut.toString( ).toUtf8( );
    EmitResult( eSpType, byData );
    spQuery.clear( );
}

void QMySQL::ExecuteSP( QString& strConnectName,
                        ParkSolution::SpType eSpType,
                        QString& strSQL,
                        QSqlQueryModel* pQueryModel)
{
    qDebug( ) << strSQL << endl;

    if ( NULL == pQueryModel ) {
        return;
    }

    pQueryModel->setQuery( strSQL, QSqlDatabase::database( strConnectName ) );
    EmitResultset( eSpType, pQueryModel );
}

void QMySQL::CallQueryServiceData( QString &strConnectName,
                                   ParkSolution::SpType eSpType,
                                   QString &strSpName,
                                   QString &strXmlPattern,
                                   QStringList &lstParams,
                                   QSqlQueryModel* pQueryModel )
{
    if ( 4 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ), lstParams.at( 1 ), lstParams.at( 2 ), lstParams.at( 3 ) );
    QString strSQL = QString( "Call %1( '%2' )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL, pQueryModel);
}

void QMySQL::CallQueryCustomerData( QString &strConnectName,
                                   ParkSolution::SpType eSpType,
                                   QString &strSpName,
                                   QString &strXmlPattern,
                                   QStringList &lstParams,
                                   QSqlQueryModel* pQueryModel )
{
    if ( 3 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ),
                                       lstParams.at( 1 ),
                                       lstParams.at( 2 ) );
    QString strSQL = QString( "Call %1( '%2' )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL, pQueryModel);
}

void QMySQL::CallExportCustomerData( QString &strConnectName,
                                   ParkSolution::SpType eSpType,
                                   QString &strSpName,
                                   QString &strXmlPattern,
                                   QStringList &lstParams,
                                   QSqlQueryModel* pQueryModel )
{
    if ( 1 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ) );
    QString strSQL = QString( "Call %1( '%2' )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL, pQueryModel);
}

void QMySQL::CallQueryServiceDataByPlate( QString &strConnectName,
                                   ParkSolution::SpType eSpType,
                                   QString &strSpName,
                                   QString &strXmlPattern,
                                   QStringList &lstParams,
                                   QSqlQueryModel* pQueryModel )
{
    if ( 2 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ), lstParams.at( 1 ) );
    QString strSQL = QString( "Call %1( '%2' )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL, pQueryModel);
}

void QMySQL::CallQueryCustomerDataByPlate( QString &strConnectName,
                                   ParkSolution::SpType eSpType,
                                   QString &strSpName,
                                   QString &strXmlPattern,
                                   QStringList &lstParams,
                                   QSqlQueryModel* pQueryModel )
{
    if ( 2 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ), lstParams.at( 1 ) );
    QString strSQL = QString( "Call %1( '%2' )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL, pQueryModel);
}

void QMySQL::CallQueryVehicleDataByCustomer( QString &strConnectName,
                                   ParkSolution::SpType eSpType,
                                   QString &strSpName,
                                   QString &strXmlPattern,
                                   QStringList &lstParams,
                                   QSqlQueryModel* pQueryModel )
{
    if ( 3 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ), lstParams.at( 1 ), lstParams.at( 2 ) );
    QString strSQL = QString( "Call %1( '%2' )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL, pQueryModel);
}

void QMySQL::CallQueryInOutRecord( QString &strConnectName,
                                   ParkSolution::SpType eSpType,
                                   QString &strSpName,
                                   QString &strXmlPattern,
                                   QStringList &lstParams,
                                   QSqlQueryModel* pQueryModel )
{
    if ( 4 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ), lstParams.at( 1 ), lstParams.at( 2 ), lstParams.at( 3 ) );
    QString strSQL = QString( "Call %1( '%2' )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL, pQueryModel);
}

void QMySQL::CallQueryCommonDataByType( QString &strConnectName,
                                   ParkSolution::SpType eSpType,
                                   QString &strSpName,
                                   QString &strXmlPattern,
                                   QStringList &lstParams,
                                   QSqlQueryModel* pQueryModel )
{
    if ( 1 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ) );
    QString strSQL = QString( "Call %1( '%2' )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL, pQueryModel);
}

void QMySQL::CallVehicleEnter( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams )
{
    if ( 5 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ),
                                       lstParams.at( 1 ),
                                       lstParams.at( 2 ),
                                       lstParams.at( 3 ),
                                       lstParams.at( 4 ) );
    QString strSQL = QString( "Call %1( '%2', @txtValue )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL );
}

void QMySQL::CallQueryCustomerVehicleData( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams )
{
    if ( 3 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ), lstParams.at( 1 ), lstParams.at( 2 ) );
    QString strSQL = QString( "Call %1( '%2', @txtValue )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL );
}

void QMySQL::CallQueryCommonDataInfo( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams )
{
    if ( 1 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ) );
    QString strSQL = QString( "Call %1( '%2', @txtValue )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL );
}

void QMySQL::CallChangeCustomerVehicleData( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams )
{
    if ( ParkSolution::SpChangeCustomerVehicleDataUI == eSpType ) {
        if ( 37 > lstParams.count( ) ) {
            return;
        }

         strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ), lstParams.at( 1 ),
                                            lstParams.at( 2 ), lstParams.at( 3 ),
                                            lstParams.at( 4 ), lstParams.at( 5 ),
                                            lstParams.at( 6 ), lstParams.at( 7 ),
                                            lstParams.at( 8 ) );

         strXmlPattern = strXmlPattern.arg( lstParams.at( 9 ), lstParams.at( 10 ),
                                            lstParams.at( 11 ), lstParams.at( 12 ),
                                            lstParams.at( 13 ), lstParams.at( 14 ),
                                            lstParams.at( 15 ), lstParams.at( 16 ),
                                            lstParams.at( 17 ) );

         strXmlPattern = strXmlPattern.arg( lstParams.at( 18 ), lstParams.at( 19 ),
                                            lstParams.at( 20 ), lstParams.at( 21 ),
                                            lstParams.at( 22 ), lstParams.at( 23 ),
                                            lstParams.at( 24 ), lstParams.at( 25 ),
                                            lstParams.at( 26 ) );

         strXmlPattern = strXmlPattern.arg( lstParams.at( 27 ), lstParams.at( 28 ),
                                            lstParams.at( 29 ), lstParams.at( 30 ),
                                            lstParams.at( 31 ), lstParams.at( 32 ),
                                            lstParams.at( 33 ), lstParams.at( 34 ),
                                            lstParams.at( 35 ) );
         strXmlPattern = strXmlPattern.arg( lstParams.at( 36 )  );
    } else if ( ParkSolution::SpChangeCustomerVehicleDataDelete == eSpType ) {
        if ( 2 > lstParams.count( ) ) {
            return;
        }

         strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ), lstParams.at( 1 ) );
    }

    QString strSQL = QString( "Call %1( '%2', @txtValue )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL );
}

void QMySQL::CallChangeCommonData( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams )
{
    if ( 4 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ), lstParams.at( 1 ),
                                    lstParams.at( 2 ), lstParams.at( 3 ) );

    QString strSQL = QString( "Call %1( '%2', @txtValue )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL );
}

void QMySQL::CallChangeServiceRecord( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams )
{
    if ( ParkSolution::SpChangeServiceRecordUI == eSpType ) {
        if ( 14 > lstParams.count( ) ) {
            return;
        }

         strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ), lstParams.at( 1 ),
                                            lstParams.at( 2 ), lstParams.at( 3 ),
                                            lstParams.at( 4 ), lstParams.at( 5 ),
                                            lstParams.at( 6 ), lstParams.at( 7 ),
                                            lstParams.at( 8 ) );

         strXmlPattern = strXmlPattern.arg( lstParams.at( 9 ), lstParams.at( 10 ),
                                            lstParams.at( 11 ), lstParams.at( 12 ),
                                            lstParams.at( 13 ) );
    }
    else if ( ParkSolution::SpChangeServiceRecordDelete == eSpType ) {
        if ( 2 > lstParams.count( ) ) {
            return;
        }

         strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ), lstParams.at( 1 ) );
    }

    QString strSQL = QString( "Call %1( '%2', @txtValue )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL );
}

void QMySQL::CallImportCustomer( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams )
{
    if ( 2 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ), lstParams.at( 1 ) );
    QString strSQL = QString( "Call %1( '%2', @txtValue )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL );
}

void QMySQL::CallQueryUserInfo( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams )
{
    if ( 1 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ) );
    QString strSQL = QString( "Call %1( '%2', @txtValue )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL );
}

void QMySQL::CallWriteInOutRecord( QString &strConnectName,
                                  ParkSolution::SpType eSpType,
                                  QString &strSpName,
                                  QString &strXmlPattern,
                                  QStringList &lstParams,
                                  QByteArray &bySpResult )
{
    if ( 5 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ),
                                       lstParams.at( 1 ),
                                       lstParams.at( 2 ),
                                       lstParams.at( 3 ),
                                       lstParams.at( 4 ) );
    QString strSQL = QString( "Call %1( '%2', @txtValue )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL, bySpResult );
}

void QMySQL::CallWriteInOutRecord( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams )
{
    if ( 5 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ),
                                       lstParams.at( 1 ),
                                       lstParams.at( 2 ),
                                       lstParams.at( 3 ),
                                       lstParams.at( 4 ) );
    QString strSQL = QString( "Call %1( '%2', @txtValue )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL );
}

void QMySQL::CallReportInfo( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams )
{
    if ( 4 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ),
                                       lstParams.at( 1 ),
                                       lstParams.at( 2 ),
                                       lstParams.at( 3 ) );
    QString strSQL = QString( "Call %1( '%2', @txtValue )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL );
}

void QMySQL::CallChartInfo( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams )
{
    if ( 5 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ),
                                       lstParams.at( 1 ),
                                       lstParams.at( 2 ),
                                       lstParams.at( 3 ),
                                       lstParams.at( 4 ) );
    QString strSQL = QString( "Call %1( '%2', @txtValue )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL );
}

void QMySQL::CallQueryInOutImage( QString& strConnectName,
                               ParkSolution::SpType eSpType,
                               QString& strSpName,
                               QString& strXmlPattern,
                               QStringList& lstParams )
{
    if ( 2 > lstParams.count( ) ) {
        return;
    }

    strXmlPattern = strXmlPattern.arg( lstParams.at( 0 ),
                                       lstParams.at( 1 ) );
    QString strSQL = QString( "Call %1( '%2', @txtValue )" ).arg( strSpName, strXmlPattern );
    ExecuteSP( strConnectName, eSpType, strSQL );
}

void QMySQL::CallSP( QString &strConnectName, ParkSolution::SpType eSpType, QStringList &lstParams, QByteArray &bySpResult )
{
    QString strSpName;
    QCommonFunction::GetSpName( eSpType, strSpName );
    QString strXmlPattern;
    QCommonFunction::GetSpXmlPattern( eSpType, strXmlPattern );

    if ( ParkSolution::SpWriteInOutRecord == eSpType ) {
        CallWriteInOutRecord( strConnectName, eSpType, strSpName, strXmlPattern, lstParams, bySpResult );
    }
}

void QMySQL::CallSP( QString& strConnectName, ParkSolution::SpType eSpType, QStringList& lstParams )
{
    QString strSpName;
    QCommonFunction::GetSpName( eSpType, strSpName );
    QString strXmlPattern;
    QCommonFunction::GetSpXmlPattern( eSpType, strXmlPattern );

    if ( ParkSolution::SpVehicleEnter == eSpType ) {
        CallVehicleEnter( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    } else if ( ParkSolution::SpQueryCustomerVehicleData == eSpType ) {
        CallQueryCustomerVehicleData( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    } else if ( ParkSolution::SpQueryCommonDataInfo == eSpType ) {
        CallQueryCommonDataInfo( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    } else if ( ParkSolution::SpChangeCustomerVehicleDataUI == eSpType ) {
        CallChangeCustomerVehicleData( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    } else if ( ParkSolution::SpChangeCustomerVehicleDataDelete == eSpType ) {
        CallChangeCustomerVehicleData( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    } else if ( ParkSolution::SpChangeServiceRecordUI == eSpType ) {
        CallChangeServiceRecord( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    } else if ( ParkSolution::SpChangeServiceRecordDelete == eSpType ) {
        CallChangeServiceRecord( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    } else if ( ParkSolution::SpImportCustomer == eSpType ) {
        CallImportCustomer( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    } else if ( ParkSolution::SpQueryUserInfo == eSpType ) {
        CallQueryUserInfo( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    } else if ( ParkSolution::SpQueryInOutImage == eSpType ) {
        CallQueryInOutImage( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    }else if ( ParkSolution::SpChangeCommonDataUI == eSpType ) {
        CallChangeCommonData( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    } else if ( ParkSolution::SpChangeCommonDataDelete == eSpType ) {
        CallChangeCommonData( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    } else if ( ParkSolution::SpWriteInOutRecord == eSpType ) {
        CallWriteInOutRecord( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    } else if ( ParkSolution::SpReportInfo == eSpType ) {
        CallReportInfo( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    } else if ( ParkSolution::SpChartInfo == eSpType ) {
        CallChartInfo( strConnectName, eSpType, strSpName, strXmlPattern, lstParams );
    }
}

void QMySQL::CallSP( QString& strConnectName, ParkSolution::SpType eSpType, QStringList& lstParams, QSqlQueryModel* pQueryModel )
{
    QString strSpName;
    QCommonFunction::GetSpName( eSpType, strSpName );
    QString strXmlPattern;
    QCommonFunction::GetSpXmlPattern( eSpType, strXmlPattern );

    if ( ParkSolution::SpQueryServiceData == eSpType ) {
        CallQueryServiceData( strConnectName, eSpType, strSpName, strXmlPattern, lstParams, pQueryModel );
    } else if ( ParkSolution::SpQueryCustomerData == eSpType ) {
        CallQueryCustomerData( strConnectName, eSpType, strSpName, strXmlPattern, lstParams, pQueryModel );
    } else if ( ParkSolution::SpExportCustomer == eSpType ) {
        CallExportCustomerData( strConnectName, eSpType, strSpName, strXmlPattern, lstParams, pQueryModel );
    } else if ( ParkSolution::SpQueryCommonDataByType == eSpType ) {
        CallQueryCommonDataByType( strConnectName, eSpType, strSpName, strXmlPattern, lstParams, pQueryModel );
    }  else if ( ParkSolution::SpQueryInOutRecord == eSpType ) {
        CallQueryInOutRecord( strConnectName, eSpType, strSpName, strXmlPattern, lstParams, pQueryModel );
    } else if ( ParkSolution::SpQueryCustomerDataByPlate == eSpType ) {
        CallQueryCustomerDataByPlate( strConnectName, eSpType, strSpName, strXmlPattern, lstParams, pQueryModel );
    }  else if ( ParkSolution::SpQueryVehicleDataByCustomer == eSpType ) {
        CallQueryVehicleDataByCustomer( strConnectName, eSpType, strSpName, strXmlPattern, lstParams, pQueryModel );
    } else if ( ParkSolution::SpQueryServiceDataByPlate == eSpType ) {
        CallQueryServiceDataByPlate( strConnectName, eSpType, strSpName, strXmlPattern, lstParams, pQueryModel );
    }
}

bool QMySQL::DbExecuteSQL( QString& strConnectName, QSqlQueryModel& sqlQueryModel, QStringList& lstParams, ParkSolution::SelectResult uResult )
{
    return true;
}

bool QMySQL::DbExecuteSQL( QString& strConnectName, QSqlTableModel& sqlTableModel, ParkSolution::SelectResult uResult )
{
    return false;
}
