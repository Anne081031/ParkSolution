#ifndef QPLATEEVENT_H
#define QPLATEEVENT_H

#include <QEvent>

class QPlateEvent : public QEvent
{
public:
    typedef enum __PlateEvent {
        PlateResultData = QEvent::User,
    } PlateEvent;

    static QPlateEvent* CreatePlateEvent( PlateEvent ePlateEvent );

    void SetPlateResultData( QByteArray& byData );
    QByteArray& GetPlateResultData( );

private:
    QPlateEvent( PlateEvent eEvent);
    QByteArray byPlateResult;
};

#endif // QPLATEEVENT_H
