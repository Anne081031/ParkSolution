#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    InitializeUI( );

    pConfigurator = QConfigurator::CreateConfigurator( );
    GetMiscellaneous( );

    StartSmsThread( );
    StartDatabaseThread( );
    StartFtpThread( );
    StartSeriaizeThread( );
    StartProcessResultThread( );
    StartPlateThread( );
    StartVideoThread( );
}

void MainWindow::InitializeUI( )
{
    QDateTime dtDateTime = QDateTime::currentDateTime( );
    ui->dtEnd->setDateTime( dtDateTime );

    dtDateTime = dtDateTime.addMonths( -1 );
    ui->dtStart->setDateTime( dtDateTime );
}

void MainWindow::GetMiscellaneous( )
{
    pConfigurator->GetDisplayDbLog( bDislpayDbLog );
    pConfigurator->GetDisplayPlateLog( bDislpayPlateLog );
    pConfigurator->GetDisplayFtpLog( bDislpayFtpLog );
    pConfigurator->GetDisplaySerializeLog( bDisplaySerializeLog );
}

void MainWindow::StartSmsThread( )
{
    bool bStartup;
    pConfigurator->GetSmsStartup( bStartup );
    if (!bStartup ) {
        return;
    }

    QSmsThread::CreateInstance(  );
}

void MainWindow::StartProcessResultThread( )
{
    pProcessResultThread = QProcessResultThread::CreateInstance( );
    connect( pProcessResultThread, SIGNAL( ThreadPoolTaskData( QByteArray ) ),
             this, SLOT( HandleThreadPoolTaskData( QByteArray ) ) );
}

void MainWindow::StartSeriaizeThread( )
{
    pSerializeThread = QSerializeThread::CreateInstance( );
    connect( pSerializeThread, SIGNAL( Log( QString ) ),
             this, SLOT( HandleSerializeLog( QString ) ) );
}

void MainWindow::HandleSerializeLog( QString strLog )
{
    if ( !bDisplaySerializeLog ) {
        return;
    }

    ui->txtSerializeLog->appendPlainText( strLog );
}

void MainWindow::HandlePlateSerializeData( QString strPlate, QString strDateTime, QByteArray byFileData )
{
    QString strImageBase64;
    QCommonFunction::GetImageBase64( strImageBase64, byFileData );

    Send2FtpServer( strPlate, strDateTime, byFileData );
    SendPlate2Client( strPlate, strDateTime, strImageBase64 );
}

void MainWindow::moveEvent( QMoveEvent *event )
{
    Q_UNUSED( event )

    if ( NULL == pAnalogCamera ) {
        return;
    }

    HWND hVideo = NULL;

    for ( int nIndex = 0; nIndex < nVideoWay; nIndex++ ) {
        if ( MAX_VIDEO_WAY > nIndex ) {
            hVideo = hVideoWnds[ nIndex ];
        }

        if ( NULL == hVideo ) {
            continue;
        }

        pAnalogCamera->PostStopVideoEvent( nIndex );
        pAnalogCamera->PostPlayVideoEvent( nIndex, hVideo );

        hVideo = NULL;
    }
}

