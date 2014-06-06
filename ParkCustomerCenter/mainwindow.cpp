#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QDebug>
#include <QMessageBox>

#define START_ZMQ
#undef START_ZMQ

#define HIDE_SERVICE_COLUMN_COUNT   ( int ) 5

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    pSysTrayIcon = NULL;
    SystemTrayIcon( );
    CreateHoverForm( );

    pConfigurator = QConfigurator::CreateConfigurator( );

    GetCommonConfigData( );
    SetScrollAreaStyleSheet( );
    FillServiceColumnName( );
    CreateImageLabel( );
    CreateInfoWidget( );
    CreateReportDlg( );
    LayoutUI( );
    FillHash( );
    FillInfoEditsArray( );
    StartSpeechThread( );
    StartDatabaseThread( );
    //StartPlateThread( );
    StartZmqClientThread( );
    ConnectDatabase( );
    StartVideoThread( );
    CreateQueryFrame( );
}

MainWindow::~MainWindow()
{
    delete pFrameQueryData;
    delete pDlgReport;
    delete pSysTrayIcon;
    DestroyImageLabel( );
    delete ui;
}

void MainWindow::CreateQueryFrame( )
{
    pFrameQueryData = new QFrameQueryData( );

    connect( pFrameQueryData, SIGNAL( QueryData( QStringList ) ),
             this, SLOT( HandleQueryData( QStringList ) ) );
    connect( pFrameQueryData, SIGNAL( QueryDataset( QStringList, QObject* ) ),
             this, SLOT( HandleQueryDataset( QStringList, QObject* ) ) );
}

void MainWindow::GetCommonConfigData( )
{
    pConfigurator->GetWelcomeSound( strWelcomeSound );

    bCustomerInVideo = false;
    bCustomerOutVideo = false;
    bCustomerCenter = true;
    pConfigurator->GetVideoType( bIPCVideo );

    if ( !bIPCVideo ) {
        return;
    }

    pConfigurator->GetCustomerInVideo( bCustomerInVideo );
    pConfigurator->GetCustomerOutVideo( bCustomerOutVideo );
    bCustomerCenter  = !( bCustomerInVideo || bCustomerOutVideo );
}

void MainWindow::CreateReportDlg( )
{
    pDlgReport = new QDlgReport( this);

    connect( pDlgReport, SIGNAL( ReportQuery( QStringList ) ),
                   this, SLOT( HandleReportQuery( QStringList ) ) );
}

void MainWindow::CreateHoverForm( )
{
    pHoverFrame = new QHoverFrame( NULL );
    pShapedForm = new QShapedForm( this );

    connect( pShapedForm, SIGNAL( ShowHoverWindow( bool ) ),
             this, SLOT( HandleShowHoverWindow( bool ) ) );

    pShapedForm->show();
}

void MainWindow::HandleActivated( QSystemTrayIcon::ActivationReason reason )
{
   if ( QSystemTrayIcon::DoubleClick == reason && isMinimized( ) ) {
      showMaximized( );
   }
}

void MainWindow::SystemTrayIcon( )
{
    if ( NULL == pSysTrayIcon ) {
        QIcon icon( "./Image/TrayIcon.ico" );
        pSysTrayIcon = new QSystemTrayIcon( icon, this );
    }

    bool bRet = pSysTrayIcon->isSystemTrayAvailable( );
    bRet = pSysTrayIcon->supportsMessages( );

    connect( pSysTrayIcon, SIGNAL( messageClicked( ) ),
             this, SLOT( HandleMessageClicked( ) ) );
    connect( pSysTrayIcon, SIGNAL( activated( QSystemTrayIcon::ActivationReason ) ),
             this, SLOT( HandleActivated( QSystemTrayIcon::ActivationReason ) ) );
    pSysTrayIcon->setToolTip( "新来客户提示。" );
    pSysTrayIcon->show( );
}

void MainWindow::HandleMessageClicked( )
{

}

void MainWindow::HandleQueryDataset( QStringList lstParams, QObject * pModel )
{
    pDatabaseThread->PostQueryInOutRecordEvent( lstParams, ( QSqlQueryModel* ) pModel );
}

void MainWindow::HandleQueryData( QStringList lstParams )
{
    pDatabaseThread->PostQueryInOutImageEvent( lstParams );
}

void MainWindow::HandleShowHoverWindow( bool bVisible )
{
    pHoverFrame->setVisible( bVisible );
}

void MainWindow::showEvent(QShowEvent *)
{

}

void MainWindow::changeEvent( QEvent *event )
{
    if ( QEvent::WindowStateChange == event->type( ) ) {
        isMinimized( ) ? pSysTrayIcon->show( ) : pSysTrayIcon->hide( ); 
    }
}

