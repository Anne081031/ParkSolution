#include "qdbpooltask.h"
#include "qprocessresultthread.h"

ParkSolution::QIntObjectHash QDbPoolTask::hashDatabase;
ParkSolution::QStringHash QDbPoolTask::hashParam;

QDbPoolTask::QDbPoolTask( ParkSolution::SpType  nType, QStringList& lstParam,
                          QBaseThread* pReceiver, int nConnectID  )
{
    dbSpType = nType;
    lstSpParam = lstParam;
    pReceiverThread = pReceiver;

    if ( 0 == hashParam.size( ) ) {
        pConfigurator = QConfigurator::CreateConfigurator( );
        pConfigurator->GetDbParams( hashParam );
    }

    strConnectName = QString( "QDbPoolTask%1" ).arg( nConnectID );

    pDatabase = ( QUnityDatabase* )hashDatabase.value( nConnectID, NULL );

    if ( NULL == pDatabase ) {
        pDatabase = QDatabaseFactory::CreateDatabaseObj( ParkSolution::MySQL );
        hashDatabase.insert( nConnectID, pDatabase );
    }

    pDatabase->DbConnect( strConnectName, hashParam );
}

QDbPoolTask::~QDbPoolTask( )
{
    //pDatabase->DbDisconnect( strConnectName );
    //QDatabaseFactory::DestroyDatabaseObj( pDatabase );
}

QDbPoolTask* QDbPoolTask::CreateTask( ParkSolution::SpType  nType, QStringList& lstParam, QBaseThread* pReceiver, int nConnectID  )
{
    return new QDbPoolTask( nType, lstParam, pReceiver, nConnectID );
}

void QDbPoolTask::run( )
{
    try {
        QByteArray bySpResult;
        pDatabase->CallSP( strConnectName,  dbSpType, lstSpParam, bySpResult );

        if ( 0 == bySpResult.size( ) ) {
            return;
        }

        QProcessResultThread* pReceiver = ( QProcessResultThread* ) pReceiverThread;

        if ( NULL == pReceiver ) {
            return;
        }

        pReceiver->PostDatabaseResultEvent( dbSpType, bySpResult, lstSpParam );
    } catch ( QException& e ) {
        qDebug( ) << e.what( ) << endl;
    }

    qDebug( ) << strConnectName << QThread::currentThreadId( ) << endl;
}