void MainWindow::closeEvent( QCloseEvent *e )
{
    bool bRet = QCommonFunction::SystemCloseEvent( this, e );

    if ( !bRet ) {
        return;
    }

    pPlateThread->PostPlateUninitEvent( 0 );
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::StartVideoThread( )
{
    QCommonFunction::GetAppCaptureImagePath( strImagePath );

    pAnalogCamera = NULL;
    pDigitalCamera = NULL;
    nVideoWay = 1;
    bool bIPC;

    pConfigurator->GetVideoType( bIPC );
    pConfigurator->GetVideoWay( nVideoWay );

    hVideoWnds[ 0 ] = ( HWND ) ui->tabInVideo->winId( );
    hVideoWnds[ 1 ] = ( HWND ) ui->tabOutVideo->winId( );
    hVideoWnds[ 2 ] = NULL;
    hVideoWnds[ 3 ] = NULL;

    bIPC ? StartIPCVideo( ) : StartCaptureCardVideo( );
}

void MainWindow::StartCaptureCardVideo( )
{
    QString strCardType;
    pConfigurator->GetCaptureCard( strCardType );

    if ( "HK" == strCardType ) {
        pAnalogCamera = QHkCaptureCardThread::GetInstance( );
    }

    if ( NULL == pAnalogCamera ) {
        return;
    }

    pProcessResultThread->SetAnalogCameraThread( pAnalogCamera );

    HWND hParentWnd = ( HWND ) ui->centralWidget->winId( );
    pAnalogCamera->PostInitCaptureSDKEvent( hParentWnd );

    HWND hVideo = NULL;

    for ( int nChannel = 0; nChannel < nVideoWay; nChannel++ ) {
        pAnalogCamera->PostOpenChannelEvent( nChannel );

        if ( MAX_VIDEO_WAY > nChannel ) {
            hVideo = hVideoWnds[ nChannel ];
        }

        if ( NULL == hVideo ) {
            continue;
        }

        pAnalogCamera->PostPlayVideoEvent( nChannel, hVideo );

        if ( bPlateVideo ) {
            pAnalogCamera->PostStartCaptureEvent( nChannel );
            pAnalogCamera->PostStartMotionDetectEvent( nChannel );
            pAnalogCamera->PostStartSourceStreamEvent( nChannel, 0 == nChannel );
        }

        hVideo = NULL;
    }
}

void MainWindow::HandleCaptureImage( QString strFile, QString strIP )
{

}

void MainWindow::StartIPCVideo( )
{
    QString strIPCCamera;
    pConfigurator->GetIPCamera( strIPCCamera );

    bool bMainStream;
    pConfigurator->GetIPCMainStream( bMainStream );

    if ( "HK" == strIPCCamera ) {
        pDigitalCamera = QDHkIPCThread::GetInstance( );
    }

    if ( NULL == pDigitalCamera ) {
        return;
    }

    pProcessResultThread->SetDigitalCameraThread( pDigitalCamera );

    connect( pDigitalCamera, SIGNAL( CaptureImage( QString, QString ) ),
                     this, SLOT( HandleCaptureImage( QString, QString ) ) );

    pDigitalCamera->PostIPCStartupEvent( );
    pDigitalCamera->PostIPCSetConnectTimeoutEvent( );
    pDigitalCamera->PostIPCSetReconnectTimeEvent( );

    QString strIPs[  MAX_VIDEO_WAY ];
    pConfigurator->GetIPCInA( strIPs[ 0 ] );
    pConfigurator->GetIPCOutA( strIPs[ 1 ] );
    pConfigurator->GetIPCInB( strIPs[ 2 ] );
    pConfigurator->GetIPCOutB( strIPs[ 3 ] );

    for ( int nIndex = 0; nIndex < nVideoWay; nIndex++ ) {
        StartIPCPlayVideo( strIPs[ nIndex ], bMainStream, nIndex );
    }
}

void MainWindow::StartIPCPlayVideo( QString& strIP, bool bMainStream, int nChannel )
{
    if ( strIP.isEmpty( ) ) {
        return;
    }

    pDigitalCamera->PostIPCLoginEvent( strIP );
    pDigitalCamera->PostIPCStartRealPlayEvent( strIP, bMainStream,
                                               bPlateVideo, hVideoWnds[ nChannel ] );
}

void MainWindow::ConnectDatabase( )
{
    ParkSolution::QStringHash hashParam;
    pConfigurator->GetDbParams( hashParam );

    pDatabaseThread->PostDatabaseConnectEvent( hashParam );
}

void MainWindow::StartDatabaseThread( )
{
    pDatabaseThread = QDatabaseThread::CreateInstance( );
    connect( pDatabaseThread, SIGNAL( Log( QString ) ),
             this, SLOT( HandleDatabaseLog( QString ) ) );

    connect( pDatabaseThread, SIGNAL( SpResult( int, QByteArray ) ),
             this, SLOT( HandleSpResult( int, QByteArray ) ) ); //JSON

    connect( pDatabaseThread, SIGNAL( SpThreadResult( int, QByteArray, QStringList ) ),
             this, SLOT( HandleSpThreadResult( int, QByteArray, QStringList ) ) ); //JSON

    ConnectDatabase( );
}
void MainWindow::HandleThreadPoolTaskData( QByteArray byData )
{
    QString strLog( byData );
    HandleDatabaseLog( strLog );
}

void MainWindow::HandleDatabaseLog( QString strLog )
{
    if ( !bDislpayDbLog ) {
        return;
    }

    if ( 1000 < ui->txtDbLog->blockCount( ) ) {
        ui->txtDbLog->clear( );
    }

    ui->txtDbLog->appendPlainText( strLog );
}

void MainWindow::HandlePlateLog( QString strLog )
{
    if ( !bDislpayPlateLog ) {
        return;
    }

    if ( 1000 < ui->txtPlateLog->blockCount( ) ) {
        ui->txtPlateLog->clear( );
    }

    ui->txtPlateLog->appendPlainText( strLog );
}

void MainWindow::HandleFtpLog( QString strLog )
{
    if ( !bDislpayFtpLog ) {
        return;
    }

    if ( 1000 < ui->txtFtpLog->blockCount( ) ) {
        ui->txtFtpLog->clear( );
    }

    ui->txtFtpLog->appendPlainText( strLog );
}

void MainWindow::ParseSpResult( QByteArray& byJson, bool& bSuccess, QString& strUUID )
{
    QJsonParseError jsonError;
    QJsonDocument jsonDoc = QJsonDocument::fromJson( byJson, &jsonError );

    if ( QJsonParseError::NoError != jsonError.error ) {
        qDebug( ) << jsonError.errorString( ) << endl;
        return;
    }

    if ( jsonDoc.isNull( ) || jsonDoc.isEmpty( ) ) {
        return;
    }

    QJsonObject jsonObj = jsonDoc.object( );
    if ( jsonObj.isEmpty( ) ) {
        return;
    }

    bSuccess = jsonObj.value( "Flag" ).toInt( );
    strUUID = jsonObj.value( "UUID" ).toString( );
}

void MainWindow::DisplayReport(const QByteArray &byJson)
{
    QJsonParseError jsonError;
    QJsonDocument jsonDoc = QJsonDocument::fromJson( byJson, &jsonError );

    if ( QJsonParseError::NoError != jsonError.error ) {
        return;
    }

    if ( jsonDoc.isNull( ) || jsonDoc.isEmpty( ) ) {
        return;
    }

    QJsonObject jsonObj = jsonDoc.object( );
    if ( jsonObj.isEmpty( ) ) {
        return;
    }

    QJsonValue jsonValue = jsonObj.value( "HTML" );
    if ( jsonValue.isNull( ) ) {
        return;
    }

    QString strHTML = jsonValue.toString( );

    ui->webView->setHtml( strHTML );
}

void MainWindow::HandleSpThreadResult( int nSpType, QByteArray byData, QStringList lstParams )
{
    Q_UNUSED( nSpType );
    QString strText = QString( byData ) + "\n";
    ui->txtDbLog->appendPlainText( strText );

    if ( ParkSolution::SpReportInfo == nSpType ) {
        DisplayReport( byData );
        return;
    }

    pProcessResultThread->PostDatabaseResultEvent( nSpType, byData, lstParams );
}

void MainWindow::HandleSpResult( int nSpType, QByteArray byData )
{
    Q_UNUSED( nSpType );
    QString strText = QString( byData ) + "\n";
    ui->txtDbLog->appendPlainText( strText );

    if ( ParkSolution::SpReportInfo == nSpType ) {
        DisplayReport( byData );
        return;
    }

    pProcessResultThread->PostDatabaseResultEvent( nSpType, byData );
return;
    bool bSuccess;
    QString strUUID;
    ParseSpResult( byData, bSuccess, strUUID );

    pSerializeThread->PostGetPlateDataEvent( strUUID, bSuccess );
}

void MainWindow::StartPlateThread( )
{
    //视频识别成功
    strPlateResultPattern = "通道%1 %2识别%3 车牌%4 识别时间%5 可信度%6 颜色%7 尺寸%8 方向%9 %10";
    pPlateThread = QPlateThread::GetInstance( );
    connect( pPlateThread, SIGNAL( PlateResult( QStringList, int, bool, bool ) ),
             this, SLOT( HandlePlateResult( QStringList, int, bool, bool ) ) );
    connect( pPlateThread, SIGNAL( PlateIpcResult( QStringList, int, QString, bool, bool ) ),
             this, SLOT( HandlePlateIpcResult( QStringList, int, QString, bool, bool ) ) );
    connect( pPlateThread, SIGNAL( Log( QString ) ),
             this, SLOT( HandlePlateLog( QString ) ) );

    bool bOneWay;
    pConfigurator->GetDongleOneWay( bOneWay );
    pPlateThread->SetDongleOneWay( bOneWay );

    bool bMultiThread;
    pConfigurator->GetPlateMultiThread( bMultiThread );
    pPlateThread->SetPlateMultiThread( bMultiThread );

    int nWay;
    pConfigurator->GetPlateWay( nWay );
    pPlateThread->SetPlateWay( nWay );

    pConfigurator->GetPlateVideo( bPlateVideo );

    int nFormat = GetImageFormat( );//ImageFormatBGR;

    for ( int nIndex = 0; nIndex < nWay; nIndex++ ) {
        pPlateThread->PostPlateInitEvent( nFormat, nIndex, bMultiThread );
    }
}

int MainWindow::GetImageFormat( )
{
    bool bIPC;
    pConfigurator->GetVideoType( bIPC );
    int nFormat = ImageFormatBGR;

    QString strIPCCamera;
    pConfigurator->GetIPCamera( strIPCCamera );

    QString strCardType;
    pConfigurator->GetCaptureCard( strCardType );

    if ( bIPC ) {
        if ( "HK" == strIPCCamera.toUpper( ) && bPlateVideo ) {
            nFormat = ImageFormatYUV420COMPASS;
        }
    } else {
        if ( "HK" == strCardType.toUpper( ) && bPlateVideo ) {
            nFormat = ImageFormatYUV420COMPASS;
        }
    }

    return nFormat;
}

void MainWindow::StartFtpThread( )
{
    pFtpThread = QFtpThread::CreateInstance( );
    connect( pFtpThread, SIGNAL( Log( QString ) ),
             this, SLOT( HandleFtpLog( QString ) ) );
}

void MainWindow::HandlePlateIpcResult( QStringList lstPlateParam, int nChannel, QString strIP, bool bSuccess, bool bVideo )
{
    if ( 7 > lstPlateParam.size( ) ) {
        return;
    }

    const QString& strPlate = lstPlateParam.at( 0 );
    bool bEnter = ( 0 == nChannel % 2 );
    QString strText = strPlateResultPattern.arg( QString::number( nChannel ) ,
                                                   bVideo ? "视频流" : "文件",
                                                   bSuccess ? "成功" : "失败",
                                                   strPlate,
                                                   lstPlateParam.at( 1 ),
                                                   lstPlateParam.at( 2 ),
                                                   lstPlateParam.at( 3 ),
                                                   lstPlateParam.at( 4 ),
                                                   lstPlateParam.at( 5 )  );
    strText =strText.arg( strIP );
    QString strDateTime;
    QCommonFunction::GetCurrentDateTime( strDateTime );

    strText += " " + strDateTime + "\n";
    HandlePlateLog( strText );

    if ( !bSuccess ) {
        return;
    }

    ProcessPlate( strPlate, bEnter, nChannel, strIP, true );
}

void MainWindow::HandlePlateResult( QStringList lstPlateParam, int nChannel, bool bSuccess, bool bVideo )
{
    if ( 7 > lstPlateParam.size( ) ) {
        return;
    }

    const QString& strPlate = lstPlateParam.at( 0 );
    bool bEnter = ( 0 == nChannel % 2 );
    QString strText = strPlateResultPattern.arg( QString::number( nChannel ) ,
                                                   bVideo ? "视频流" : "文件",
                                                   bSuccess ? "成功" : "失败",
                                                   strPlate,
                                                   lstPlateParam.at( 1 ),
                                                   lstPlateParam.at( 2 ),
                                                   lstPlateParam.at( 3 ),
                                                   lstPlateParam.at( 4 ),
                                                   lstPlateParam.at( 5 ) );
    strText = strText.arg( "" );
    QString strDateTime;
    QCommonFunction::GetCurrentDateTime( strDateTime );

    strText += " " + strDateTime + "\n";
    HandlePlateLog( strText );

    if ( !bSuccess ) {
        return;
    }

    QString strIP = "";

    ProcessPlate( strPlate, bEnter, nChannel, strIP, false );
}

void MainWindow::SendPlate2Client( const QString &strPlate, const QString& strDateTime, const QString &strBase64 )
{

}

void MainWindow::WriteDatabase( const QString &strPlate, const QString &strDateTime, const QByteArray &byFileData, bool bEnter )
{
    QStringList lstParasm;

    QString strImageBase64;
    QCommonFunction::GetImageBase64( strImageBase64, byFileData );

    QUuid uuid = QUuid::createUuid( );
    QString strUUID = uuid.toString( );

    lstParasm << ( bEnter ? "1" : "0" ) << strPlate
              << strDateTime << strImageBase64 << strUUID;

    pDatabaseThread->PostWriteInOutRecordEvent( lstParasm );
    pSerializeThread->PostSetPlateDataEvent( strUUID, strPlate, strDateTime, byFileData );
}

void MainWindow::Send2FtpServer( const QString &strPlate, const QString& strDateTime, QByteArray &byData )
{
    QDateTime dtDateTime;
    QCommonFunction::String2DateTime( strDateTime, dtDateTime );

    QString strDtDigital;
    QCommonFunction::GetDateTimeDigital( dtDateTime, strDtDigital );

    QString strName = QString( "%1_%2.jpg" ).arg( strPlate, strDtDigital );
    pFtpThread->PostUploadFileEvent( strName, byData );
}

 void MainWindow::CaptureImage( QString& strFile, const QString& strPlate, int nChannel )
{
     QString strDtDigital;
     QCommonFunction::GetCurrentDateTimeDigital( strDtDigital );
     strFile += QString( "%1%2_%3.jpg" ).arg( strImagePath, strPlate, strDtDigital );

     pAnalogCamera->CaptureStaticImage( strFile, nChannel );
}

void MainWindow::ProcessPlate( const QString &strPlate, bool bEnter, int  nChannel , QString& strIP, bool bIpc )
{
    //QString strFile;
    //CaptureImage( strFile, strPlate, nChannel );

    //QByteArray byFileData;
    //QCommonFunction::ReadAllFile( strFile, byFileData );

    //QFile.remove( strFile );

    QString strDateTime;
    QCommonFunction::GetCurrentDateTime( strDateTime );

    pProcessResultThread->PostPlateResultEvent( strPlate, strDateTime, nChannel, bEnter, strIP, bIpc  );
    //WriteDatabase( strPlate, strDateTime, byFileData, bEnter );
}

void MainWindow::on_btQuery_clicked()
{
    if ( !pDatabaseThread->DatabasePing( ) ) {
        return;
    }

    QStringList lstParams;

    lstParams << QString::number( ui->cbxType->currentIndex( ) ) << ui->dtStart->text( ) << ui->dtEnd->text( );
    pDatabaseThread->PostReportInfoEvent( lstParams );
}
