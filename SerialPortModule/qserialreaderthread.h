#ifndef QSERIALREADERTHREAD_H
#define QSERIALREADERTHREAD_H

#include "SerialPortModule_global.h"
#include "../CommonModule/qbasethread.h"
#include "../ConfigModule/qconfigurator.h"
#include "qserialreaderevent.h"
#include <QSerialPort>
#include "qserialparserthread.h"

class SERIALPORTMODULESHARED_EXPORT QSerialReaderThread : public QBaseThread
{
    Q_OBJECT
public:
    static QSerialReaderThread* CreateInstance( bool bStartParser = false, QObject* pParent = NULL );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QSerialReaderThread( bool bStartParser, QObject *parent = 0 );
    void OpenSerial( );

private:
    static QSerialReaderThread* pThreadInstance;
    QSerialPort* pSerialPort;
    QConfigurator* pConfigurator ;
    QSerialParserThread* pSerialParserThread;
    bool bStartParserThread;
    QSerialParserEvent::ProtocolDataType protocolType;

signals:
    void SerialData( int nProtocol, QByteArray byData );

private slots:
    void HandleReadyData( );

};

#endif // QSERIALREADERTHREAD_H
