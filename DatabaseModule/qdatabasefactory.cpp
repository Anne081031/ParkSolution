#include "qdatabasefactory.h"

//template< class T >
//QSqlField--QSqlRecord--QSqlResult--
//QSqlQuery--QSqlDatabase--QSqlDriver--
//Database SDK(API)--Database Server
// M( Data source communicate ) V( UI ) C( Bussiness Logic / Handle uer logic )
//              ProxyModelX-->ViewY
// SourceModel  原始模型可以有不同的中间状态
//              ProxyModelY--->ViewX
QDatabaseFactory/*< T >*/::QDatabaseFactory(QObject *parent) :
    QObject(parent)
{
}

QUnityDatabase* QDatabaseFactory::CreateDatabaseObj( ParkSolution::DatabaseType eDbType )
{
    QUnityDatabase* pDatabase = NULL;

    switch ( eDbType ) {
    case ParkSolution::MySQL :
        pDatabase = new QMySQL( );
        break;

    case ParkSolution::MSSQLServer :
        break;

    case ParkSolution::Oracle :
        break;

    case ParkSolution::SQLite :
        break;
    }

    return pDatabase;
}
