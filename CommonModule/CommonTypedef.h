#ifndef COMMONTYPEDEF_H
#define COMMONTYPEDEF_H
#include <QtCore>
#include <QtWidgets/QTableWidget>

namespace ParkSolution {
    typedef QHash< QString, QString > QStringHash;
    typedef QHash< QString, QWidget* >  QStringWidgetHash;
    typedef QHash< int, QObject* > QIntObjectHash;
}
#endif // COMMONTYPEDEF_H
