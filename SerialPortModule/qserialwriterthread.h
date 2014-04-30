#ifndef QSERIALWRITERTHREAD_H
#define QSERIALWRITERTHREAD_H

#include "SerialPortModule_global.h"
#include "../CommonModule/qbasethread.h"
#include "../ConfigModule/qconfigurator.h"
#include "qserialwriterevent.h"
#include <QSerialPort>

class SERIALPORTMODULESHARED_EXPORT QSerialWriterThread : public QBaseThread
{
    Q_OBJECT
public:
    static QSerialWriterThread* CreateInstance( QObject* pParent = NULL );
    void PostWriteSerialDataEvent( const QByteArray& bySerialData );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QSerialWriterThread(QObject *parent = 0);

    void ProcessWriteSerialDataEvent( QSerialWriterEvent* pEvent );

private:
    static QSerialWriterThread* pThreadInstance;
    QConfigurator* pConfigurator;
    QSerialPort* pSerialPort;
    int nLoopWriteCount;
    int nWriteSleep;

signals:

public slots:

};

#endif // QSERIALWRITERTHREAD_H
