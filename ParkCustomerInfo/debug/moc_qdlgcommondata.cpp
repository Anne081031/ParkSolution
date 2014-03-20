/****************************************************************************
** Meta object code from reading C++ file 'qdlgcommondata.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.2.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../qdlgcommondata.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'qdlgcommondata.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.2.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QDlgCommonData_t {
    QByteArrayData data[14];
    char stringdata[228];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_QDlgCommonData_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_QDlgCommonData_t qt_meta_stringdata_QDlgCommonData = {
    {
QT_MOC_LITERAL(0, 0, 14),
QT_MOC_LITERAL(1, 15, 21),
QT_MOC_LITERAL(2, 37, 0),
QT_MOC_LITERAL(3, 38, 12),
QT_MOC_LITERAL(4, 51, 9),
QT_MOC_LITERAL(5, 61, 22),
QT_MOC_LITERAL(6, 84, 11),
QT_MOC_LITERAL(7, 96, 10),
QT_MOC_LITERAL(8, 107, 9),
QT_MOC_LITERAL(9, 117, 28),
QT_MOC_LITERAL(10, 146, 25),
QT_MOC_LITERAL(11, 172, 6),
QT_MOC_LITERAL(12, 179, 43),
QT_MOC_LITERAL(13, 223, 3)
    },
    "QDlgCommonData\0QueryCommonDataRecord\0"
    "\0QStringList&\0lstParams\0ChangeCommonDataRecord\0"
    "strDataType\0EditRecord\0AddRecord\0"
    "HandleChangeCommonDataRecord\0"
    "HandleCurrentIndexChanged\0nIndex\0"
    "on_tabCommonData_customContextMenuRequested\0"
    "pos\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QDlgCommonData[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   49,    2, 0x06,
       5,    2,   52,    2, 0x06,

 // slots: name, argc, parameters, tag, flags
       7,    0,   57,    2, 0x08,
       8,    0,   58,    2, 0x08,
       9,    2,   59,    2, 0x08,
      10,    1,   64,    2, 0x08,
      12,    1,   67,    2, 0x08,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, QMetaType::QString, 0x80000000 | 3,    6,    4,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString, 0x80000000 | 3,    6,    4,
    QMetaType::Void, QMetaType::Int,   11,
    QMetaType::Void, QMetaType::QPoint,   13,

       0        // eod
};

void QDlgCommonData::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QDlgCommonData *_t = static_cast<QDlgCommonData *>(_o);
        switch (_id) {
        case 0: _t->QueryCommonDataRecord((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        case 1: _t->ChangeCommonDataRecord((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QStringList(*)>(_a[2]))); break;
        case 2: _t->EditRecord(); break;
        case 3: _t->AddRecord(); break;
        case 4: _t->HandleChangeCommonDataRecord((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QStringList(*)>(_a[2]))); break;
        case 5: _t->HandleCurrentIndexChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->on_tabCommonData_customContextMenuRequested((*reinterpret_cast< const QPoint(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (QDlgCommonData::*_t)(QStringList & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QDlgCommonData::QueryCommonDataRecord)) {
                *result = 0;
            }
        }
        {
            typedef void (QDlgCommonData::*_t)(QString , QStringList & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QDlgCommonData::ChangeCommonDataRecord)) {
                *result = 1;
            }
        }
    }
}

const QMetaObject QDlgCommonData::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_QDlgCommonData.data,
      qt_meta_data_QDlgCommonData,  qt_static_metacall, 0, 0}
};


const QMetaObject *QDlgCommonData::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QDlgCommonData::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_QDlgCommonData.stringdata))
        return static_cast<void*>(const_cast< QDlgCommonData*>(this));
    return QDialog::qt_metacast(_clname);
}

int QDlgCommonData::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 7;
    }
    return _id;
}

// SIGNAL 0
void QDlgCommonData::QueryCommonDataRecord(QStringList & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void QDlgCommonData::ChangeCommonDataRecord(QString _t1, QStringList & _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_END_MOC_NAMESPACE
