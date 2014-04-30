#ifndef QSERIALREADEREVENT_H
#define QSERIALREADEREVENT_H

#include <QEvent>

class QSerialReaderEvent : public QEvent
{
public:
    typedef enum __SerialReaderEvent {

    } SerialReaderEvent;

    static QSerialReaderEvent* CreateSerialEvent( SerialReaderEvent eEvent );

private:
    QSerialReaderEvent( SerialReaderEvent eEvent );
};

#endif // QSERIALREADEREVENT_H
