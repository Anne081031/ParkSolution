#include "qdbpoolnewtask.h"
#include "qprocessresultthread.h"

ParkSolution::QStringHash QDbPoolNewTask::hashParam;

QDbPoolNewTask::QDbPoolNewTask( ParkSolution::SpType  nType, QStringList& lstParam,
                          QBaseThread* pReceiver, int nConnectID  )
{
    dbSpType = nType;
    lstSpParam = lstParam;
    pReceiverThread = pReceiver;

    if ( 0 == hashParam.size( ) ) {
        pConfigurator = QConfigurator::CreateConfigurator( );
        pConfigurator->GetDbParams( hashParam );
    }

    strConnectName = QString( "QDbPoolNewTask%1" ).arg( nConnectID );
}

QDbPoolNewTask::~QDbPoolNewTask( )
{
}

QDbPoolNewTask* QDbPoolNewTask::CreateTask( ParkSolution::SpType  nType, QStringList& lstParam, QBaseThread* pReceiver, int nConnectID  )
{
    return new QDbPoolNewTask( nType, lstParam, pReceiver, nConnectID );
}

bool QDbPoolNewTask::ConnectDb( )
{
    bool bRet = false;
    QSqlDatabase sqlDb = QSqlDatabase::database( strConnectName );
    if ( !sqlDb.isValid( ) ) {
        sqlDb = QSqlDatabase::addDatabase( "QMYSQL", strConnectName );
    }

    if ( !sqlDb.isValid( ) ) {
        return bRet;
    }

    sqlDb.setConnectOptions( "MYSQL_OPT_RECONNECT=1" );

    ParkSolution::DbConnectInfo dbInfo;
    QString strInfo = hashParam[ dbInfo.strHost ];
    if ( strInfo.isEmpty( ) )
    {
        return bRet;
    }
    sqlDb.setHostName( strInfo );

    strInfo = hashParam[ dbInfo.strPort ];
    sqlDb.setPort( strInfo.toInt( ) );

    strInfo = hashParam[ dbInfo.strUser ];
    sqlDb.setUserName( strInfo );

    strInfo = hashParam[ dbInfo.strPwd ];
    sqlDb.setPassword( strInfo );

    strInfo = hashParam[ dbInfo.strSchema ];
    sqlDb.setDatabaseName( strInfo );

    bRet = sqlDb.open( );
    if ( sqlDb.isOpenError( ) ) {
       qDebug( ) << sqlDb.lastError( ).text( ) << endl;
    }

    return bRet;
}

void QDbPoolNewTask::CallSP( QByteArray &bySpResult )
{
    QString strXmlWriteInOutRecord = "<Data><Flag>%1</Flag><Plate>%2</Plate><DateTime>%3</DateTime><Image>%4</Image><UUID>%5</UUID></Data>";
    if ( 5 > lstSpParam.count( ) ) {
        return;
    }

    QString strXmlPattern = strXmlWriteInOutRecord.arg( lstSpParam.at( 0 ),
                                       lstSpParam.at( 1 ),
                                       lstSpParam.at( 2 ),
                                       lstSpParam.at( 3 ),
                                       lstSpParam.at( 4 ) );
    QSqlQuery spQuery( QSqlDatabase::database( strConnectName ) );
    QString strSQL = QString( "CALL WriteInOutRecord( '%1', @txtValue )" ).arg( strXmlPattern );
    bool bRet = spQuery.exec( strSQL );
    if ( !bRet ) {
        return;
    }

    bRet = spQuery.exec( "SELECT @txtValue" );
    if ( !bRet ) {
        return;
    }

    if ( !spQuery.next( ) ) {
        return;
    }

    QVariant varOut = spQuery.value( 0 );
    bySpResult = varOut.toString( ).toUtf8( );
    spQuery.clear( );
}

void QDbPoolNewTask::run( )
{
    QByteArray bySpResult;

    if ( !ConnectDb( ) ) {
        return;
    }

    CallSP( bySpResult );

    if ( 0 == bySpResult.size( ) ) {
        return;
    }

    QProcessResultThread* pReceiver = ( QProcessResultThread* ) pReceiverThread;

    if ( NULL == pReceiver ) {
        return;
    }

    pReceiver->PostDatabaseResultEvent( dbSpType, bySpResult, lstSpParam );

    qDebug( ) << strConnectName << QThread::currentThreadId( ) << endl;
}
