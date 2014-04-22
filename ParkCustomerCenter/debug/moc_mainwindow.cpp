/****************************************************************************
** Meta object code from reading C++ file 'mainwindow.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.2.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../mainwindow.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'mainwindow.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.2.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_MainWindow_t {
    QByteArrayData data[31];
    char stringdata[460];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_MainWindow_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_MainWindow_t qt_meta_stringdata_MainWindow = {
    {
QT_MOC_LITERAL(0, 0, 10),
QT_MOC_LITERAL(1, 11, 17),
QT_MOC_LITERAL(2, 29, 0),
QT_MOC_LITERAL(3, 30, 9),
QT_MOC_LITERAL(4, 40, 15),
QT_MOC_LITERAL(5, 56, 33),
QT_MOC_LITERAL(6, 90, 6),
QT_MOC_LITERAL(7, 97, 20),
QT_MOC_LITERAL(8, 118, 21),
QT_MOC_LITERAL(9, 140, 8),
QT_MOC_LITERAL(10, 149, 14),
QT_MOC_LITERAL(11, 164, 6),
QT_MOC_LITERAL(12, 171, 6),
QT_MOC_LITERAL(13, 178, 18),
QT_MOC_LITERAL(14, 197, 23),
QT_MOC_LITERAL(15, 221, 12),
QT_MOC_LITERAL(16, 234, 11),
QT_MOC_LITERAL(17, 246, 15),
QT_MOC_LITERAL(18, 262, 8),
QT_MOC_LITERAL(19, 271, 11),
QT_MOC_LITERAL(20, 283, 7),
QT_MOC_LITERAL(21, 291, 9),
QT_MOC_LITERAL(22, 301, 6),
QT_MOC_LITERAL(23, 308, 14),
QT_MOC_LITERAL(24, 323, 7),
QT_MOC_LITERAL(25, 331, 6),
QT_MOC_LITERAL(26, 338, 17),
QT_MOC_LITERAL(27, 356, 15),
QT_MOC_LITERAL(28, 372, 28),
QT_MOC_LITERAL(29, 401, 23),
QT_MOC_LITERAL(30, 425, 33)
    },
    "MainWindow\0HandleReportQuery\0\0lstParams\0"
    "HandleActivated\0QSystemTrayIcon::ActivationReason\0"
    "reason\0HandleMessageClicked\0"
    "HandleShowHoverWindow\0bVisible\0"
    "HandleBKResize\0nIndex\0bkSize\0"
    "HandleInfoBKResize\0OnImageLabelDoubleClick\0"
    "QMouseEvent*\0nImageIndex\0HandlePlateData\0"
    "strPlate\0strDateTime\0byImage\0HandleLog\0"
    "strMsg\0HandleSpResult\0nSpType\0byData\0"
    "HandleSpResultset\0pQSqlQueryModel\0"
    "on_actCustomerInfo_triggered\0"
    "on_actionExit_triggered\0"
    "on_actVehicleStatistics_triggered\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MainWindow[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      14,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   84,    2, 0x08,
       4,    1,   87,    2, 0x08,
       7,    0,   90,    2, 0x08,
       8,    1,   91,    2, 0x08,
      10,    2,   94,    2, 0x08,
      13,    2,   99,    2, 0x08,
      14,    2,  104,    2, 0x08,
      17,    3,  109,    2, 0x08,
      21,    1,  116,    2, 0x08,
      23,    2,  119,    2, 0x08,
      26,    2,  124,    2, 0x08,
      28,    0,  129,    2, 0x08,
      29,    0,  130,    2, 0x08,
      30,    0,  131,    2, 0x08,

 // slots: parameters
    QMetaType::Void, QMetaType::QStringList,    3,
    QMetaType::Void, 0x80000000 | 5,    6,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,    9,
    QMetaType::Void, QMetaType::Int, QMetaType::QSize,   11,   12,
    QMetaType::Void, QMetaType::Int, QMetaType::QSize,   11,   12,
    QMetaType::Void, 0x80000000 | 15, QMetaType::Int,    2,   16,
    QMetaType::Void, QMetaType::QString, QMetaType::QString, QMetaType::QByteArray,   18,   19,   20,
    QMetaType::Void, QMetaType::QString,   22,
    QMetaType::Void, QMetaType::Int, QMetaType::QByteArray,   24,   25,
    QMetaType::Void, QMetaType::Int, QMetaType::QObjectStar,   24,   27,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MainWindow *_t = static_cast<MainWindow *>(_o);
        switch (_id) {
        case 0: _t->HandleReportQuery((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        case 1: _t->HandleActivated((*reinterpret_cast< QSystemTrayIcon::ActivationReason(*)>(_a[1]))); break;
        case 2: _t->HandleMessageClicked(); break;
        case 3: _t->HandleShowHoverWindow((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->HandleBKResize((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QSize(*)>(_a[2]))); break;
        case 5: _t->HandleInfoBKResize((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QSize(*)>(_a[2]))); break;
        case 6: _t->OnImageLabelDoubleClick((*reinterpret_cast< QMouseEvent*(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 7: _t->HandlePlateData((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2])),(*reinterpret_cast< QByteArray(*)>(_a[3]))); break;
        case 8: _t->HandleLog((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 9: _t->HandleSpResult((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QByteArray(*)>(_a[2]))); break;
        case 10: _t->HandleSpResultset((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QObject*(*)>(_a[2]))); break;
        case 11: _t->on_actCustomerInfo_triggered(); break;
        case 12: _t->on_actionExit_triggered(); break;
        case 13: _t->on_actVehicleStatistics_triggered(); break;
        default: ;
        }
    }
}

const QMetaObject MainWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_MainWindow.data,
      qt_meta_data_MainWindow,  qt_static_metacall, 0, 0}
};


const QMetaObject *MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_MainWindow.stringdata))
        return static_cast<void*>(const_cast< MainWindow*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 14)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 14;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 14)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 14;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
