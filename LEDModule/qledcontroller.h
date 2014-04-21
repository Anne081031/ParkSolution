#ifndef QLEDCONTROLLER_H
#define QLEDCONTROLLER_H

#include <QThread>
#include "LEDModule_global.h"

class LEDMODULESHARED_EXPORT QLedController : public QThread
{
    Q_OBJECT
public:
    explicit QLedController(QObject *parent = 0);

signals:

public slots:

};

#endif // QLEDCONTROLLER_H
