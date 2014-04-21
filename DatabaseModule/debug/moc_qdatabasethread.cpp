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
    QByteArrayData data[11];
    char stringdata[116];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_QDatabaseThread_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_QDatabaseThread_t qt_meta_stringdata_QDatabaseThread = {
    {
QT_MOC_LITERAL(0, 0, 15),
QT_MOC_LITERAL(1, 16, 8),
QT_MOC_LITERAL(2, 25, 0),
QT_MOC_LITERAL(3, 26, 7),
QT_MOC_LITERAL(4, 34, 6),
QT_MOC_LITERAL(5, 41, 11),
QT_MOC_LITERAL(6, 53, 11),
QT_MOC_LITERAL(7, 65, 9),
QT_MOC_LITERAL(8, 75, 6),
QT_MOC_LITERAL(9, 82, 14),
QT_MOC_LITERAL(10, 97, 17)
    },
    "QDatabaseThread\0SpResult\0\0nSpType\0"
    "byData\0SpResultset\0pQueryModel\0HandleLog\0"
    "strLog\0HandleSpResult\0HandleSpResultset\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QDatabaseThread[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    2,   39,    2, 0x06,
       5,    2,   44,    2, 0x06,

 // slots: name, argc, parameters, tag, flags
       7,    1,   49,    2, 0x08,
       9,    2,   52,    2, 0x08,
      10,    2,   57,    2, 0x08,

 // signals: parameters
    QMetaType::Void, QMetaType::Int, QMetaType::QByteArray,    3,    4,
    QMetaType::Void, QMetaType::Int, QMetaType::QObjectStar,    3,    6,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    8,
    QMetaType::Void, QMetaType::Int, QMetaType::QByteArray,    3,    4,
    QMetaType::Void, QMetaType::Int, QMetaType::QObjectStar,    3,    6,

       0        // eod
};

void QDatabaseThread::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QDatabaseThread *_t = static_cast<QDatabaseThread *>(_o);
        switch (_id) {
        case 0: _t->SpResult((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QByteArray(*)>(_a[2]))); break;
        case 1: _t->SpResultset((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QObject*(*)>(_a[2]))); break;
        case 2: _t->HandleLog((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 3: _t->HandleSpResult((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QByteArray(*)>(_a[2]))); break;
        case 4: _t->HandleSpResultset((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QObject*(*)>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (QDatabaseThread::*_t)(int , QByteArray );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QDatabaseThread::SpResult)) {
                *result = 0;
            }
        }
        {
            typedef void (QDatabaseThread::*_t)(int , QObject * );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QDatabaseThread::SpResultset)) {
                *result = 1;
            }
        }
    }
}

const QMetaObject QDatabaseThread::staticMetaObject = {
    { &QBaseThread::staticMetaObject, qt_meta_stringdata_QDatabaseThread.data,
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
    return QBaseThread::qt_metacast(_clname);
}

int QDatabaseThread::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QBaseThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}

// SIGNAL 0
void QDatabaseThread::SpResult(int _t1, QByteArray _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void QDatabaseThread::SpResultset(int _t1, QObject * _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_END_MOC_NAMESPACE
