#ifndef QSERIALPARSEREVENT_H
#define QSERIALPARSEREVENT_H

#include <QEvent>

class QSerialParserEvent : public QEvent
{
public:
    typedef enum __SerialParserEvent {
        ParseProtocolData = User
    } SerialParserEvent;

    typedef enum __ProtocolDataType {
        ProtocolFuture = 0,
        ProtocolCount,
        ProtocolInvalid
    } ProtocolDataType;

    static QSerialParserEvent* CreateSerialEvent( SerialParserEvent eEvent );

    void SetSerialData( const QByteArray& byData );
    const QByteArray& GetSerialData( ) const;

    void SetProtocolType( const ProtocolDataType protocolType );
    const ProtocolDataType GetProtocolType( ) const ;

private:
    QSerialParserEvent( SerialParserEvent  eEvent );

private:
    QByteArray bySerialData;
    ProtocolDataType eProtocolType;
};

#endif // QSERIALPARSEREVENT_H
