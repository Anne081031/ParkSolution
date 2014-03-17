/****************************************************************************
** Meta object code from reading C++ file 'qdlgsvceditnewinfo.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.2.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../qdlgsvceditnewinfo.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'qdlgsvceditnewinfo.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.2.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QDlgSvcEditNewInfo_t {
    QByteArrayData data[8];
    char stringdata[121];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_QDlgSvcEditNewInfo_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_QDlgSvcEditNewInfo_t qt_meta_stringdata_QDlgSvcEditNewInfo = {
    {
QT_MOC_LITERAL(0, 0, 18),
QT_MOC_LITERAL(1, 19, 19),
QT_MOC_LITERAL(2, 39, 0),
QT_MOC_LITERAL(3, 40, 12),
QT_MOC_LITERAL(4, 53, 9),
QT_MOC_LITERAL(5, 63, 18),
QT_MOC_LITERAL(6, 82, 16),
QT_MOC_LITERAL(7, 99, 20)
    },
    "QDlgSvcEditNewInfo\0ChangeServiceRecord\0"
    "\0QStringList&\0lstParams\0on_btnNext_clicked\0"
    "on_btnOK_clicked\0on_btnCancel_clicked\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QDlgSvcEditNewInfo[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   34,    2, 0x06,

 // slots: name, argc, parameters, tag, flags
       5,    0,   37,    2, 0x08,
       6,    0,   38,    2, 0x08,
       7,    0,   39,    2, 0x08,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void QDlgSvcEditNewInfo::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QDlgSvcEditNewInfo *_t = static_cast<QDlgSvcEditNewInfo *>(_o);
        switch (_id) {
        case 0: _t->ChangeServiceRecord((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        case 1: _t->on_btnNext_clicked(); break;
        case 2: _t->on_btnOK_clicked(); break;
        case 3: _t->on_btnCancel_clicked(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (QDlgSvcEditNewInfo::*_t)(QStringList & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QDlgSvcEditNewInfo::ChangeServiceRecord)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject QDlgSvcEditNewInfo::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_QDlgSvcEditNewInfo.data,
      qt_meta_data_QDlgSvcEditNewInfo,  qt_static_metacall, 0, 0}
};


const QMetaObject *QDlgSvcEditNewInfo::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QDlgSvcEditNewInfo::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_QDlgSvcEditNewInfo.stringdata))
        return static_cast<void*>(const_cast< QDlgSvcEditNewInfo*>(this));
    return QDialog::qt_metacast(_clname);
}

int QDlgSvcEditNewInfo::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void QDlgSvcEditNewInfo::ChangeServiceRecord(QStringList & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
