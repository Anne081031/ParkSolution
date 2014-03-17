#include "qdatabasethread.h"

QDatabaseThread* QDatabaseThread::pThreadInstance = NULL;

QDatabaseThread::QDatabaseThread(QObject *parent) :
    QThread(parent)
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

void QDatabaseThread::run( )
{
    strConnectName = "CustomerCenterInfo";
    pMySQLDatabase = QDatabaseFactory::CreateDatabaseObj( ParkSolution::MySQL );
    connect( pMySQLDatabase, SIGNAL( Log( QString ) ),
             this, SLOT( HandleLog( QString ) ) );
    connect( pMySQLDatabase, SIGNAL( SpResult( int, QByteArray ) ),
             this, SLOT( HandleSpResult( int, QByteArray ) ) );
    connect( pMySQLDatabase, SIGNAL( SpResultset( int, QObject* ) ),
             this, SLOT( HandleSpResultset( int, QObject* ) ) );

    exec( );
}

void QDatabaseThread::HandleLog( QString strLog )
{
    emit Log( strLog );
}

void QDatabaseThread::HandleSpResult( int nSpType, QByteArray byData )
{
    emit SpResult( nSpType, byData );
}

void QDatabaseThread::HandleSpResultset( int nSpType, QObject *pQueryModel )
{
    emit SpResultset( nSpType, pQueryModel );
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

    case QDatabaseEvent::QueryServiceData :
        ProcessQueryServiceDataEvent( pDbEvent );
        break;
    }
}

void QDatabaseThread::PostEvent(QDatabaseEvent *pEvent)
{
    qApp->postEvent( this, pEvent );
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

void QDatabaseThread::PostQueryCustomerVehicleDataEvent( QStringList& lstParams )
{
    QDatabaseEvent* pEvent = QDatabaseEvent::CreateDatabaseEvent( QDatabaseEvent::QueryCustomerVehicleData );
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

void QDatabaseThread::ProcessDatabaseConnectEvent( QDatabaseEvent* pEvent )
{
    pMySQLDatabase->DbConnect( strConnectName, pEvent->GetParamHash( ) );
}

void QDatabaseThread::ProcessDatabaseDisconnectEvent( QDatabaseEvent* pEvent )
{

}

void QDatabaseThread::ProcessQueryCustomerVehicleDataEvent( QDatabaseEvent* pEvent )
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
