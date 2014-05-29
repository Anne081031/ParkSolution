#ifndef COMMONTYPEDEF_H
#define COMMONTYPEDEF_H
#include <QtCore>
#include <QtWidgets/QTableWidget>

namespace ParkSolution {
    typedef QHash< int, QString > QIntStringHash;
    typedef QHash< QString, QString > QStringHash;
    typedef QHash< QString, QWidget* >  QStringWidgetHash;
    typedef QHash< int, QObject* > QIntObjectHash;
    typedef QHash< QString, QByteArray > QStringByteArrayHash;
}
#endif // COMMONTYPEDEF_H
