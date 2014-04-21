#ifndef QSERIALWRITERTHREAD_H
#define QSERIALWRITERTHREAD_H

#include <QThread>
#include "SerialPortModule_global.h"

class SERIALPORTMODULESHARED_EXPORT QSerialWriterThread : public QThread
{
    Q_OBJECT
public:
    explicit QSerialWriterThread(QObject *parent = 0);

signals:

public slots:

};

#endif // QSERIALWRITERTHREAD_H
