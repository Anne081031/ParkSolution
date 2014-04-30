#ifndef QSERIALPARSERTHREAD_H
#define QSERIALPARSERTHREAD_H

#include "SerialPortModule_global.h"
#include "../CommonModule/qbasethread.h"
#include "../ConfigModule/qconfigurator.h"
#include "qserialparserevent.h"

class SERIALPORTMODULESHARED_EXPORT QSerialParserThread : public QBaseThread
{
    Q_OBJECT
public:
    static QSerialParserThread* CreateInstance( QObject* pParent = NULL );
    void PostParseProtocolDataEvent( const QSerialParserEvent::ProtocolDataType eType, const QByteArray& byData );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QSerialParserThread(QObject *parent = 0);

    inline void EmitProtocolData( const QSerialParserEvent::ProtocolDataType eType, QByteArray& byData );
    void ProcessParseProtocolDataEvent( QSerialParserEvent* pEvent );

    void ParseFutureProtocolData( const QSerialParserEvent::ProtocolDataType eType, QByteArray& byProtocolData );

private:
    static QSerialParserThread* pThreadInstance;
    QByteArray byAllProtocolData[ QSerialParserEvent::ProtocolCount ];

signals:
    void ProtocolData( int nProtocol, QByteArray byData );

public slots:

};

#endif // QSERIALPARSERTHREAD_H
