#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "../CommonModule/CommonHeader.h"
#include "../LPRModule/qplatethread.h"
#include "../DatabaseModule/qdatabasethread.h"
#include "../ConfigModule/qconfigurator.h"
#include "../NetworkModule/qftpthread.h"
#include "../VideoModule/qdhkipcthread.h"
#include "../VideoModule/qhkcapturecardthread.h"
#include "../VideoModule/qtmcapturecardthread.h"
#include "../CommonModule/qserializethread.h"
#include "qprocessresultthread.h"
#include "../CommonModule/qmysystemtrayicon.h"

#define MAX_VIDEO_WAY ( int ) 4

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

protected:
    void closeEvent( QCloseEvent* e );
    void moveEvent( QMoveEvent * event );
    void changeEvent( QEvent* event );

private:
    void LoadChartCbx( );
    int GetImageFormat( );
    void StartDatabaseThread( );
    void ConnectDatabase( );
    void StartPlateThread( );
    void StartFtpThread( );
    void StartVideoThread( );
    void StartSeriaizeThread( );
    void StartProcessResultThread( );
    void StartSmsThread( );
    void InitializeProvider( );

    void StartCaptureCardVideo( );
    void StartIPCVideo( );
    void InitializeUI( );
    void InitializeSysTrayIcon( );
    void GetMiscellaneous( );
    void CaptureImage( QString& strFile, const QString& strPlate, int nChannel );
    void ProcessPlate( const QString& strPlate, bool bEnter, int nChannel, QString& strIP, bool bIpc );
    void Send2FtpServer( const QString& strPlate, const QString& strDateTime, QByteArray& byData );
    inline void WriteDatabase( const QString& strPlate, const QString& strDateTime, const QByteArray& byFileData, bool bEnter );
    void SendPlate2Client( const QString& strPlate, const QString& strDateTime, const QString& strBase64 );
    void ParseSpResult( QByteArray& byJson, bool& bSuccess, QString& strUUID );

    void DisplayReport( const QByteArray& byJson );
    void DisplayChart( const QByteArray& byJson );
    inline void StartIPCPlayVideo( QString& strIP, bool bMainStream, int nChannel );

    void HandleActionTriggered( QAction* pAction );

private slots:
    void HandleSerializeLog( QString strLog );
    void HandlePlateSerializeData( QString strPlate, QString strDateTime, QByteArray byFileData );
    void HandlePlateResult( QStringList lstPlateParam, int nChannel, bool bSuccess, bool bVideo );
    void HandlePlateIpcResult( QStringList lstPlateParam, int nChannel, QString strIP, bool bSuccess, bool bVideo );
    void HandlePlateLog( QString strLog );
    void HandleDatabaseLog( QString strLog );
    void HandleFtpLog( QString strLog );
    void HandleSpResult( int nSpType, QByteArray byData );
    void HandleSpThreadResult( int nSpType, QByteArray byData, QStringList lstParams );
    void HandleCaptureImage( QString strFile, QString strIP );
    void HandleThreadPoolTaskData( QByteArray byData );
    void HandleActionTriggered( );

    void on_btQuery_clicked();

    void on_cbxReportType_currentIndexChanged(int index);

private:
    Ui::MainWindow *ui;
    QString strPlateResultPattern;
    QPlateThread* pPlateThread;
    QDatabaseThread* pDatabaseThread;
    QFtpThread* pFtpThread;
    QConfigurator* pConfigurator;
    QAnalogCameraThread* pAnalogCamera;
    QDigitalCameraThread* pDigitalCamera;
    //QSerializeThread*  pSerializeThread;
    QString strImagePath;
    QProcessResultThread* pProcessResultThread;
    HWND hVideoWnds[ MAX_VIDEO_WAY ];
    QMySystemTrayIcon sysTrayIcon;
    QString strReportFile;
    QTextCodec* pTextCodec;
    QAction* pContextMenuAction;

    bool bPlateVideo;
    bool bHideWindow;
    int nVideoWay;
    int nPlateWay;
    bool bDislpayPlateLog;
    bool bDislpayDbLog;
    bool bDislpayFtpLog;
    bool bDisplaySerializeLog;
    QString strProviderHK;
    QString strProviderTM;
};

#endif // MAINWINDOW_H