bool MainWindow::Login( )
{
    bool bRet = true;
    QStringList lstParams;

    lstParams << "";
    pDatabaseThread->PostQueryUserInfoEvent( lstParams );
    //dlgLogin.setParent( this );
    bRet = QDialog::Accepted == dlgLogin.exec( );

    return bRet;
}

void MainWindow::FillServiceColumnName( )
{
    lstServiceColumnName << "服务项目编号" << "车牌号码" << "服务项目类别"
                          << "服务子类别" << "保险金额"<< "索赔金额"
                          << "结算方式" << "维修起始时间" << "维修截止时间"
                          << "取车时间" << "维修部门" << "维修人员"
                          << "消费金额";
}

void MainWindow::HideTableViewColumn( QTableView* pTableView )
{
    for ( int nIndex = 0; nIndex < HIDE_SERVICE_COLUMN_COUNT; nIndex++ ) {
        pTableView->hideColumn( nIndex );
    }
}

void MainWindow::SetServiceViewColumnName( QSqlQueryModel* pModel )
{
    for ( int nIndex = 0; nIndex < lstServiceColumnName.count( ); nIndex++ ) {
        pModel->setHeaderData( nIndex + HIDE_SERVICE_COLUMN_COUNT, Qt::Horizontal, lstServiceColumnName.at( nIndex ) );
    }
}

void MainWindow::StartZmqClientThread( )
{
#ifndef START_ZMQ
    return;
#endif
    pZmqClientThread = QZmqClientThread::CreateInstance( );

    pPlateParserThread = QPlateParserThread::CreateInstance( );
    connect( pPlateParserThread, SIGNAL( PlateData( QString, QString, QByteArray ) ),
             this, SLOT( HandlePlateData( QString, QString, QByteArray ) ) );
    connect( pZmqClientThread, SIGNAL( ZmqClientData( QByteArray ) ),
             pPlateParserThread, SLOT( HandleZmqClientData( QByteArray ) ) );
}

void MainWindow::StartPlateThread( )
{
    pPlateParserThread = QPlateParserThread::CreateInstance( );
    pPlateThread = QPlateThread::CreateInstance( );
    connect( pPlateThread, SIGNAL( Log( QString ) ),
             this, SLOT( HandleLog( QString ) ) );


    connect( pPlateParserThread, SIGNAL( PlateData( QString, QString, QByteArray ) ),
             this, SLOT( HandlePlateData( QString, QString, QByteArray ) ) );
}

void MainWindow::StartSpeechThread( )
{
    pSpeechThread = QSpeechThread::CreateInstance( );
    connect( pSpeechThread, SIGNAL( Log( QString ) ),
             this, SLOT( HandleLog( QString ) ) );
}

void MainWindow::StartDatabaseThread( )
{
    pDatabaseThread = QDatabaseThread::CreateInstance( );
    connect( pDatabaseThread, SIGNAL( Log( QString ) ),
             this, SLOT( HandleLog( QString ) ) );
    connect( pDatabaseThread, SIGNAL( SpResultset( int, QObject* ) ),
             this, SLOT( HandleSpResultset( int, QObject* ) ) );

    connect( pDatabaseThread, SIGNAL( SpResult( int, QByteArray ) ),
             this, SLOT( HandleSpResult( int, QByteArray ) ) ); //JSON

}

void MainWindow::ConnectDatabase( )
{
    ParkSolution::QStringHash hashParam;
    ParkSolution::DbConnectInfo dbInfo;

    QString strValue;
    pConfigurator->GetDbHost( strValue );
    hashParam[ dbInfo.strHost ] = strValue;

    quint16 nPort = 0;
    pConfigurator->GetDbHostPort( nPort );
    hashParam[ dbInfo.strPort ] = QString::number( nPort );

    pConfigurator->GetDbUser( strValue );
    hashParam[ dbInfo.strUser ] = strValue;

    pConfigurator->GetDbPwd( strValue );
    hashParam[ dbInfo.strPwd ] = strValue;

    pConfigurator->GetDbSchema( strValue );
    hashParam[ dbInfo.strSchema ] = strValue;

    pDatabaseThread->PostDatabaseConnectEvent( hashParam );
}

void MainWindow::HandleLog( QString strMsg )
{
    QCommonFunction::InformationBox( this, strMsg );
}

void MainWindow::HandleSpResult( int nSpType, QByteArray byData )
{
    qDebug( ) << "收到SP数据 " << QString( byData ) << endl;
    if ( ParkSolution::SpVehicleEnter == nSpType ) {
        int nRet = dataParser.ParseCustomerAllInfo( byData, hashWidget );

        if ( isMinimized( ) ) {
            QString strText = QString( "客户%1光临\n车牌号为%2" ).arg(
                        ui->edtName->text( ),
                        ui->edtPlateID->text( ) );
            pSysTrayIcon->showMessage( "客户来访提示", strText, QSystemTrayIcon::Information, 3000 );
        }

        if ( 1 == nRet || 2 == nRet ) { // 1 New 2 Old 3 DoubleClick
            PlayWelcomeSound( );
        }
        //PlayWelcomeSound( );
    } else if ( ParkSolution::SpQueryUserInfo == nSpType ) {
        dlgLogin.FillUser( byData );
    } else if ( ParkSolution::SpReportInfo == nSpType ) {
        pDlgReport->DisplayReport( byData );
    } else if ( ParkSolution::SpQueryInOutImage ) {
        pFrameQueryData->QueryImageFinished( byData );
    }
}

