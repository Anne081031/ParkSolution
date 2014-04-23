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
    void GetJsonData( QByteArray &byJson,
                      const QByteArray& byCommonHead,
                      const QByteArray& byAuxHead,
                      const QByteArray& byBody );
    void CreateCommonHead( QByteArray& byCommonHeadJson, QDataHash& dataHash );
    void CreateAuxHead( QByteArray& byAuxHeadJson, DataType eType, QDataHash& dataHash );
    void CreateBody( QByteArray& byBodyJson, DataType eType, QDataHash& dataHash );


private:
    inline void AppendJson( QByteArray& byJson, QString& strPartJson, const QByteArray& byPartJson );
    inline void AppendJson( QByteArray& byJson, QString& strPartJson );
    void CreateJsonObject( QByteArray& byJson, int nMemberStart, int nMemberEnd, ObjectType objType,  QDataHash& dataHash  );
    void GetDataMemberName( const char* pEnumName, int nMember, QString& strName );

    inline void GetJsonExternalName( JsonExternalMember eMember, QString& strName );
    inline void GetCommonHeadName( CommonHeadMember eMember, QString& strName );
    inline void GetVehicleAuxHeadMemberName( VehicleAuxHeadMember eMember, QString& strName );
    inline void GetVehicleBodyMemberName( VehicleBodyMember eMember, QString& strName );

private:
    QTextCodec* pTextCodec;

signals:

public slots:

};

#endif // QJSONDATA_H
