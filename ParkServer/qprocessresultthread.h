#ifndef QPROCESSRESULTTHREAD_H
#define QPROCESSRESULTTHREAD_H

#include <QThread>
#include <QtCore>
#include "qprocessresultevent.h"
#include "../CommonModule/qserializethread.h"
#include "../DatabaseModule/qdatabasethread.h"
#include "../NetworkModule/qftpthread.h"
#include "../VideoModule/qanalogcamerathread.h"
#include "../ConfigModule/qconfigurator.h"
#include "../CommonModule/qbasethread.h"

class QProcessResultThread : public QBaseThread
{
    Q_OBJECT
public:
    static QProcessResultThread* CreateInstance( QObject* pParent = NULL );
    void PostDatabaseResultEvent( int nSpType, const QByteArray& byJson );
    void PostPlateResultEvent( const QString& strPlate, const QString& strDateTime, int nChannel, bool bEnter );

    void SetAnalogCameraThread( QAnalogCameraThread* pAnalog );

protected:
    void run( );
    void customEvent( QEvent* pEvent );
    bool ThreadInitialize( );
    void ThreadUninitialize( );

private:
    explicit QProcessResultThread(QObject *parent = 0);

    void ProcessDatabaseResultEvent( QProcessResultEvent* pEvent  );
    void ProcessPlateResultEvent( QProcessResultEvent* pEvent  );

    void CaptureImage( QString& strFile, const QString& strPlate, int nChannel );

    void ParseSpResult( QByteArray& byJson, bool& bSuccess, QString& strUUID );
    void Send2FtpServer( const QString &strPlate, const QString& strDateTime, QByteArray &byData );
    void SendPlate2Client( const QString &strPlate, const QString& strDateTime, const QString &strBase64 );

private:
    static QProcessResultThread* pThreadInstance;
    QSerializeThread* pSerializeThread;
    QDatabaseThread* pDatabaseThread;
    QFtpThread* pFtpThread;
    QAnalogCameraThread* pAnalogCamera;
    QString strImagePath;
    bool bDeleteImage;
    QConfigurator* pConfigurator;

signals:

private slots:
    void HandlePlateSerializeData( QString strPlate, QString strDateTime, QByteArray byFileData );

};

#endif // QPROCESSRESULTTHREAD_H
