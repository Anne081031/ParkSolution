#include "qjsondata.h"

QJsonData::QJsonData(QObject *parent) :
    QObject(parent)
{
    pTextCodec = QCommonFunction::GetTextCodec( );
}

void QJsonData::AppendJson( QByteArray &byJson, QString& strPartJson, const QByteArray& byPartJson )
{
    byJson.append( pTextCodec->fromUnicode( strPartJson ) );
    byJson.append( byPartJson );
}

void QJsonData::AppendJson( QByteArray &byJson, QString& strPartJson )
{
    byJson.append( pTextCodec->fromUnicode( strPartJson ) );
}

void QJsonData::GetDataMemberName( const char *pEnumName, int nMember, QString &strName )
{
    if ( NULL == pEnumName ) {
        return;
    }

    const QMetaObject* pMetaObject = metaObject( );
    int nIndex = pMetaObject->indexOfEnumerator( pEnumName );
    if ( -1 == nIndex ) {
        return;
    }

    QMetaEnum metaEnum = metaObject( )->enumerator( nIndex );
    strName = metaEnum.key( nMember );
}

void QJsonData::GetJsonExternalName( JsonExternalMember eMember, QString& strName )
{
    GetDataMemberName( "JsonExternalMember",  ( int ) eMember, strName );
}

void QJsonData::GetCommonHeadName( CommonHeadMember eMember, QString& strName )
{
    GetDataMemberName( "CommonHeadMember",  ( int ) eMember, strName );
}

void QJsonData::GetVehicleAuxHeadMemberName( VehicleAuxHeadMember eMember, QString &strName )
{
    GetDataMemberName( "VehicleAuxHeadMember",  ( int ) eMember, strName );
}

void QJsonData::GetVehicleBodyMemberName( VehicleBodyMember eMember, QString &strName )
{
    GetDataMemberName( "VehicleBodyMember",  ( int ) eMember, strName );
}

void QJsonData::GetJsonData( QByteArray &byJson,
                             const QByteArray& byCommonHead,
                             const QByteArray& byAuxHead,
                             const QByteArray& byBody )
{
/*
 * {
    "CommonHead":{"DataType":0}
    "AuxHead":{null}
    "Body":{"Plate":"川A12345","Time":"2014-04-23 12:12:45","Image":"base64"}
}
*/
    QString strKeyName;

    GetJsonExternalName( CommonHead, strKeyName );
    QString strPart = QString( "{\"%1\":" ).arg( strKeyName );
    AppendJson( byJson, strPart,  byCommonHead );

    GetJsonExternalName( AuxHead, strKeyName );
    strPart = QString( ",\"%1\":" ).arg( strKeyName );
    AppendJson( byJson, strPart,  byAuxHead );

    GetJsonExternalName( Body, strKeyName );
    strPart = QString( ",\"%1\":" ).arg( strKeyName );
    AppendJson( byJson, strPart,  byBody );
}

void QJsonData::CreateJsonObject( QByteArray &byJson, int nMemberStart, int nMemberEnd, ObjectType objType, QDataHash &dataHash )
{
    QString strValue;
    QString strPart = "{";
    AppendJson( byJson, strPart );

    QString strKeyName;
    int nStartIndex = nMemberStart + 1;

    for ( int nIndex = nStartIndex; nIndex < nMemberEnd; nIndex++ ) {
        strValue = dataHash.value( nIndex );

        switch ( objType ) {
        case ObjectCommonHead :
            GetCommonHeadName( ( CommonHeadMember ) nIndex, strKeyName );
            break;

        case ObjectVehicleAuxHead :
            GetVehicleAuxHeadMemberName( ( VehicleAuxHeadMember ) nIndex, strKeyName );
            break;

        case ObjectVehicleBody :
            GetVehicleBodyMemberName( ( VehicleBodyMember ) nIndex, strKeyName );
            break;
        }

        strPart = QString( "%1\"%2\":\"%3\"" ).arg( nIndex != nStartIndex ? "," : "",
                                                    strKeyName, strValue );
        AppendJson( byJson, strPart );
    }

    if ( 0 == dataHash.size( ) ) {
        strPart = "null";
        AppendJson( byJson, strPart );
    }

    strPart = "}";
    AppendJson( byJson, strPart );
}

void QJsonData::CreateCommonHead( QByteArray& byCommonHeadJson, QDataHash& dataHash )
{
    CreateJsonObject( byCommonHeadJson, CommonStart, CommonEnd, ObjectCommonHead, dataHash );
}

void QJsonData::CreateAuxHead( QByteArray& byAuxHeadJson, DataType eType, QDataHash& dataHash )
{
    switch ( eType ) {
    case VehicleAccess :
        CreateJsonObject( byAuxHeadJson, VehicleAuxStart, VehicleAuxEnd, ObjectVehicleAuxHead, dataHash );
        break;
    }
}

void QJsonData::CreateBody( QByteArray& byBodyJson, DataType eType, QDataHash& dataHash )
{
    switch ( eType ) {
    case VehicleAccess :
        CreateJsonObject( byBodyJson, VehicleStart, VehicleEnd, ObjectVehicleBody, dataHash );
        break;
    }
}