void MainWindow::QueryCustomerAllInfo( int nDoubleClick, QString &strPlate, QString& strEnterTime )
{
    QStringList lstParams;
    lstParams << "2" << "" << strPlate << strEnterTime <<
                 QString::number( nDoubleClick );
    pDatabaseThread->PostVehicleEnterQueryDataEvent( lstParams );

    lstParams.clear( );
    lstParams << "2" << "" << strPlate << "0";
    pDatabaseThread->PostQueryServiceDataEvent( lstParams, &modelService );
}

void MainWindow::SetSmallPictureCustomerInfo(int nIndex, QString& strPlate, QString& strEnterTime)
{
    if ( 0 > nIndex || IMAGE_LABEL_COUNT - 1 <= nIndex ) {
        return;
    }

    pInfoEdits[ nIndex ][ 0 ]->setText( ui->edtName->text( ) );
    pInfoEdits[ nIndex ][ 1 ]->setText( ui->edtCustomerCategory->text( ) );
    pInfoEdits[ nIndex ][ 2 ]->setText( strPlate );
    pInfoEdits[ nIndex ][ 3 ]->setText( strEnterTime );
}

void MainWindow::MovePicture( )
{
    for ( int nIndex = 0; nIndex < 3; nIndex++ ) {
         pInfoEdits[ nIndex ][ 0 ]->setText( pInfoEdits[ nIndex + 1 ][ 0 ]->text( ) );
         pInfoEdits[ nIndex ][ 1 ]->setText( pInfoEdits[ nIndex + 1 ][ 1 ]->text( ) );
         pInfoEdits[ nIndex ][ 2 ]->setText( pInfoEdits[ nIndex + 1 ][ 2 ]->text( ) );
         pInfoEdits[ nIndex ][ 3 ]->setText( pInfoEdits[ nIndex + 1 ][ 3 ]->text( ) );

         const QPixmap* pPixmap = pImageLabels[ nIndex + 1 ]->pixmap( );
         pImageLabels[ nIndex ]->setPixmap( *pPixmap );
    }
}

void MainWindow::HandlePlateData( QString strPlate, QString strDateTime, QByteArray byImage )
{
    //qDebug( ) << "收到车牌识别数据 解析数据获取车牌相关的数据" << endl;

    static int nImageIndex = 0;
    static bool bMovePicture = false;

    SetBigPictureIndex( nImageIndex );
    ClearEditText( );
    ClearTableView( );
    //QString strPlate = "渝F12345";
    //QString strEnterTime = QDateTime::currentDateTime( ).toString( "yyyy-MM-dd HH:mm:ss" );
    QueryCustomerAllInfo( 0, strPlate, strDateTime );

    if ( bMovePicture ) {
        MovePicture( );
    }

    SetSmallPicture( nImageIndex, byImage );
    SetBigPicture( nImageIndex );

    SetSmallPictureCustomerInfo( nImageIndex, strPlate, strDateTime );
    /////////////////
    if ( 3 >= nImageIndex && !bMovePicture ) {
        nImageIndex++;

        if ( 4 == nImageIndex ) {
            bMovePicture = true;
            nImageIndex = 3;
        }
    }

    /*
    nImageIndex++;
    if ( 4 <= nImageIndex ) {
        nImageIndex = 0;
    }*/

    CustomerComing( );
}

void MainWindow::PlayWelcomeSound( )
{
    QString strPlate = ui->edtPlateID->text( );
    int nInsertIndex = 1;
    int nPlateLen = strPlate.length( );

    // 川_A12345
    for ( int nIndex = 1; nIndex < nPlateLen; nIndex++ ) {
        strPlate.insert( nInsertIndex, QChar( ' ' ) );
        nInsertIndex += 2;
    }
    //QString( "客户%1光临 车牌号码%2 请客户专员%3接待" )
    QString strSound = strWelcomeSound.arg(
                ui->edtName->text( ),
                strPlate,
                ui->edtAccountExecutive->text( ) );

    //strSound = "客户张晓东光临 车牌号码川 A 1 2 3 4 5 请客户专员李东接待";
    pSpeechThread->PostSpeakVoiceEvent( strSound );
}

