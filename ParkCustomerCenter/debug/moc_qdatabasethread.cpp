/****************************************************************************
** Meta object code from reading C++ file 'qdatabasethread.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.2.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../qdatabasethread.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'qdatabasethread.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.2.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QDatabaseThread_t {
    QByteArrayData data[13];
    char stringdata[127];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_QDatabaseThread_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_QDatabaseThread_t qt_meta_stringdata_QDatabaseThread = {
    {
QT_MOC_LITERAL(0, 0, 15),
QT_MOC_LITERAL(1, 16, 3),
QT_MOC_LITERAL(2, 20, 0),
QT_MOC_LITERAL(3, 21, 6),
QT_MOC_LITERAL(4, 28, 8),
QT_MOC_LITERAL(5, 37, 7),
QT_MOC_LITERAL(6, 45, 6),
QT_MOC_LITERAL(7, 52, 11),
QT_MOC_LITERAL(8, 64, 11),
QT_MOC_LITERAL(9, 76, 9),
QT_MOC_LITERAL(10, 86, 6),
QT_MOC_LITERAL(11, 93, 14),
QT_MOC_LITERAL(12, 108, 17)
    },
    "QDatabaseThread\0Log\0\0strMsg\0SpResult\0"
    "nSpType\0byData\0SpResultset\0pQueryModel\0"
    "HandleLog\0strLog\0HandleSpResult\0"
    "HandleSpResultset\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QDatabaseThread[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   44,    2, 0x06,
       4,    2,   47,    2, 0x06,
       7,    2,   52,    2, 0x06,

 // slots: name, argc, parameters, tag, flags
       9,    1,   57,    2, 0x08,
      11,    2,   60,    2, 0x08,
      12,    2,   65,    2, 0x08,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::Int, QMetaType::QByteArray,    5,    6,
    QMetaType::Void, QMetaType::Int, QMetaType::QObjectStar,    5,    8,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,   10,
    QMetaType::Void, QMetaType::Int, QMetaType::QByteArray,    5,    6,
    QMetaType::Void, QMetaType::Int, QMetaType::QObjectStar,    5,    8,

       0        // eod
};

void QDatabaseThread::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QDatabaseThread *_t = static_cast<QDatabaseThread *>(_o);
        switch (_id) {
        case 0: _t->Log((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->SpResult((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QByteArray(*)>(_a[2]))); break;
        case 2: _t->SpResultset((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QObject*(*)>(_a[2]))); break;
        case 3: _t->HandleLog((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 4: _t->HandleSpResult((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QByteArray(*)>(_a[2]))); break;
        case 5: _t->HandleSpResultset((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QObject*(*)>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (QDatabaseThread::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QDatabaseThread::Log)) {
                *result = 0;
            }
        }
        {
            typedef void (QDatabaseThread::*_t)(int , QByteArray );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QDatabaseThread::SpResult)) {
                *result = 1;
            }
        }
        {
            typedef void (QDatabaseThread::*_t)(int , QObject * );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QDatabaseThread::SpResultset)) {
                *result = 2;
            }
        }
    }
}

const QMetaObject QDatabaseThread::staticMetaObject = {
    { &QThread::staticMetaObject, qt_meta_stringdata_QDatabaseThread.data,
      qt_meta_data_QDatabaseThread,  qt_static_metacall, 0, 0}
};


const QMetaObject *QDatabaseThread::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QDatabaseThread::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_QDatabaseThread.stringdata))
        return static_cast<void*>(const_cast< QDatabaseThread*>(this));
    return QThread::qt_metacast(_clname);
}

int QDatabaseThread::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void QDatabaseThread::Log(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void QDatabaseThread::SpResult(int _t1, QByteArray _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void QDatabaseThread::SpResultset(int _t1, QObject * _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_END_MOC_NAMESPACE
