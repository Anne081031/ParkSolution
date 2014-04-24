#ifndef QPLATEPARSERTHREAD_H
#define QPLATEPARSERTHREAD_H

#include <QThread>
#include "qplateevent.h"
#include "../CommonModule/CommonHeader.h"
#include "../CommonModule/qjsondata.h"

class QPlateParserThread : public QThread
{
    Q_OBJECT
public:
    static QPlateParserThread* CreateInstance( );
    void PostPlateResultData( QByteArray& byData );

protected:
    void run( );
    void customEvent( QEvent* pEvent );

private:
    QPlateParserThread(QObject *parent = 0);
    inline void PostEvent(QPlateEvent *pEvent );

    void ParsePlateData( const QByteArray& byData );
    void ParsePlateData( const QByteArray& byData, ParkSolution::QStringHash& plateHash, ParkSolution::PlateResult& resultInfoKey );
    inline void GetPlateResult( QJsonValue& jsonValue, QString& strKey, ParkSolution::QStringHash& plateHash );
    void ProcessPlateResultDataEvent( QPlateEvent* pEvent );

private:
    QTextCodec* pTextCodec;
    static QPlateParserThread* pThreadInstance;

signals:
    void PlateData( QString strPlate, QString strDateTime, QByteArray byImage );

public slots:
    void HandleZmqClientData( QByteArray byData );
};

#endif // QPLATEPARSERTHREAD_H
