#ifndef QSERIALPARSERTHREAD_H
#define QSERIALPARSERTHREAD_H

#include <QThread>

class QSerialParserThread : public QThread
{
    Q_OBJECT
public:
    explicit QSerialParserThread(QObject *parent = 0);

signals:

public slots:

};

#endif // QSERIALPARSERTHREAD_H
