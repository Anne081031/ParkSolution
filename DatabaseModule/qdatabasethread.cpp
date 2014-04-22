#include "qdatabasethread.h"
#include <stddef.h>
#if (defined(_WIN32) || defined(_WIN64)) && !defined(__WIN__)
#include <winsock.h>
#endif
#include "mysql.h"

QDatabaseThread* QDatabaseThread::pThreadInstance = NULL;

QDatabaseThread::QDatabaseThread(QObject *parent) :
    QBaseThread( "QDatabaseThread", parent)
{
}

QDatabaseThread* QDatabaseThread::CreateInstance( )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QDatabaseThread( );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QDatabaseThread::ThreadUninitialize( )
{

}

bool QDatabaseThread::ThreadInitialize( )
{
    bool bRet = QBaseThread::ThreadInitialize( );

    strConnectName = "CustomerCenterInfo";
    pMySQLDatabase = QDatabaseFactory::CreateDatabaseObj( ParkSolution::MySQL );
    connect( pMySQLDatabase, SIGNAL( Log( QString ) ),
             this, SLOT( HandleLog( QString ) ) );
    connect( pMySQLDatabase, SIGNAL( SpResult( int, QByteArray ) ),
             this, SLOT( HandleSpResult( int, QByteArray ) ) );
    connect( pMySQLDatabase, SIGNAL( SpResultset( int, QObject* ) ),
             this, SLOT( HandleSpResultset( int, QObject* ) ) );

    return bRet;
}

void QDatabaseThread::run( )
{
    ThreadInitialize( );
    exec( );
}

void QDatabaseThread::HandleLog( QString strLog )
{
    EmitLog( strLog );
}

void QDatabaseThread::HandleSpResult( int nSpType, QByteArray byData )
{
    emit SpResult( nSpType, byData );
}

void QDatabaseThread::HandleSpResultset( int nSpType, QObject *pQueryModel )
{
    emit SpResultset( nSpType, pQueryModel );
}

bool QDatabaseThread::DatabasePing( )
{
    bool bSuccess = false;
    QSqlDatabase db = QSqlDatabase::database( strConnectName, true );
    QString strLog = db.lastError( ).text( );

    if ( !db.isOpen( ) ) {
        EmitLog( strLog );
        return bSuccess;
    }

    //bSuccess = ( QSqlError::NoError == db.exec( "select concat( now( ) )" ).lastError( ).type( ) );

    //return bSuccess;

    QSqlDriver* pDriver = db.driver( );
    QVariant var = pDriver->handle( );

    if ( 0 == qstrcmp( var.typeName( ), "MYSQL*" ) ) {
         MYSQL *handle = *static_cast< MYSQL** >( var.data( ) );

         if ( NULL != handle ) {
             bSuccess = ( 0 == mysql_ping( handle ) );
         }
    }

    if ( !bSuccess ) {
        EmitLog( strLog );
    }

    return bSuccess;
}

void QDatabaseThread::customEvent( QEvent *pEvent )
{
    QDatabaseEvent* pDbEvent = ( QDatabaseEvent* ) pEvent;
    QDatabaseEvent::DatabaseEvent eEvent = ( QDatabaseEvent::DatabaseEvent ) pDbEvent->type( );

    switch ( eEvent ) {
    case QDatabaseEvent::DatabaseConnect :
        ProcessDatabaseConnectEvent( pDbEvent );
        break;

    case QDatabaseEvent::DatabaseDisconnect :
        ProcessDatabaseDisconnectEvent( pDbEvent );
        break;

    case QDatabaseEvent::QueryCustomerVehicleData :
        ProcessQueryCustomerVehicleDataEvent( pDbEvent );
        break;

    case QDatabaseEvent::VehicleEnterQueryData :
        ProcessVehicleEnterQueryDataEvent( pDbEvent );
        break;

    case QDatabaseEvent::QueryServiceData :
        ProcessQueryServiceDataEvent( pDbEvent );
        break;

    case QDatabaseEvent::QueryCommonDataInfo :
        ProcessQueryCommonDataInfoEvent( pDbEvent );
        break;

    case QDatabaseEvent::QueryCustomerData :
        ProcessQueryCustomerDataEvent( pDbEvent );
        break;

    case QDatabaseEvent::ChangeCustomerVehicleData :
        ProcessChangeCustomerVehicleDataEvent( pDbEvent );
        break;

    case QDatabaseEvent::IgnoreOrDeleteCustomer :
        ProcessIgnoreOrDeleteCustomerEvent( pDbEvent );
        break;

    case QDatabaseEvent::ChangeServiceRecord :
        ProcessChangeServiceRecordEvent( pDbEvent );
        break;

    case QDatabaseEvent::ImportCustomer :
        ProcessImportCustomerEvent( pDbEvent );
        break;

    case QDatabaseEvent::ExportCustomer :
        ProcessExportCustomerEvent( pDbEvent );
        break;

    case QDatabaseEvent::QueryUserInfo :
        ProcessQueryUserInfoEvent( pDbEvent );
        break;

    case QDatabaseEvent::QueryInOutImage :
        ProcessQueryInOutImageEvent( pDbEvent );
        break;

    case QDatabaseEvent::QueryCommonDataByType :
        ProcessQueryCommonDataByTypeEvent( pDbEvent );
        break;

    case QDatabaseEvent::ChangeCommonData :
        ProcessChangeCommonDataEvent( pDbEvent );
        break;

    case QDatabaseEvent::WriteInOutRecord :
        ProcessWriteInOutRecordEvent( pDbEvent );
        break;

    case QDatabaseEvent::ReportInfo :
        ProcessReportInfoEvent( pDbEvent );
        break;
    }
}

