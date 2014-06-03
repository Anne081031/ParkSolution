#include "qdatabaseevent.h"

QDatabaseEvent::QDatabaseEvent( DatabaseEvent eDbEvent ) : QEvent( ( Type ) eDbEvent )
{
    nSubThreadID = 0;
    pQueryModel = NULL;
}

QDatabaseEvent* QDatabaseEvent::CreateDatabaseEvent(DatabaseEvent eDbEvent)
{
    return new QDatabaseEvent( eDbEvent );
}

void QDatabaseEvent::SetConnectName( QString& strName )
{
    strConnectName = strName;
}

QString& QDatabaseEvent::GetConnectName( )
{
    return strConnectName;
}

void QDatabaseEvent::SetParamHash( ParkSolution::QStringHash& hashParm )
{
   hashDbParam = hashParm;
}

ParkSolution::QStringHash& QDatabaseEvent::GetParamHash( )
{
    return hashDbParam;
}

void QDatabaseEvent::SetPlate( QString& strPlate )
{
    strQueryPlate = strPlate;
}

QString& QDatabaseEvent::GetPlate( )
{
    return strQueryPlate;
}

void QDatabaseEvent::SetQueryModel( QSqlQueryModel* pModel )
{
   pQueryModel = pModel;
}

QSqlQueryModel* QDatabaseEvent::GetQueryModel( )
{
    return pQueryModel;
}

void QDatabaseEvent::SetParamList( QStringList& lstParams )
{
    lstSpParams = lstParams;
}

QStringList& QDatabaseEvent::GetParamList( )
{
    return lstSpParams;
}

void QDatabaseEvent::SetSubThreadId( int nThreadID )
{
    nSubThreadID = nThreadID;
}

int QDatabaseEvent::GetSubThreadId( )
{
    return nSubThreadID;
}
