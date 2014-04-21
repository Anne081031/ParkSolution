#ifndef QSERIALREADERTHREAD_H
#define QSERIALREADERTHREAD_H

#include <QThread>
#include "SerialPortModule_global.h"

class SERIALPORTMODULESHARED_EXPORT QSerialReaderThread : public QThread
{
    Q_OBJECT
public:
    explicit QSerialReaderThread(QObject *parent = 0);

signals:

public slots:

};

#endif // QSERIALREADERTHREAD_H