void QDatabaseThread::PostDatabaseConnectEvent( ParkSolution::QStringHash& hashParam )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::DatabaseConnect );
    pEvent->SetParamHash( hashParam );
    PostEvent( pEvent );
}

void QDatabaseThread::PostDatabaseDisconnectEvent( )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::DatabaseDisconnect );
    PostEvent( pEvent );
}

void QDatabaseThread::PostImportCustomerEvent( QStringList &lstParams )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::ImportCustomer );
    pEvent->SetParamList( lstParams );
    PostEvent( pEvent );
}

void QDatabaseThread::PostQueryUserInfoEvent( QStringList &lstParams )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::QueryUserInfo );
    pEvent->SetParamList( lstParams );
    PostEvent( pEvent );
}

void QDatabaseThread::PostQueryInOutImageEvent( QStringList &lstParams )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::QueryInOutImage );
    pEvent->SetParamList( lstParams );
    PostEvent( pEvent );
}

void QDatabaseThread::PostChangeCommonDataEvent( QStringList &lstParams )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::ChangeCommonData );
    pEvent->SetParamList( lstParams );
    PostEvent( pEvent );
}

void QDatabaseThread::PostExportCustomerEvent( QStringList &lstParams, QSqlQueryModel* pModel )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::ExportCustomer );
    pEvent->SetParamList( lstParams );
    pEvent->SetQueryModel( pModel );
    PostEvent( pEvent );
}

void QDatabaseThread::PostQueryCustomerVehicleDataEvent( QStringList& lstParams )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::QueryCustomerVehicleData );
    pEvent->SetParamList( lstParams );
    PostEvent( pEvent );
}

void QDatabaseThread::PostQueryCommonDataInfoEvent( QStringList& lstParams )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::QueryCommonDataInfo );
    pEvent->SetParamList( lstParams );
    PostEvent( pEvent );
}

void QDatabaseThread::PostChangeCustomerVehicleDataEvent( QStringList& lstParams )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::ChangeCustomerVehicleData );
    pEvent->SetParamList( lstParams );
    PostEvent( pEvent );
}

void QDatabaseThread::PostIgnoreOrDeleteCustomerEvent( QStringList& lstParams )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::IgnoreOrDeleteCustomer );
    pEvent->SetParamList( lstParams );
    PostEvent( pEvent );
}

void QDatabaseThread::PostChangeServiceRecordEvent( QStringList& lstParams )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::ChangeServiceRecord );
    pEvent->SetParamList( lstParams );
    PostEvent( pEvent );
}

void QDatabaseThread::PostReportInfoEvent( QStringList& lstParams )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::ReportInfo );
    pEvent->SetParamList( lstParams );
    PostEvent( pEvent );
}

void QDatabaseThread::PostWriteInOutRecordEvent( QStringList& lstParams )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::WriteInOutRecord );
    pEvent->SetParamList( lstParams );
    PostEvent( pEvent );
}

void QDatabaseThread::PostVehicleEnterQueryDataEvent( QStringList& lstParams )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::VehicleEnterQueryData );
    pEvent->SetParamList( lstParams );
    PostEvent( pEvent );
}

void QDatabaseThread::PostQueryServiceDataEvent( QStringList& lstParams, QSqlQueryModel* pModel )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::QueryServiceData );
    pEvent->SetParamList( lstParams );
    pEvent->SetQueryModel( pModel );
    PostEvent( pEvent );
}

void QDatabaseThread::PostQueryCustomerDataEvent( QStringList& lstParams, QSqlQueryModel* pModel )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::QueryCustomerData );
    pEvent->SetParamList( lstParams );
    pEvent->SetQueryModel( pModel );
    PostEvent( pEvent );
}

void QDatabaseThread::PostQueryCommonDataByTypeEvent( QStringList& lstParams, QSqlQueryModel* pModel )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::QueryCommonDataByType );
    pEvent->SetParamList( lstParams );
    pEvent->SetQueryModel( pModel );
    PostEvent( pEvent );
}

