#ifndef COMMONTYPEDEF_H
#define COMMONTYPEDEF_H
#include <QtCore>
#include <QtWidgets/QTableWidget>

namespace ParkSolution {
    typedef QHash< QString, QString > QStringHash;
    typedef QHash< QString, QWidget* >  QStringWidgetHash;
}
#endif // COMMONTYPEDEF_H
