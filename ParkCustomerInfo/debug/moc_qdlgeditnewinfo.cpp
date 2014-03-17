/****************************************************************************
** Meta object code from reading C++ file 'qdlgeditnewinfo.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.2.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../qdlgeditnewinfo.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'qdlgeditnewinfo.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.2.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QDlgEditNewInfo_t {
    QByteArrayData data[13];
    char stringdata[223];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_QDlgEditNewInfo_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_QDlgEditNewInfo_t qt_meta_stringdata_QDlgEditNewInfo = {
    {
QT_MOC_LITERAL(0, 0, 15),
QT_MOC_LITERAL(1, 16, 25),
QT_MOC_LITERAL(2, 42, 0),
QT_MOC_LITERAL(3, 43, 12),
QT_MOC_LITERAL(4, 56, 9),
QT_MOC_LITERAL(5, 66, 19),
QT_MOC_LITERAL(6, 86, 10),
QT_MOC_LITERAL(7, 97, 9),
QT_MOC_LITERAL(8, 107, 25),
QT_MOC_LITERAL(9, 133, 16),
QT_MOC_LITERAL(10, 150, 20),
QT_MOC_LITERAL(11, 171, 46),
QT_MOC_LITERAL(12, 218, 3)
    },
    "QDlgEditNewInfo\0ChangeCustomerVehicleData\0"
    "\0QStringList&\0lstParams\0ChangeServiceRecord\0"
    "EditRecord\0AddRecord\0HandleChangeServiceRecord\0"
    "on_btnOK_clicked\0on_btnCancel_clicked\0"
    "on_tabServiceRecord_customContextMenuRequested\0"
    "pos\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QDlgEditNewInfo[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   54,    2, 0x06,
       5,    1,   57,    2, 0x06,

 // slots: name, argc, parameters, tag, flags
       6,    0,   60,    2, 0x08,
       7,    0,   61,    2, 0x08,
       8,    1,   62,    2, 0x08,
       9,    0,   65,    2, 0x08,
      10,    0,   66,    2, 0x08,
      11,    1,   67,    2, 0x08,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 3,    4,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QPoint,   12,

       0        // eod
};

void QDlgEditNewInfo::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QDlgEditNewInfo *_t = static_cast<QDlgEditNewInfo *>(_o);
        switch (_id) {
        case 0: _t->ChangeCustomerVehicleData((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        case 1: _t->ChangeServiceRecord((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        case 2: _t->EditRecord(); break;
        case 3: _t->AddRecord(); break;
        case 4: _t->HandleChangeServiceRecord((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        case 5: _t->on_btnOK_clicked(); break;
        case 6: _t->on_btnCancel_clicked(); break;
        case 7: _t->on_tabServiceRecord_customContextMenuRequested((*reinterpret_cast< const QPoint(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (QDlgEditNewInfo::*_t)(QStringList & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QDlgEditNewInfo::ChangeCustomerVehicleData)) {
                *result = 0;
            }
        }
        {
            typedef void (QDlgEditNewInfo::*_t)(QStringList & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QDlgEditNewInfo::ChangeServiceRecord)) {
                *result = 1;
            }
        }
    }
}

const QMetaObject QDlgEditNewInfo::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_QDlgEditNewInfo.data,
      qt_meta_data_QDlgEditNewInfo,  qt_static_metacall, 0, 0}
};


const QMetaObject *QDlgEditNewInfo::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QDlgEditNewInfo::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_QDlgEditNewInfo.stringdata))
        return static_cast<void*>(const_cast< QDlgEditNewInfo*>(this));
    return QDialog::qt_metacast(_clname);
}

int QDlgEditNewInfo::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
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

// SIGNAL 0
void QDlgEditNewInfo::ChangeCustomerVehicleData(QStringList & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void QDlgEditNewInfo::ChangeServiceRecord(QStringList & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_END_MOC_NAMESPACE
