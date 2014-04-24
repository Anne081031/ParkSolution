#include "qjsondata.h"

QJsonData::QJsonData(QObject *parent) :
    QObject(parent)
{
    pTextCodec = QCommonFunction::GetTextCodec( );
}

void QJsonData::AppendJson( QByteArray &byJson, QString& strPartJson, const QByteArray& byPartJson )
{
    //byJson.append( pTextCodec->fromUnicode( strPartJson ) );
    byJson.append( strPartJson.toUtf8( ) );
    byJson.append( byPartJson );
}

void QJsonData::AppendJson( QByteArray &byJson, QString& strPartJson )
{
    //byJson.append( pTextCodec->fromUnicode( strPartJson ) );
    byJson.append( strPartJson.toUtf8( ) );
}

void QJsonData::AppendJson( QByteArray &byJson, QByteArray &byJsonData )
{
    byJson.append( byJsonData );
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

void QJsonData::ParseJsonObject( const QJsonObject& jsonObj, int nMemberStart, int nMemberEnd, ObjectType objType,  QDataHash& dataHash  )
{
    if ( jsonObj.isEmpty( ) ) {
        return;
    }

    QString strValue;
    QJsonValue jsonVal =  jsonObj.value( "" );
    if ( !jsonVal.isNull( ) && jsonVal.isString( ) ) {
        strValue = jsonVal.toString( );
    }

    QString strKeyName;
    int nStartIndex = nMemberStart + 1;

    for ( int nIndex = nStartIndex; nIndex < nMemberEnd; nIndex++ ) {
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

        strValue = "";
        jsonVal =  jsonObj.value( strKeyName );

        if ( !jsonVal.isNull( ) && jsonVal.isString( ) ) {
            strValue = jsonVal.toString( );
        }

        dataHash.insert( nIndex, strValue );
    }
}

void QJsonData::ParseCommonHead( const QJsonObject&  jsonObj, QDataHash& dataHash )
{
    ParseJsonObject( jsonObj, CommonStart, CommonEnd, ObjectCommonHead, dataHash );
}

void QJsonData::ParseAuxHead( const QJsonObject&  jsonObj, DataType eType, QDataHash& dataHash )
{
    switch ( eType ) {
    case VehicleAccess :
        ParseJsonObject( jsonObj, VehicleAuxStart, VehicleAuxEnd, ObjectVehicleAuxHead, dataHash );
        break;

    case InvalidType :
        break;
    }
}

void QJsonData::ParseBody( const QJsonObject&  jsonObj, DataType eType, QDataHash& dataHash )
{
    switch ( eType ) {
    case VehicleAccess :
        ParseJsonObject( jsonObj, VehicleStart, VehicleEnd, ObjectVehicleBody, dataHash );
        break;

    case InvalidType :
        break;
    }
}

void QJsonData::ParseJsonData( const QByteArray& byJson, QDataHash& dataHashCommon,
                    QDataHash& dataHashAux, QDataHash& dataHashBody )
{
    QJsonParseError jsonParseError;
    QJsonDocument jsonDoc = QJsonDocument::fromJson( byJson, &jsonParseError );

    if ( QJsonParseError::NoError != jsonParseError.error ) {
        qDebug( ) << jsonParseError.errorString( ) << endl;
        return;
    }

    if ( jsonDoc.isEmpty( ) || jsonDoc.isNull( ) || !jsonDoc.isObject( ) ) {
        return;
    }

    QJsonObject jsonObj = jsonDoc.object( );
    if ( jsonObj.isEmpty( ) ) {
        return;
    }

    DataType eType = InvalidType;

    ParseExternalJson( jsonObj, eType, CommonHead, dataHashCommon );

    eType = ( DataType ) dataHashCommon.value( MessageType ).toInt( );
    ParseExternalJson( jsonObj, eType, AuxHead, dataHashAux );
    ParseExternalJson( jsonObj, eType, Body, dataHashBody );
}

void QJsonData::ParseExternalJson( const QJsonObject &jsonObj,DataType eType,
                                   JsonExternalMember eMember, QDataHash &dataHash )
{
    QString strName;
    GetJsonExternalName( eMember, strName );
    QJsonValue jsonVal = jsonObj.value( strName );

    if ( jsonVal.isNull( ) || !jsonVal.isObject( ) ) {
        return;
    }

    QJsonObject jsonTmpObj = jsonVal.toObject( );

    switch ( eMember ) {
    case CommonHead :
        ParseCommonHead( jsonTmpObj, dataHash );
        break;

    case AuxHead :
        ParseAuxHead( jsonTmpObj, eType, dataHash );
        break;

    case Body :
        ParseBody( jsonTmpObj, eType, dataHash );
        break;

    case JsonExternalStart :
    case JsonExternalEnd:
        break;
    }
}

void QJsonData::GetJsonData( QByteArray &byJson,  DataType eType, const QDataHash& dataHashCommon,
                                  const QDataHash& dataHashAux, const QDataHash& dataHashBody )
{
/*
 * {
    "CommonHead":{"DataType":0}
    "AuxHead":{null}
    "Body":{"Plate":"川A12345","Time":"2014-04-23 12:12:45","Image":"base64"}
}
*/
    QString strPart = "{";
    AppendJson( byJson, strPart );

    QString strKeyName;
    GetJsonExternalName( CommonHead, strKeyName );
    strPart = QString( "\"%1\":" ).arg( strKeyName );

    QByteArray byCommonHead;
    CreateCommonHead( byCommonHead, dataHashCommon );
    AppendJson( byJson, strPart,  byCommonHead );

    GetJsonExternalName( AuxHead, strKeyName );
    strPart = QString( ",\"%1\":" ).arg( strKeyName );

    QByteArray byAuxHead;
    CreateAuxHead( byAuxHead, eType, dataHashAux );
    AppendJson( byJson, strPart,  byAuxHead );

    GetJsonExternalName( Body, strKeyName );
    strPart = QString( ",\"%1\":" ).arg( strKeyName );

    QByteArray byBody;
    CreateBody( byBody, eType, dataHashBody );
    AppendJson( byJson, strPart,  byBody );

    strPart = "}";
    AppendJson( byJson, strPart );
}

void QJsonData::CreateJsonObject( QByteArray &byJson, int nMemberStart, int nMemberEnd, ObjectType objType, const QDataHash &dataHash )
{
    QString strValue;
    QString strPart;
    QByteArray byJsonData;
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
        AppendJson( byJsonData, strPart );
    }

    if ( 0 == dataHash.size( ) ) {
        strPart = "null";
        AppendJson( byJson, strPart );
    } else {
        strPart = "{";
        AppendJson( byJson, strPart );

        AppendJson( byJson, byJsonData );

        strPart = "}";
        AppendJson( byJson, strPart );
    }
}

void QJsonData::CreateCommonHead( QByteArray& byCommonHeadJson, const QDataHash& dataHash )
{
    CreateJsonObject( byCommonHeadJson, CommonStart, CommonEnd, ObjectCommonHead, dataHash );
}

void QJsonData::CreateAuxHead( QByteArray& byAuxHeadJson, DataType eType, const QDataHash& dataHash )
{
    switch ( eType ) {
    case VehicleAccess :
        CreateJsonObject( byAuxHeadJson, VehicleAuxStart, VehicleAuxEnd, ObjectVehicleAuxHead, dataHash );
        break;

    case InvalidType :
        break;
    }
}

void QJsonData::CreateBody( QByteArray& byBodyJson, DataType eType, const QDataHash& dataHash )
{
    switch ( eType ) {
    case VehicleAccess :
        CreateJsonObject( byBodyJson, VehicleStart, VehicleEnd, ObjectVehicleBody, dataHash );
        break;

    case InvalidType :
        break;
    }
}
