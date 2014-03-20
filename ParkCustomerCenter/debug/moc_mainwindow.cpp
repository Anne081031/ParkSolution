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
    QByteArrayData data[21];
    char stringdata[298];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_MainWindow_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_MainWindow_t qt_meta_stringdata_MainWindow = {
    {
QT_MOC_LITERAL(0, 0, 10),
QT_MOC_LITERAL(1, 11, 15),
QT_MOC_LITERAL(2, 27, 0),
QT_MOC_LITERAL(3, 28, 33),
QT_MOC_LITERAL(4, 62, 6),
QT_MOC_LITERAL(5, 69, 23),
QT_MOC_LITERAL(6, 93, 12),
QT_MOC_LITERAL(7, 106, 11),
QT_MOC_LITERAL(8, 118, 15),
QT_MOC_LITERAL(9, 134, 8),
QT_MOC_LITERAL(10, 143, 11),
QT_MOC_LITERAL(11, 155, 7),
QT_MOC_LITERAL(12, 163, 9),
QT_MOC_LITERAL(13, 173, 6),
QT_MOC_LITERAL(14, 180, 14),
QT_MOC_LITERAL(15, 195, 7),
QT_MOC_LITERAL(16, 203, 6),
QT_MOC_LITERAL(17, 210, 17),
QT_MOC_LITERAL(18, 228, 15),
QT_MOC_LITERAL(19, 244, 28),
QT_MOC_LITERAL(20, 273, 23)
    },
    "MainWindow\0HandleActivated\0\0"
    "QSystemTrayIcon::ActivationReason\0"
    "reason\0OnImageLabelDoubleClick\0"
    "QMouseEvent*\0nImageIndex\0HandlePlateData\0"
    "strPlate\0strDateTime\0byImage\0HandleLog\0"
    "strMsg\0HandleSpResult\0nSpType\0byData\0"
    "HandleSpResultset\0pQSqlQueryModel\0"
    "on_actCustomerInfo_triggered\0"
    "on_actionExit_triggered\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MainWindow[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   54,    2, 0x08,
       5,    2,   57,    2, 0x08,
       8,    3,   62,    2, 0x08,
      12,    1,   69,    2, 0x08,
      14,    2,   72,    2, 0x08,
      17,    2,   77,    2, 0x08,
      19,    0,   82,    2, 0x08,
      20,    0,   83,    2, 0x08,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 6, QMetaType::Int,    2,    7,
    QMetaType::Void, QMetaType::QString, QMetaType::QString, QMetaType::QByteArray,    9,   10,   11,
    QMetaType::Void, QMetaType::QString,   13,
    QMetaType::Void, QMetaType::Int, QMetaType::QByteArray,   15,   16,
    QMetaType::Void, QMetaType::Int, QMetaType::QObjectStar,   15,   18,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MainWindow *_t = static_cast<MainWindow *>(_o);
        switch (_id) {
        case 0: _t->HandleActivated((*reinterpret_cast< QSystemTrayIcon::ActivationReason(*)>(_a[1]))); break;
        case 1: _t->OnImageLabelDoubleClick((*reinterpret_cast< QMouseEvent*(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 2: _t->HandlePlateData((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2])),(*reinterpret_cast< QByteArray(*)>(_a[3]))); break;
        case 3: _t->HandleLog((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 4: _t->HandleSpResult((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QByteArray(*)>(_a[2]))); break;
        case 5: _t->HandleSpResultset((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QObject*(*)>(_a[2]))); break;
        case 6: _t->on_actCustomerInfo_triggered(); break;
        case 7: _t->on_actionExit_triggered(); break;
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
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 8;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
