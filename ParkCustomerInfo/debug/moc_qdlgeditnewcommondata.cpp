/****************************************************************************
** Meta object code from reading C++ file 'qdlgeditnewcommondata.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.3.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../qdlgeditnewcommondata.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'qdlgeditnewcommondata.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.3.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QDlgEditNewCommonData_t {
    QByteArrayData data[9];
    char stringdata[138];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_QDlgEditNewCommonData_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_QDlgEditNewCommonData_t qt_meta_stringdata_QDlgEditNewCommonData = {
    {
QT_MOC_LITERAL(0, 0, 21),
QT_MOC_LITERAL(1, 22, 22),
QT_MOC_LITERAL(2, 45, 0),
QT_MOC_LITERAL(3, 46, 11),
QT_MOC_LITERAL(4, 58, 12),
QT_MOC_LITERAL(5, 71, 9),
QT_MOC_LITERAL(6, 81, 18),
QT_MOC_LITERAL(7, 100, 16),
QT_MOC_LITERAL(8, 117, 20)
    },
    "QDlgEditNewCommonData\0ChangeCommonDataRecord\0"
    "\0strDataType\0QStringList&\0lstParams\0"
    "on_btnNext_clicked\0on_btnOK_clicked\0"
    "on_btnCancel_clicked"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QDlgEditNewCommonData[] = {

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
       1,    2,   34,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       6,    0,   39,    2, 0x08 /* Private */,
       7,    0,   40,    2, 0x08 /* Private */,
       8,    0,   41,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString, 0x80000000 | 4,    3,    5,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void QDlgEditNewCommonData::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QDlgEditNewCommonData *_t = static_cast<QDlgEditNewCommonData *>(_o);
        switch (_id) {
        case 0: _t->ChangeCommonDataRecord((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QStringList(*)>(_a[2]))); break;
        case 1: _t->on_btnNext_clicked(); break;
        case 2: _t->on_btnOK_clicked(); break;
        case 3: _t->on_btnCancel_clicked(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (QDlgEditNewCommonData::*_t)(QString , QStringList & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QDlgEditNewCommonData::ChangeCommonDataRecord)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject QDlgEditNewCommonData::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_QDlgEditNewCommonData.data,
      qt_meta_data_QDlgEditNewCommonData,  qt_static_metacall, 0, 0}
};


const QMetaObject *QDlgEditNewCommonData::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QDlgEditNewCommonData::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_QDlgEditNewCommonData.stringdata))
        return static_cast<void*>(const_cast< QDlgEditNewCommonData*>(this));
    return QDialog::qt_metacast(_clname);
}

int QDlgEditNewCommonData::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
void QDlgEditNewCommonData::ChangeCommonDataRecord(QString _t1, QStringList & _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