void MainWindow::HandleSpResultset( int nSpType, QObject* pQSqlQueryModel )
{
    QSqlQueryModel* pModel = ( QSqlQueryModel* ) pQSqlQueryModel;
    if ( NULL == pModel ) {
        return;
    }
    qDebug( ) << "收到SP结果集" << endl;

    if ( ParkSolution::SpQueryServiceData == nSpType ) {
        ui->tabServiceRecord->setModel( pModel );
        HideTableViewColumn( ui->tabServiceRecord );
        SetServiceViewColumnName( pModel );
    } else if ( ParkSolution::SpQueryInOutRecord == nSpType ) {
        pFrameQueryData->QueryInOutRecordFinished( );
    }

    qDebug( ) << pModel->lastError( ).text( ) << endl;
}

void MainWindow::SetScrollAreaStyleSheet( )
{
    QCommonFunction::SetScrollAreaStyleSheet( ui->scrCustomer );
    QCommonFunction::SetScrollAreaStyleSheet( ui->scrVehicle );
}

void MainWindow::HandleInfoBKResize( int nIndex, QSize bkSize )
{
    Q_UNUSED( bkSize );
    QImageBKForm* pForm = pInfoBK[ nIndex ];
    pForm->setMinimumHeight( 111 );
    pForm->setMaximumHeight( 111 );
}

void MainWindow::HandleBKResize(int nIndex, QSize bkSize)
{
    int nDeltaX = 4;
    int nDeltaY = 4;

    if ( bCustomerOutVideo && 5 == nIndex ) {
        pOutWayLabel->setGeometry( nDeltaX, nDeltaY,
                           bkSize.width( ) - nDeltaX,
                           bkSize.height( ) - nDeltaY );
        return;
    }

    bool bBigPicture = ( 4 == nIndex );
    nDeltaY = bBigPicture ? nDeltaX : 0;

    QImageLabel* pLbl = pImageLabels[ nIndex ];

    if ( !bBigPicture ) {
        pLbl->setMaximumSize( bkSize );
    }

    pLbl->setGeometry( nDeltaX, nDeltaY,
                       bkSize.width( ) - nDeltaX,
                       bkSize.height( ) - nDeltaY );
    //qDebug( ) << bkSize.width( ) << " " << bkSize.height( ) << endl;
}

void MainWindow::CreateInfoWidget( )
{
    for ( int nIndex = 0; nIndex < IMAGE_LABEL_COUNT - 1; nIndex++ ) {
        QImageBKForm* pInfoForm = new QImageBKForm( nIndex );
        pInfoBK[ nIndex ] = pInfoForm;
        connect( pInfoForm, SIGNAL( BKResize( int, QSize ) ),
                 this, SLOT( HandleInfoBKResize( int,QSize ) ) );
    }
}

void MainWindow::StartVideoThread( )
{
    pDigitalCamera = NULL;
    nVideoWay = 0;

    if ( !bIPCVideo || ( !bCustomerInVideo && !bCustomerOutVideo ) ) {
        return;
    }

    //setWindowTitle( "门岗" );

    pConfigurator->GetVideoWay( nVideoWay );

    QImageLabel* pInWayLabel = pImageLabels[ IMAGE_LABEL_COUNT - 1 ];
    QImageBKForm* pForm = ( QImageBKForm* )pInWayLabel->parent( );
    pForm->setToolTip( "" );
    pOutWayBK->setToolTip( "" );

    hVideoWnds[ 0 ] = bCustomerInVideo ? ( HWND ) pInWayLabel->winId( ) : NULL;
    hVideoWnds[ 1 ] = bCustomerOutVideo ? ( HWND ) pOutWayLabel->winId( ) : NULL;
    hVideoWnds[ 2 ] = NULL;
    hVideoWnds[ 3 ] = NULL;

    //QWidget* pParent = ( QWidget* ) pImageLabels[ IMAGE_LABEL_COUNT - 1 ]->parent( );
    //::BringWindowToTop( ( HWND ) pParent->winId( ) );

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

    bool bEnter = ( 0 == nChannel % 2 );

    if ( bEnter ) {
        if ( !bCustomerInVideo ) {
            return;
        }
    } else {
        if ( !bCustomerOutVideo ) {
            return;
        }
    }

    pDigitalCamera->PostIPCLoginEvent( strIP );
    pDigitalCamera->PostIPCStartRealPlayEvent( strIP, bMainStream,
                                               false, hVideoWnds[ nChannel ] );
}

