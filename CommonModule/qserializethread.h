#ifndef QSERIALIZETHREAD_H
#define QSERIALIZETHREAD_H

#include "qbasethread.h"
#include <QtCore>
#include "qserializeevent.h"
#include "commonmodule_global.h"
#include "qcommonfunction.h"

class COMMONMODULESHARED_EXPORT QSerializeThread : public QBaseThread
{
    Q_OBJECT
public:
    static QSerializeThread* CreateInstance( QObject* pParent = NULL );
    void PostGetPlateDataEvent( const QString& strUUID, bool bSuccess );
    void PostSetPlateDataEvent( const QString& strUUID, const QString& strPlate,
                                const QString& strDateTime, const QByteArray& byFileData );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QSerializeThread(QObject *parent = 0);

    void ProcessGetPlateDataEvent( QSerializeEvent* pEvent );
    void ProcessSetPlateDataEvent( QSerializeEvent* pEvent );

private:
    typedef struct __SerializeData {
        QString strDateTime;
        QString strPlate;
        QByteArray byFileData;
    } SerializeData;

    typedef QHash< QString, SerializeData* > QHashSerializeData;

    static QSerializeThread* pThreadInstance;
    QHashSerializeData hashSerializeData;

signals:
    void PlateSerializeData( QString strPlate, QString strDateTime, QByteArray byFileData );

public slots:

};

#endif // QSERIALIZETHREAD_H
