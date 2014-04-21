#ifndef QSERIALIZEEVENT_H
#define QSERIALIZEEVENT_H

#include <QEvent>
#include <QtCore>

class QSerializeEvent : public QEvent
{
public:
    typedef enum __SerializeEvent {
        SetPlateData = User,
        GetPlateData
    } SerializeEvent;

    static QSerializeEvent* CreateSerializeEvent( SerializeEvent eEvent );

    void SetPlateValue( const QString& strPlate );
    QString& GetPlateValue( );

    void SetDateTimeValue( const QString& strDateTime );
    QString& GetDateTimeValue( );

    void SetFileDataValue( const QByteArray& byFileData );
    QByteArray& GetFileDataValue( );

    void SetSuccessFlag( bool bSuccess );
    bool GetSuccessFlag( );

    void SetHashUUID( const QString& strUUID );
    QString& GetHashUUID( );

private:
    QSerializeEvent( SerializeEvent eEvent );

private:
    QString strPlateValue;
    QString strDateTimeValue;
    QByteArray byFileDataValue;
    bool bOperateSuccess;
    QString strHashUUID;
};

#endif // QSERIALIZEEVENT_H
