#ifndef QDATABASEFACTORY_H
#define QDATABASEFACTORY_H

#include <QObject>
#include "qmysql.h"
//template< class T >
class DATABASEMODULESHARED_EXPORT QDatabaseFactory : public QObject
{
    Q_OBJECT
public:
    static QUnityDatabase* CreateDatabaseObj( ParkSolution::DatabaseType eDbType );
    //static QUnityDatabase* CreateDatabaseObj( );
private:
    explicit QDatabaseFactory(QObject *parent = 0);

signals:

public slots:

};

#endif // QDATABASEFACTORY_H
