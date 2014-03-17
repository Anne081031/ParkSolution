#include "qunitydatabase.h"

QUnityDatabase::QUnityDatabase(QObject *parent) :
    QObject(parent)
{
    /*The database connection is referred to by connectionName.
 QSqlDatabase db = QSqlDatabase::addDatabase("QPSQL");
    db.setHostName("acidalia");
    db.setDatabaseName("customdb");
    db.setUserName("mojito");
    db.setPassword("J0a1m8");
    bool ok = db.open();
*/
}

bool QUnityDatabase::DbPing( )
{
    return false;
}
