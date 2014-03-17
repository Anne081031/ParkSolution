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
    QByteArrayData data[27];
    char stringdata[494];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_MainWindow_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_MainWindow_t qt_meta_stringdata_MainWindow = {
    {
QT_MOC_LITERAL(0, 0, 10),
QT_MOC_LITERAL(1, 11, 31),
QT_MOC_LITERAL(2, 43, 0),
QT_MOC_LITERAL(3, 44, 12),
QT_MOC_LITERAL(4, 57, 9),
QT_MOC_LITERAL(5, 67, 25),
QT_MOC_LITERAL(6, 93, 9),
QT_MOC_LITERAL(7, 103, 6),
QT_MOC_LITERAL(8, 110, 14),
QT_MOC_LITERAL(9, 125, 7),
QT_MOC_LITERAL(10, 133, 6),
QT_MOC_LITERAL(11, 140, 17),
QT_MOC_LITERAL(12, 158, 15),
QT_MOC_LITERAL(13, 174, 26),
QT_MOC_LITERAL(14, 201, 5),
QT_MOC_LITERAL(15, 207, 27),
QT_MOC_LITERAL(16, 235, 16),
QT_MOC_LITERAL(17, 252, 19),
QT_MOC_LITERAL(18, 272, 18),
QT_MOC_LITERAL(19, 291, 20),
QT_MOC_LITERAL(20, 312, 20),
QT_MOC_LITERAL(21, 333, 17),
QT_MOC_LITERAL(22, 351, 20),
QT_MOC_LITERAL(23, 372, 20),
QT_MOC_LITERAL(24, 393, 34),
QT_MOC_LITERAL(25, 428, 34),
QT_MOC_LITERAL(26, 463, 29)
    },
    "MainWindow\0HandleChangeCustomerVehicleData\0"
    "\0QStringList&\0lstParams\0"
    "HandleChangeServiceRecord\0HandleLog\0"
    "strMsg\0HandleSpResult\0nSpType\0byData\0"
    "HandleSpResultset\0pQSqlQueryModel\0"
    "HandleTabViewDoubleClicked\0index\0"
    "on_tabWidget_currentChanged\0"
    "HandleForeground\0on_btnQuery_clicked\0"
    "on_btnEdit_clicked\0on_btnExport_clicked\0"
    "on_btnImport_clicked\0on_btnNew_clicked\0"
    "on_btnIgnore_clicked\0on_btnDelete_clicked\0"
    "on_cbxIncoming_currentIndexChanged\0"
    "on_cbxUpdating_currentIndexChanged\0"
    "on_cbxAll_currentIndexChanged\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MainWindow[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      18,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,  104,    2, 0x08,
       5,    1,  107,    2, 0x08,
       6,    1,  110,    2, 0x08,
       8,    2,  113,    2, 0x08,
      11,    2,  118,    2, 0x08,
      13,    1,  123,    2, 0x08,
      15,    1,  126,    2, 0x08,
      16,    0,  129,    2, 0x08,
      17,    0,  130,    2, 0x08,
      18,    0,  131,    2, 0x08,
      19,    0,  132,    2, 0x08,
      20,    0,  133,    2, 0x08,
      21,    0,  134,    2, 0x08,
      22,    0,  135,    2, 0x08,
      23,    0,  136,    2, 0x08,
      24,    1,  137,    2, 0x08,
      25,    1,  140,    2, 0x08,
      26,    1,  143,    2, 0x08,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, QMetaType::QString,    7,
    QMetaType::Void, QMetaType::Int, QMetaType::QByteArray,    9,   10,
    QMetaType::Void, QMetaType::Int, QMetaType::QObjectStar,    9,   12,
    QMetaType::Void, QMetaType::QModelIndex,   14,
    QMetaType::Void, QMetaType::Int,   14,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   14,
    QMetaType::Void, QMetaType::Int,   14,
    QMetaType::Void, QMetaType::Int,   14,

       0        // eod
};

void MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MainWindow *_t = static_cast<MainWindow *>(_o);
        switch (_id) {
        case 0: _t->HandleChangeCustomerVehicleData((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        case 1: _t->HandleChangeServiceRecord((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        case 2: _t->HandleLog((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 3: _t->HandleSpResult((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QByteArray(*)>(_a[2]))); break;
        case 4: _t->HandleSpResultset((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QObject*(*)>(_a[2]))); break;
        case 5: _t->HandleTabViewDoubleClicked((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 6: _t->on_tabWidget_currentChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->HandleForeground(); break;
        case 8: _t->on_btnQuery_clicked(); break;
        case 9: _t->on_btnEdit_clicked(); break;
        case 10: _t->on_btnExport_clicked(); break;
        case 11: _t->on_btnImport_clicked(); break;
        case 12: _t->on_btnNew_clicked(); break;
        case 13: _t->on_btnIgnore_clicked(); break;
        case 14: _t->on_btnDelete_clicked(); break;
        case 15: _t->on_cbxIncoming_currentIndexChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 16: _t->on_cbxUpdating_currentIndexChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 17: _t->on_cbxAll_currentIndexChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
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
        if (_id < 18)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 18;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 18)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 18;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