void MainWindow::CreateImageLabel( )
{
    for ( int nIndex = 0; nIndex < IMAGE_LABEL_COUNT; nIndex++ ) {
        QImageLabel* pLbl = new QImageLabel( nIndex );
        pImageLabels[ nIndex ] = pLbl;

        QImageBKForm* pForm = new QImageBKForm( nIndex );
        pImageBK[ nIndex ] = pForm;
        connect( pForm, SIGNAL( BKResize( int, QSize ) ),
                 this, SLOT( HandleBKResize( int,QSize ) ) );

        pLbl->setParent( pForm );

        if ( IMAGE_LABEL_COUNT- 1 == nIndex && bCustomerInVideo ) {
            continue;
        }

        connect( pLbl, SIGNAL( DoubleCickEvent( QMouseEvent*, int )  ),
                 this, SLOT( OnImageLabelDoubleClick( QMouseEvent*, int ) ) );
    }

    pOutWayLabel = NULL;
    pOutWayBK = NULL;

    if ( !bCustomerCenter ) {
        pOutWayLabel = new QImageLabel( IMAGE_LABEL_COUNT );
        pOutWayBK = new QImageBKForm( IMAGE_LABEL_COUNT );

        connect( pOutWayBK, SIGNAL( BKResize( int, QSize ) ),
                 this, SLOT( HandleBKResize( int,QSize ) ) );
        pOutWayLabel->setParent( pOutWayBK );
    }
}

void MainWindow::FillInfoEditsArray( )
{
    pInfoEdits[ 0 ][ 0 ] = ui->edtName0;
    pInfoEdits[ 0 ][ 1 ] = ui->edtCustomerCategory0;
    pInfoEdits[ 0 ][ 2 ] = ui->edtPlateID0;
    pInfoEdits[ 0 ][ 3 ] = ui->edtEnterTime0;

    pInfoEdits[ 1 ][ 0 ] = ui->edtName1;
    pInfoEdits[ 1 ][ 1 ] = ui->edtCustomerCategory1;
    pInfoEdits[ 1 ][ 2 ] = ui->edtPlateID1;
    pInfoEdits[ 1 ][ 3 ] = ui->edtEnterTime1;

    pInfoEdits[ 2 ][ 0 ] = ui->edtName2;
    pInfoEdits[ 2 ][ 1 ] = ui->edtCustomerCategory2;
    pInfoEdits[ 2 ][ 2 ] = ui->edtPlateID2;
    pInfoEdits[ 2 ][ 3 ] = ui->edtEnterTime2;

    pInfoEdits[ 3 ][ 0 ] = ui->edtName3;
    pInfoEdits[ 3 ][ 1 ] = ui->edtCustomerCategory3;
    pInfoEdits[ 3 ][ 2 ] = ui->edtPlateID3;
    pInfoEdits[ 3 ][ 3 ] = ui->edtEnterTime3;
}

void MainWindow::SetSmallPicture(int nIndex, QByteArray& byImage )
{
    if ( 0 > nIndex || IMAGE_LABEL_COUNT - 1 <= nIndex ) {
        return;
    }

    QPixmap pixmap;
    //QFile file( "D:/ParkSolution/Document/Test.jpg" );
    //bool bRet = file.open( QIODevice::ReadWrite );
    //file.write( byImage );
    //file.flush( );
    //file.close( );
    pixmap.loadFromData( byImage, "JPG" );
    QImageLabel* pLbl = pImageLabels[ nIndex ];
    pLbl->setPixmap( pixmap );
}

void MainWindow::SetBigPicture(int nIndex)
{
    if ( 0 > nIndex || IMAGE_LABEL_COUNT - 1 <= nIndex || bCustomerInVideo ) {
        return;
    }

    QImageLabel* pLbl = pImageLabels[ nIndex ];
    const QPixmap* pPixmap = pLbl->pixmap( );

    if ( NULL == pPixmap ) {
        return;
    }

    pImageLabels[ 4 ]->setPixmap( *pPixmap );
}

void MainWindow::SetBigPictureIndex(int nIndex)
{
    if ( 0 > nIndex || IMAGE_LABEL_COUNT - 1 <= nIndex ) {
        return;
    }

    pImageLabels[ IMAGE_LABEL_COUNT - 1 ]->setWhatsThis( QString::number( nIndex ) );
}

void MainWindow::GetComingString( QString &strText, int nIndex )
{
    //pInfoEdits[ 0 ][ 0 ] = ui->edtName0;
    //pInfoEdits[ 0 ][ 1 ] = ui->edtCustomerCategory0;
    //pInfoEdits[ 0 ][ 2 ] = ui->edtPlateID0;
    //pInfoEdits[ 0 ][ 3 ] = ui->edtEnterTime0;

    if ( pInfoEdits[ nIndex ][ 2 ]->text( ).isEmpty( ) ) {
        return;
    }

    strText = QString( "客户%1 车牌号码%2 %3光临。" ).arg(
                pInfoEdits[ nIndex ][ 0 ]->text( ),
                pInfoEdits[ nIndex ][ 2 ]->text( ),
                pInfoEdits[ nIndex ][ 3 ]->text( ) );
}

void MainWindow::CustomerComing( )
{
    QStringList lstMarquee;
    QString strText;

    for ( int nIndex = 0; nIndex < IMAGE_LABEL_COUNT - 1; nIndex++ ) {
        strText = "";
        GetComingString( strText, nIndex );
        lstMarquee << strText;
    }

    pHoverFrame->SetMarqueeString( lstMarquee );
}

