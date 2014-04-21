#include "qserializeevent.h"

QSerializeEvent::QSerializeEvent( SerializeEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QSerializeEvent* QSerializeEvent::CreateSerializeEvent( SerializeEvent eEvent )
{
    return new QSerializeEvent( eEvent );
}

void QSerializeEvent::SetPlateValue( const QString& strPlate )
{
    strPlateValue = strPlate;
}

QString& QSerializeEvent::GetPlateValue( )
{
    return strPlateValue;
}

void QSerializeEvent::SetDateTimeValue( const QString& strDateTime )
{
    strDateTimeValue = strDateTime;
}

QString& QSerializeEvent::GetDateTimeValue( )
{
    return strDateTimeValue;
}

void QSerializeEvent::SetFileDataValue( const QByteArray& byFileData )
{
    byFileDataValue = byFileData;
}

QByteArray& QSerializeEvent::GetFileDataValue( )
{
    return byFileDataValue;
}

void QSerializeEvent::SetSuccessFlag( bool bSuccess )
{
    bOperateSuccess = bSuccess;
}

bool QSerializeEvent::GetSuccessFlag( )
{
    return bOperateSuccess;
}

void QSerializeEvent::SetHashUUID( const QString& strUUID )
{
    strHashUUID = strUUID;
}

QString& QSerializeEvent::GetHashUUID( )
{
    return strHashUUID;
}
