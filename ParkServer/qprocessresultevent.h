#ifndef QPROCESSRESULTEVENT_H
#define QPROCESSRESULTEVENT_H

#include <QEvent>
#include <QtCore>

class QProcessResultEvent : public QEvent
{
public:
    typedef enum __ProcessResultEvent {
        DatabaseResult = User,
        PlateReslut,
        PlateImage
    } ProcessResultEvent;

    static QProcessResultEvent* CreateProcessResultEvent( ProcessResultEvent eEvent );

    void SetPlate( const QString& strPlate );
    QString& GetPlate( );

    void SetIP( QString& strIP );
    QString& GetIP( );

    void SetDateTime( const QString& strDateTime );
    QString& GetDateTime( );

    void SetEnterFlag( bool bEnter );
    bool GetEnterFlag( );

    void SetImageChannel( int nChannel );
    int GetImageChannel(  );

    void SetDbJson( const QByteArray& byJson );
    QByteArray& GetDbJson(  );

    void SetDbSpType( int nType );
    int GetDbSpType( );

    void SetIpcCamera( bool bIpc );
    bool GetIpcCamera( );

    void SetSpParams( const QStringList& lstParams );
    QStringList& GetSpParams( );

private:
    QProcessResultEvent( ProcessResultEvent eEvent );

private:
    QString strPlateValue;
    QString strDateTimeValue;
    QString strIpcIP;
    int nImageChannel;
    bool bEnterValue;
    bool bNetCamera;
    QStringList lstSpParams;

    QByteArray byDbJson;
    int nSpType;
};

#endif // QPROCESSRESULTEVENT_H