void MainWindow::OnImageLabelDoubleClick(QMouseEvent *, int nImageIndex)
{
    //CustomerComing( );
    qDebug( ) << Q_FUNC_INFO << nImageIndex << endl;

    if ( IMAGE_LABEL_COUNT - 1 == nImageIndex ) {
        nImageIndex = pImageLabels[ IMAGE_LABEL_COUNT - 1 ]->whatsThis( ).toInt( );
    }

    if ( NULL == pImageLabels[ nImageIndex ]->pixmap( ) ) {
        return;
    }

    QString strPlate = pInfoEdits[ nImageIndex ][ 2 ]->text( );
    QString strEnterTime = pInfoEdits[ nImageIndex ][ 3 ]->text( );

    if ( strPlate == ui->edtPlateID->text( ) &&
         strEnterTime == ui->edtVistNewlyTime->text( ) ) {
        return;
    }

    SetBigPictureIndex( nImageIndex );
    SetBigPicture( nImageIndex );

    if ( strEnterTime.isEmpty( ) ) {
        strEnterTime = QDateTime::currentDateTime( ).toString( "yyyy-MM-dd HH:mm:ss" );
    }

    QueryCustomerAllInfo( 1, strPlate, strEnterTime );

    //SetSmallPictureCustomerInfo( nImageIndex, strPlate, strEnterTime );
    ClearEditText( );
    ClearTableView( );
}

void MainWindow::DestroyImageLabel( )
{
    for ( int nIndex = 0; nIndex < IMAGE_LABEL_COUNT; nIndex++ ) {
        QLabel* pLabel = pImageLabels[ nIndex ];
        if ( NULL != pLabel ) {
            delete pLabel;
        }
    }
}

void MainWindow::FillVehicleEdit( )
{
    ParkSolution::TabVehicleInfo tabVehicle;

    hashWidget.insert( tabVehicle.strPlateID, ui->edtPlateID );
    hashWidget.insert( tabVehicle.strBrand, ui->edtBrand );
    hashWidget.insert( tabVehicle.strSeries, ui->edtSeries );
    hashWidget.insert( tabVehicle.strColor , ui->edtColor );
    hashWidget.insert( tabVehicle.strFeature, ui->edtFeature );
    hashWidget.insert( tabVehicle.strBuyDate, ui->edtBuyDate );
    hashWidget.insert( tabVehicle.strMaintenanceFirstDate, ui->edtMaintenanceFirstDate );
    hashWidget.insert( tabVehicle.strMaintenanceNextDate, ui->edtMaintenanceNextDate );
    hashWidget.insert( tabVehicle.strAannualSurveyDate, ui->edtAannualSurveyDate );
    hashWidget.insert( tabVehicle.strCommercialInsuranceExpiration, ui->edtCommercialInsuranceExpiration );
    hashWidget.insert( tabVehicle.strMandatoryInsuranceExpiration, ui->edtMandatoryInsuranceExpiration );
    hashWidget.insert( tabVehicle.strInsurer, ui->edtInsurer );
    hashWidget.insert( tabVehicle.strVistCount, ui->edtVistCount );
    hashWidget.insert( tabVehicle.strVehicleState, ui->edtState );
    hashWidget.insert( tabVehicle.strMotorID, ui->edtMotorID );
    hashWidget.insert( tabVehicle.strOdometer, ui->edtOdometer );
}

void MainWindow::FillCustomerEdit( )
{
    ParkSolution::TabCustomerInfo tabCustomer;

    hashWidget.insert( tabCustomer.strCustomerID, ui->edtCustomerID );
    hashWidget.insert( tabCustomer.strName, ui->edtName );
    hashWidget.insert( tabCustomer.strCredentialsID, ui->edtCredentialsID );
    hashWidget.insert( tabCustomer.strAddress, ui->edtAddress );
    hashWidget.insert( tabCustomer.strDistrict, ui->edtDistrict );
    hashWidget.insert( tabCustomer.strMobilePhone, ui->edtMobilePhone );
    hashWidget.insert( tabCustomer.strLandline, ui->edtLandline );
    hashWidget.insert( tabCustomer.strEMail, ui->edtEMail );
    hashWidget.insert( tabCustomer.strCustomerSource, ui->edtCustomerSource );
    hashWidget.insert( tabCustomer.strCustomerDepartment, ui->edtDepartment );
    hashWidget.insert( tabCustomer.strAccountExecutive, ui->edtAccountExecutive );
    hashWidget.insert( tabCustomer.strVistFirstTime, ui->edtVistFirstTime );
    hashWidget.insert( tabCustomer.strEntryTime, ui->edtEntryTime );
    hashWidget.insert( tabCustomer.strCustomerCategory, ui->edtCustomerCategory );
    hashWidget.insert( tabCustomer.strVistNewlyTime, ui->edtVistNewlyTime );
    hashWidget.insert( tabCustomer.strConsumptionAmount, ui->edtConsumptionAmount );
    hashWidget.insert( tabCustomer.strMembershipClass, ui->edtMembershipClass );
    hashWidget.insert( tabCustomer.strMembershipCardSurplus, ui->edtMembershipCardSurplus );
}