void QDatabaseThread::ProcessDatabaseConnectEvent( QDatabaseEvent* pEvent )
{
    pMySQLDatabase->DbConnect( strConnectName, pEvent->GetParamHash( ) );
}

void QDatabaseThread::ProcessDatabaseDisconnectEvent( QDatabaseEvent* pEvent )
{

}

void QDatabaseThread::ProcessReportInfoEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    pMySQLDatabase->CallSP( strConnectName, ParkSolution::SpReportInfo, lstParams );
}

void QDatabaseThread::ProcessWriteInOutRecordEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    pMySQLDatabase->CallSP( strConnectName, ParkSolution::SpWriteInOutRecord, lstParams );
}

void QDatabaseThread::ProcessQueryCustomerVehicleDataEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    pMySQLDatabase->CallSP( strConnectName, ParkSolution::SpQueryCustomerVehicleData, lstParams );
}

void QDatabaseThread::ProcessQueryCommonDataInfoEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    pMySQLDatabase->CallSP( strConnectName, ParkSolution::SpQueryCommonDataInfo, lstParams );
}

void QDatabaseThread::ProcessIgnoreOrDeleteCustomerEvent( QDatabaseEvent *pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    if ( 2 > lstParams.count( ) ) {
        return;
    }

    pMySQLDatabase->CallSP( strConnectName,
                ParkSolution::SpChangeCustomerVehicleDataDelete, lstParams );
}

void QDatabaseThread::ProcessChangeCustomerVehicleDataEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    if ( 36 > lstParams.count( ) ) {
        return;
    }

    pMySQLDatabase->CallSP( strConnectName,   
                ParkSolution::SpChangeCustomerVehicleDataUI, lstParams );
}

void QDatabaseThread::ProcessImportCustomerEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    if ( 2 > lstParams.count( ) ) {
        return;
    }

    pMySQLDatabase->CallSP( strConnectName,
                ParkSolution::SpImportCustomer, lstParams );
}

void QDatabaseThread::ProcessExportCustomerEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    if ( 1 > lstParams.count( ) ) {
        return;
    }

    QSqlQueryModel* pModel = pEvent->GetQueryModel( );
    pMySQLDatabase->CallSP( strConnectName,
                ParkSolution::SpExportCustomer, lstParams, pModel );
}

void QDatabaseThread::ProcessQueryUserInfoEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    if ( 1 > lstParams.count( ) ) {
        return;
    }

    pMySQLDatabase->CallSP( strConnectName,
                ParkSolution::SpQueryUserInfo, lstParams );
}

void QDatabaseThread::ProcessQueryInOutImageEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    if ( 3 > lstParams.count( ) ) {
        return;
    }

    pMySQLDatabase->CallSP( strConnectName,
                ParkSolution::SpQueryInOutImage, lstParams );
}

void QDatabaseThread::ProcessQueryCommonDataByTypeEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    if ( 1 > lstParams.count( ) ) {
        return;
    }

    QSqlQueryModel* pModel = pEvent->GetQueryModel( );
    pMySQLDatabase->CallSP( strConnectName,
                ParkSolution::SpQueryCommonDataByType, lstParams, pModel );
}

void QDatabaseThread::ProcessChangeCommonDataEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    if ( 4 > lstParams.count( ) ) {
        return;
    }

    int nFlag = lstParams.at( 0 ).toInt( ); // 0 Update 1 Insert 2 Delete

    pMySQLDatabase->CallSP( strConnectName,
                            2 != nFlag ?
                ParkSolution::SpChangeCommonDataUI :
                ParkSolution::SpChangeCommonDataDelete, lstParams );
}

void QDatabaseThread::ProcessChangeServiceRecordEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    if ( 1 > lstParams.count( ) ) {
        return;
    }

    int nFlag = lstParams.at( 0 ).toInt( ); // 0 Update 1 Insert 2 Delete

    pMySQLDatabase->CallSP( strConnectName,
                            2 != nFlag ?
                ParkSolution::SpChangeServiceRecordUI :
                ParkSolution::SpChangeServiceRecordDelete, lstParams );
}

void QDatabaseThread::ProcessVehicleEnterQueryDataEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    pMySQLDatabase->CallSP( strConnectName, ParkSolution::SpVehicleEnter, lstParams );
}

void QDatabaseThread::ProcessQueryServiceDataEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    QSqlQueryModel* pModel = pEvent->GetQueryModel( );
    pMySQLDatabase->CallSP( strConnectName, ParkSolution::SpQueryServiceData, lstParams, pModel );
}

void QDatabaseThread::ProcessQueryCustomerDataEvent( QDatabaseEvent* pEvent )
{
    QStringList& lstParams = pEvent->GetParamList( );
    QSqlQueryModel* pModel = pEvent->GetQueryModel( );
    pMySQLDatabase->CallSP( strConnectName, ParkSolution::SpQueryCustomerData, lstParams, pModel );
}
