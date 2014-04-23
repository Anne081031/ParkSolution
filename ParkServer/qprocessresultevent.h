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

private:
    QProcessResultEvent( ProcessResultEvent eEvent );

private:
    QString strPlateValue;
    QString strDateTimeValue;
    int nImageChannel;
    bool bEnterValue;

    QByteArray byDbJson;
    int nSpType;
};

#endif // QPROCESSRESULTEVENT_H