void MainWindow::FillHash( )
{
    FillVehicleEdit( );
    FillCustomerEdit( );
}

void MainWindow::LayoutUI( )
{
    setWindowState( Qt::WindowMaximized );
    ui->centralWidget->setLayout( ui->mainGridLayout );

    int nMainColMiniSize[ ] = { 400, 200 };
    int nColCount = sizeof ( nMainColMiniSize ) / sizeof ( int );
    for ( int nIndex = 0; nIndex < nColCount; nIndex++ ) {
        ;//ui->mainGridLayout->setColumnMinimumWidth( nIndex, nMainColMiniSize[ nIndex ] );
    }

    ui->mainGridLayout->addWidget( ui->wgtLeftPanel, 0, 0 );
    ui->mainGridLayout->addWidget( ui->wgtRightPanel, 0, 1 );
    ui->wgtLeftPanel->setLayout( ui->gridLayoutLeftPanel );
    ui->wgtRightPanel->setLayout( ui->gridLayoutRightPanel );

    int nLeftColMiniSize[ ] = { 100, 100, 100, 100 };
    nColCount = sizeof ( nLeftColMiniSize ) / sizeof ( int );
    ui->gridLayoutLeftPanel->setSpacing( 0 );
    for ( int nIndex = 0; nIndex < nColCount; nIndex++ ) {
        ;//ui->gridLayoutLeftPanel->setColumnMinimumWidth( nIndex, nLeftColMiniSize[ nIndex ] );
    }

    ui->gridLayoutLeftPanel->setSpacing( 5 );
    ui->gridLayoutLeftPanel->setRowMinimumHeight( 0, 400 );

    //ui->gridLayoutLeftPanel->addWidget( pImageLabels[ 4 ], 0, 0, 1, 4 );

    if ( bCustomerCenter ) {
        // No Video / Video
        ui->gridLayoutLeftPanel->addWidget( pImageBK[ 4 ], 0, 0, 1, 4 );
    } else {
        if ( bCustomerInVideo && bCustomerOutVideo ) {
            ui->gridLayoutLeftPanel->addWidget( pImageBK[ 4 ], 0, 0, 1, 2 );
            ui->gridLayoutLeftPanel->addWidget( pOutWayBK, 0, 2, 1, 2 );
        } else if ( bCustomerInVideo ) {
            ui->gridLayoutLeftPanel->addWidget( pImageBK[ 4 ], 0, 0, 1, 4 );
        } else if ( bCustomerOutVideo ) {
            ui->gridLayoutLeftPanel->addWidget( pOutWayBK, 0, 0, 1, 4 );
        }
    }
/*
    for ( int nIndex = 0; nIndex< 4; nIndex++ ) {
        ui->gridLayoutLeftPanel->addWidget( pImageLabels[ nIndex ], 1, nIndex );
    }
*/
    for ( int nIndex = 0; nIndex < 4; nIndex++ ) {
        ui->gridLayoutLeftPanel->addWidget( pImageBK[ nIndex ], 1, nIndex );
    }

    ui->widget0->setVisible( false );
    ui->widget1->setVisible( false );
    ui->widget2->setVisible( false );
    ui->widget3->setVisible( false );
/*
    ui->gridLayoutLeftPanel->addWidget( ui->widget0, 2, 0 );
    ui->gridLayoutLeftPanel->addWidget( ui->widget1, 2, 1 );
    ui->gridLayoutLeftPanel->addWidget( ui->widget2, 2, 2 );
    ui->gridLayoutLeftPanel->addWidget( ui->widget3, 2, 3 );

    ui->widget0->setLayout( ui->formLayout0 );
    ui->widget1->setLayout( ui->formLayout1 );
    ui->widget2->setLayout( ui->formLayout2 );
    ui->widget3->setLayout( ui->formLayout3 );
*/
    ui->gridLayoutLeftPanel->addWidget( pInfoBK[ 0 ], 2, 0 );
    ui->gridLayoutLeftPanel->addWidget( pInfoBK[ 1 ], 2, 1 );
    ui->gridLayoutLeftPanel->addWidget( pInfoBK[ 2 ], 2, 2 );
    ui->gridLayoutLeftPanel->addWidget( pInfoBK[ 3 ], 2, 3 );

    pInfoBK[ 0 ]->setLayout( ui->formLayout0 );
    pInfoBK[ 1 ]->setLayout( ui->formLayout1 );
    pInfoBK[ 2 ]->setLayout( ui->formLayout2 );
    pInfoBK[ 3 ]->setLayout( ui->formLayout3 );

    ui->gridLayoutRightPanel->addWidget( ui->lblDetail, 0, 0 );
    ui->gridLayoutRightPanel->addWidget( ui->widget4, 1, 0 );
    ui->gridLayoutRightPanel->addWidget( ui->scrCustomer, 2, 0 );
    ui->gridLayoutRightPanel->addWidget( ui->widget5, 3, 0 );
    ui->gridLayoutRightPanel->addWidget( ui->scrVehicle, 4, 0 );
    ui->gridLayoutRightPanel->addWidget( ui->widget6, 5, 0 );
    ui->gridLayoutRightPanel->addWidget( ui->tabServiceRecord, 6, 0 );

    ui->widget4->setLayout( ui->formLayout4 );
    ui->widget5->setLayout( ui->formLayout5 );
    ui->widget6->setLayout( ui->formLayout6 );

    ui->scrCustomer->setWidget( ui->widget7 );
    ui->widget7->setLayout( ui->gridLayoutCustomer );
    ui->gridLayoutCustomer->addWidget( ui->widget9, 0, 0 );
    ui->gridLayoutCustomer->addWidget( ui->widget10, 0, 1 );
    ui->gridLayoutCustomer->addWidget( ui->widget11, 0, 2 );
    ui->widget9->setLayout( ui->formLayout7 );
    ui->widget10->setLayout( ui->formLayout8 );
    ui->widget11->setLayout( ui->formLayout9 );

    ui->scrVehicle->setWidget( ui->widget8 );
    ui->widget8->setLayout( ui->gridLayoutVehicle );
    ui->gridLayoutVehicle->addWidget( ui->widget12, 0, 0 );
    ui->gridLayoutVehicle->addWidget( ui->widget13, 0, 1 );
    ui->gridLayoutVehicle->addWidget( ui->widget14, 0, 2 );
    ui->widget12->setLayout( ui->formLayout10 );
    ui->widget13->setLayout( ui->formLayout11 );
    ui->widget14->setLayout( ui->formLayout12 );
}

