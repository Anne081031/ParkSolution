#ifndef QJSONDATA_H
#define QJSONDATA_H

#include <QObject>
#include <QtCore>
#include "commonmodule_global.h"
#include "qcommonfunction.h"

class COMMONMODULESHARED_EXPORT QJsonData : public QObject
{
    Q_OBJECT
    Q_ENUMS( JsonExternalMember )
    Q_ENUMS( CommonHeadMember )
    Q_ENUMS( VehicleAuxHeadMember )
    Q_ENUMS( VehicleBodyMember )

public:
    enum DataType {
        InvalidType,
        VehicleAccess //车辆进出相关的数据
    };

    enum ObjectType {
        ObjectCommonHead,
        ObjectVehicleAuxHead,
        ObjectVehicleBody
    };

    enum JsonExternalMember {
        JsonExternalStart ,
        CommonHead,
        AuxHead,
        Body,
        JsonExternalEnd
    };

    enum CommonHeadMember {
        CommonStart ,
        MessageType,
        CommonEnd
    };

    enum VehicleAuxHeadMember {
        VehicleAuxStart ,
        VehicleAuxEnd
    };

    enum VehicleBodyMember {
        VehicleStart ,
        VehiclePlate,
        VehicleTime,
        VehicleImage,
        VehicleEnd
    };

    typedef QHash< int, QString > QDataHash;

    explicit QJsonData(QObject *parent = 0);
    void GetJsonData( QByteArray &byJson, DataType eType, const QDataHash& dataHashCommon,
                                              const QDataHash& dataHashAux, const QDataHash& dataHashBody );
    void ParseJsonData( const QByteArray& byJson, QDataHash& dataHashCommon,
                        QDataHash& dataHashAux, QDataHash& dataHashBody );
private:
    inline void AppendJson( QByteArray& byJson, QString& strPartJson, const QByteArray& byPartJson );
    inline void AppendJson( QByteArray& byJson, QString& strPartJson );
    inline void AppendJson( QByteArray& byJson, QByteArray& byJsonData );

    inline void CreateCommonHead( QByteArray& byCommonHeadJson, const QDataHash& dataHash );
    inline void CreateAuxHead( QByteArray& byAuxHeadJson, DataType eType, const QDataHash& dataHash );
    inline void CreateBody( QByteArray& byBodyJson, DataType eType, const QDataHash& dataHash );

    void ParseJsonObject( const QJsonObject& jsonObj, int nMemberStart, int nMemberEnd, ObjectType objType,  QDataHash& dataHash  );
    void CreateJsonObject( QByteArray& byJson, int nMemberStart, int nMemberEnd, ObjectType objType,  const QDataHash& dataHash  );
    void GetDataMemberName( const char* pEnumName, int nMember, QString& strName );

    inline void GetJsonExternalName( JsonExternalMember eMember, QString& strName );
    inline void GetCommonHeadName( CommonHeadMember eMember, QString& strName );
    inline void GetVehicleAuxHeadMemberName( VehicleAuxHeadMember eMember, QString& strName );
    inline void GetVehicleBodyMemberName( VehicleBodyMember eMember, QString& strName );

    void ParseExternalJson( const QJsonObject& jsonObj, DataType eType, JsonExternalMember eMember, QDataHash& dataHash );
    void ParseCommonHead( const QJsonObject&  jsonObj, QDataHash& dataHash );
    void ParseAuxHead( const QJsonObject&  jsonObj, DataType eType, QDataHash& dataHash );
    void ParseBody( const QJsonObject&  jsonObj, DataType eType, QDataHash& dataHash );
private:
    QTextCodec* pTextCodec;

signals:

public slots:

};

#endif // QJSONDATA_H
