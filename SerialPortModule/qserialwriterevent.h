#ifndef QSERIALWRITEREVENT_H
#define QSERIALWRITEREVENT_H

#include <QEvent>

class QSerialWriterEvent : public QEvent
{
public:
    typedef enum __SerialWriterEvent {
        WriteSerialData = User
    } SerialWriterEvent;

    static QSerialWriterEvent* CreateSerialEvent( SerialWriterEvent eEvent );

    void SetSerialData( const QByteArray& byData );
    const QByteArray& GetSerialData( ) const;

private:
    QSerialWriterEvent( SerialWriterEvent eEvent );

private:
    QByteArray bySerialData;
};

#endif // QSERIALWRITEREVENT_H