void MainWindow::ClearTableView( )
{
    QSqlQueryModel* pModel = ( QSqlQueryModel* ) ui->tabServiceRecord->model( );
    if ( NULL == pModel ) {
        return;
    }

    pModel->clear( );
    //ui->tabServiceRecord->setModel( NULL );
}

bool MainWindow::SendData( )
{
    bool bRet = false;
    localSocket.connectToServer( "[Guid(9FED4E89-0A0A-4417-96AD-45E151989A56)]" );
    qDebug( ) << Q_FUNC_INFO << localSocket.errorString( ) << endl;

    if ( !localSocket.waitForConnected( ) ) {
        return bRet;
    }

    localSocket.write( "CustomerInfo" );

    if ( !localSocket.waitForReadyRead( ) ) {
        return bRet;
    }

    QByteArray byData = localSocket.readAll( );

    if ( "OK" == QString( byData ) ) {
        bRet = true;
    }

    return bRet;
}

void MainWindow::StartProcess( )
{
    QProcess proc( this );
    proc.startDetached( "ParkCustomerInfo.exe" );
    proc.waitForStarted( );
}

void MainWindow::ClearEditText( )
{
    foreach ( QWidget* pWgt, hashWidget.values( ) ) {
        if ( NULL != pWgt &&
             pWgt->metaObject( )->className( ) ==
             QLineEdit::staticMetaObject.className( ) ) {
            ( ( QLineEdit* ) pWgt )->clear( );
        }
    }
}

void MainWindow::on_actCustomerInfo_triggered()
{
    if ( !SendData( ) ) {
        StartProcess( );
    }

    showMinimized( );
    QString strPlate = "渝F12345";
    QString strEnterTime = QDateTime::currentDateTime( ).toString( "yyyy-MM-dd HH:mm:ss" );

    QueryCustomerAllInfo( 0, strPlate, strEnterTime );
}

void MainWindow::on_actionExit_triggered()
{
    close( );
}

void MainWindow::moveEvent( QMoveEvent * )
{
    QRect rec = geometry( );
    QRect recFrame = frameGeometry( );
    int nX = rec.x( ) + rec.width( ) - 95;
    int nY = recFrame.y( ) + 5;

    pShapedForm->move( nX, nY );
}

void MainWindow::closeEvent(QCloseEvent *event)
{
    bool bRet = QCommonFunction::SystemCloseEvent( this, event );

    if ( !bRet ) {
        return;
    }

    pShapedForm->close( );
    pShapedForm->deleteLater();

    pHoverFrame->close( );
    pHoverFrame->deleteLater( );
}

void MainWindow::HandleReportQuery( QStringList lstParams )
{
    pDatabaseThread->PostReportInfoEvent( lstParams );
}

void MainWindow::on_actVehicleStatistics_triggered()
{
    pDlgReport->exec( );
}

void MainWindow::on_actQueryData_triggered()
{
    pFrameQueryData->show( );
}
