#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QMessageBox>
#include <QFileDialog>
#include <QDebug>
#include <winsock2.h>
#include <windows.h>

#define HIDE_CUSTOMER_COLUMN_COUNT ( int ) 26
#define HIDE_SERVICE_COLUMN_COUNT   ( int ) 5

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    StartLocalServer( );
    ui->setupUi(this);
    ComInitliaze( );
    pConfigurator = QConfigurator::CreateConfigurator( );

    FillColumnName( lstCustomerColumnName, true );
    FillColumnName( lstServiceColumnName, false );
    LayoutUI( );
    ControlDockWidget( );
    AssignTableviewArray( );
    StartDatabaseThread( );
    InitializeTabWidget( );
    HideButton( false );
    ConnectDatabase( );
    ControlStatusBar( );
    EnableIncomingDateCtrl( false );
    EnableUpdatingDateCtrl( false );
    EnableAllDateCtrl( false );
    InitialzieDateCtrl( );
    ControlDialog( );
    SetButtonMiniSize( );

    QueryCustomerData( 2 );
    QueryCustomerData( 1 );
    QueryCustomerData( 0 );
}

void MainWindow::ComInitliaze( )
{
    HRESULT hr = ::CoInitialize( NULL );
    if ( FAILED( hr ) ) {
        QString strText = "COM初始化失败。";
        QCommonFunction::InformationBox( NULL, strText );
    }
}

void MainWindow::ControlDockWidget( )
{
    return;
    QRect rect = ui->btnQuery->geometry( );
    rect.setY( ui->edtAllOther->geometry( ).y( ) );
    ui->btnQuery->setGeometry( rect );
}

void MainWindow::SetButtonMiniSize( )
{
    QCommonFunction::SetButtonMiniSize( ui->btnDelete );
    QCommonFunction::SetButtonMiniSize( ui->btnNew );
    QCommonFunction::SetButtonMiniSize( ui->btnQuery );
    QCommonFunction::SetButtonMiniSize( ui->btnIgnore );
    QCommonFunction::SetButtonMiniSize( ui->btnImport );
    QCommonFunction::SetButtonMiniSize( ui->btnExport );
    QCommonFunction::SetButtonMiniSize( ui->btnEdit );
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

void MainWindow::InitializeTabWidget( )
{
    QFont barFont( "宋体", 16, QFont::Bold );
    ui->tabWidget->tabBar( )->setFont( barFont );
    ui->tabWidget->setCurrentIndex( 1 );

    if ( 0 != ui->tabWidget->currentIndex( ) ) {
        ui->tabWidget->setCurrentIndex( 0 );
    }

    ChangeTabBarTextColor( 0 );
    SetTitle( 0 );
}

MainWindow::~MainWindow()
{
    delete pDlgQueryInfo;
    delete pDlgEditNewInfo;
    delete ui;

    ::CoUninitialize( );
}

void MainWindow::HandleForeground( )
{
    activateWindow( );
    showMaximized( );
}

void MainWindow::StartLocalServer( )
{
    pLocalServer = QLocalServerThread::CreateInstance( );
    connect( pLocalServer, SIGNAL( Foreground( ) ),
             this, SLOT( HandleForeground( ) ) );
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

bool MainWindow::ProcessSpResult( ParkSolution::SpType eSpType, QByteArray &byData )
{
    Q_UNUSED( eSpType )
    bool bRet = false;
    QJsonParseError jsonError;
    QJsonDocument docJson = QJsonDocument::fromJson( byData, &jsonError );

    if ( QJsonParseError::NoError != jsonError.error ) {
        qDebug( ) << Q_FUNC_INFO << jsonError.errorString( ) << endl;
    }

    if ( docJson.isNull( ) || docJson.isEmpty( ) || !docJson.isObject( ) ) {
        return bRet;
    }

    QJsonObject jsonObject = docJson.object( );
    if ( jsonObject.isEmpty( ) ) {
        return bRet;
    }

    int nFlag = jsonObject.value( "Flag" ).toInt( );
    QString strMsg = jsonObject.value( "Message" ).toString( );
    QCommonFunction::InformationBox( this, strMsg );

    if ( 0 == nFlag ) {
        return bRet;
    }

    bRet = true;

    return bRet;
}

void MainWindow::HandleSpResult( int nSpType, QByteArray byData )
{
    ParkSolution::SpType eSpType = ( ParkSolution::SpType ) nSpType;
    qDebug( ) << "收到SP数据 " << QString( byData ) << endl;
    if ( ParkSolution::SpQueryCustomerVehicleData == eSpType ) {
        dataParser.ParseCustomerAllInfo( byData, pDlgQueryInfo->GetWidgetHash( ) );

        int nIndex = ui->tabWidget->currentIndex( );
        if ( 0 == nIndex ) {
            on_btnEdit_clicked( );
        } else {
            ShowInfoDlg( NULL );
        }
    } else if ( ParkSolution::SpQueryCommonDataInfo == eSpType ) {
        dataParser.ParseCommonDataInfo( byData, pDlgEditNewInfo->GetWidgetHash( ) );

        if ( pDlgEditNewInfo->GetEditFlag( ) ) {
            QModelIndex index = GetTableViewModelIndex( ui->tabWidget->currentIndex( ) );
            if ( index.isValid( ) ) {
                pDlgEditNewInfo->InitializeDialog( index );
            }
        } else {
            ClearCustomerData( );
        }

        ShowInfoDlg( pDlgEditNewInfo->GetEditFlag( ) ?
                         ui->btnEdit : ui->btnNew );
    } else if ( ParkSolution::SpChangeCustomerVehicleDataUI == eSpType ) {
        if( pDlgEditNewInfo->ProcessSpResult( eSpType, byData ) ) {
            QueryCustomerData( ui->tabWidget->currentIndex( ) );
        }
    } else if ( ParkSolution::SpChangeCustomerVehicleDataDelete == eSpType ) {
        if ( ProcessSpResult( eSpType, byData ) ) {
            QueryCustomerData( ui->tabWidget->currentIndex( ) );
        }
    } else if ( ParkSolution::SpChangeServiceRecordUI == eSpType ) {
        if( pDlgEditNewInfo->ProcessSpResult( eSpType, byData ) ) {
            QString strPlateID;
            pDlgEditNewInfo->GetPlateID( strPlateID );
            QueryServiceDataInfo( strPlateID, GetEditNewModel( ) );
        }
    } else if ( ParkSolution::SpChangeServiceRecordDelete == eSpType ) {
        if( pDlgEditNewInfo->ProcessSpResult( eSpType, byData ) ) {
            ;
        }
    } else if ( ParkSolution::SpImportCustomer == eSpType ) {
         if ( ProcessSpResult( eSpType, byData ) ) {
             QueryCustomerData( ui->tabWidget->currentIndex( ) );
         }
    } else if ( ParkSolution::SpQueryUserInfo == nSpType ) {
        dlgLogin.FillUser( byData );
    } else if ( ParkSolution::SpChangeCommonDataUI == nSpType ) {
        pDlgCommonData->ProcessSpResult( eSpType, byData );
    } else if ( ParkSolution::SpChangeCommonDataDelete == nSpType ) {

    }
}

QTableView* MainWindow::GetCustomerTableView(int nIndex)
{
    return tableView[ nIndex ];
}

QTableView* MainWindow::GetCustomerTableView( QSqlQueryModel* pModel )
{
    QTableView* pView = tableView[ 0 ];
    QSqlQueryModel* pTempModel;

    for ( int nIndex = 0; nIndex < 3; nIndex++ ) {
        pTempModel = ( QSqlQueryModel* ) tableView[ nIndex ]->model( );

        if ( pTempModel == pModel ) {
            pView = tableView[ nIndex ];
            break;
        }
    }

    return pView;
}

void MainWindow::InitialzieDateCtrl( )
{
    QDate date = QDate::currentDate( );

    ui->dtIncomingStart->setDate( date );
    ui->dtIncomingEnd->setDate( date );

    ui->dtUpdatingStart->setDate( date );
    ui->dtUpdatingEnd->setDate( date );

    ui->dtAllStart->setDate( date );
    ui->dtAllEnd->setDate( date );
}

void MainWindow::EnableIncomingDateCtrl(bool bEnable)
{
    ui->dtIncomingStart->setEnabled( bEnable );
    ui->dtIncomingEnd->setEnabled( bEnable );
}

void MainWindow::EnableUpdatingDateCtrl(bool bEnable)
{
    ui->dtUpdatingStart->setEnabled( bEnable );
    ui->dtUpdatingEnd->setEnabled( bEnable );
}

void MainWindow::EnableAllDateCtrl(bool bEnable)
{
    ui->dtAllStart->setEnabled( bEnable );
    ui->dtAllEnd->setEnabled( bEnable );
}

void MainWindow::ControlStatusBar( )
{
    ui->statusBar->addPermanentWidget( ui->lblStatusTip );
    ui->statusBar->addPermanentWidget( ui->lblSeperator0 );
    ui->statusBar->addPermanentWidget( ui->lblStatusRecordCount );
    ui->statusBar->addPermanentWidget( ui->lblSeperator1 );
    ui->statusBar->addPermanentWidget( ui->lblStatusSum );
}

void MainWindow::CalculateSum( quint32& nCardCount, quint32& nAmount, int nIndex )
{
    QSqlQueryModel* pModel = &modelCustomer[ nIndex ];
    int nRowCount = pModel->rowCount( );
    ParkSolution::TabCustomerInfo customerInfo;
    QSqlRecord sqlRecord;
    QSqlField sqlField;

    for ( int nRow = 0; nRow < nRowCount; nRow++ ) {
        sqlRecord = pModel->record( nRow );

        sqlField = sqlRecord.field( customerInfo.strMembershipCardSurplus );
        if ( !sqlField.isNull( ) ) {
            nCardCount += sqlField.value( ).toUInt( );
        }

        sqlField = sqlRecord.field( customerInfo.strConsumptionAmount );
        if ( !sqlField.isNull( ) ) {
            nAmount += sqlField.value( ).toUInt( );
        }
    }
}

void MainWindow::DisplayStatusText( int nIndex )
{
    QString strTip = "";
    QString strSum = "";
    int nRowCount = modelCustomer[ nIndex ].rowCount( );
    QString strRecordCount = QString( "共%1条记录  " ).arg( nRowCount );

    switch ( nIndex ) {
    case 0 :
        strTip = "双击记录可以编辑详细信息";
        break;

    case 1 :
        strTip = "双击记录可以查看车主详细信息";
        break;

    case 2 :
        strTip = "双击记录可以查看车主细信息";
        break;
    }

    bool bVisible = ( 0 != nIndex );
    ui->lblSeperator1->setVisible( bVisible );
    ui->lblStatusSum->setVisible( bVisible );

    if ( bVisible ) {
        quint32 nCardCount = 0;
        quint32 nAmount = 0;
        CalculateSum( nCardCount, nAmount, nIndex );

        strSum = QString( "总消费次数%1  总消费金额%2  " ).arg( QString::number( nCardCount ),
                                                    QString::number( nAmount ) );
    }

    ui->lblStatusTip->setText( strTip );
    ui->lblStatusRecordCount->setText( strRecordCount );
    ui->lblStatusSum->setText( strSum );
}

void MainWindow::HandleSpResultset( int nSpType, QObject* pQSqlQueryModel )
{
    ParkSolution::SpType eSpType = ( ParkSolution::SpType ) nSpType;
    QSqlQueryModel* pModel = ( QSqlQueryModel* ) pQSqlQueryModel;
    if ( NULL == pModel ) {
        return;
    }
    qDebug( ) << "收到SP结果集" << endl;

    QTableView* pTableView = NULL;

    if ( ParkSolution::SpQueryCustomerData == eSpType ) {
        pTableView = GetCustomerTableView( pModel );
        //pTableView->setModel( pModel );
        pTableView->selectRow( 0 );
        HideTableViewColumn( pTableView, HIDE_CUSTOMER_COLUMN_COUNT );
        SetViewColumnName( pModel, lstCustomerColumnName, HIDE_CUSTOMER_COLUMN_COUNT );
        DisplayStatusText( ui->tabWidget->currentIndex( ) );

    } else if ( ParkSolution::SpQueryServiceData == eSpType ) {
        pTableView = GetDlgQueryTableView( );
        //pTableView->setModel( pModel );
        QSqlQueryModel* pTmpModel = ( QSqlQueryModel* ) pTableView->model( );

        if ( pModel == pTmpModel ) {
            HideTableViewColumn( pTableView, HIDE_SERVICE_COLUMN_COUNT );
            SetViewColumnName( pModel, lstServiceColumnName, HIDE_SERVICE_COLUMN_COUNT );
        }

        pTableView = GetDlgEditNewTableView( );
        //pTableView->setModel( pModel );
        pTmpModel = ( QSqlQueryModel* ) pTableView->model( );

        if ( pModel == pTmpModel ) {
            pTableView->selectRow( 0 );
            HideTableViewColumn( pTableView, HIDE_SERVICE_COLUMN_COUNT );
            SetViewColumnName( pModel, lstServiceColumnName, HIDE_SERVICE_COLUMN_COUNT );
        }
    } else if ( ParkSolution::SpExportCustomer == nSpType ) {
        bool bRet = dataParser.ExportData( strExportDataDir, pModel );
        QString strText = "查询无数据。";

        if ( 0 >= modelExportCustomer.rowCount( ) ) {
            QCommonFunction::InformationBox( this, strText );;
        } else {
            strText = bRet ? "导出数据成功。" : "导出数据失败\n请检查Excel程序是否正确安装。";
            QCommonFunction::InformationBox( this, strText );
        }
    } else if ( ParkSolution::SpQueryCommonDataByType == nSpType ) {
        pDlgCommonData->HideColumn( );
    }

    qDebug( ) << pModel->lastError( ).text( ) << endl;
}

void MainWindow::ClearTableView( )
{
    QSqlQueryModel* pModel = GetQueryModel( );
    if ( NULL == pModel ) {
        return;
    }

    pModel->clear( );
    //ui->tabServiceRecord->setModel( NULL );
}

void MainWindow::FillColumnName( QStringList& lstColName, bool bCustomer )
{
    if ( bCustomer ) {
        lstColName << "客户编号" << "客户名称" << "证件号码"
                          << "客户地址" << "所属区域"<< "客户级别" << "手机号码"
                          << "固定号码" << "邮箱地址" << "客户来源"
                          << "隶属部门" << "客户专员" << "初次来访日"
                          << "建档日" << "客户类别" << "最近一次到店时间"
                          << "历史消费金额" << "会员卡类别" << "会员卡余额";
    } else {
        lstColName << "服务项目编号" << "车牌号码" << "服务项目类别"
                              << "服务子类别" << "保险金额"<< "索赔金额"
                              << "结算方式" << "维修起始时间" << "维修截止时间"
                              << "取车时间" << "维修部门" << "维修人员"
                              << "消费金额";
    }
}

void MainWindow::HideButton( bool bShow )
{
    ui->btnDelete->setVisible( bShow );
    ui->btnExport->setVisible( bShow );
    ui->btnImport->setVisible( bShow );
    ui->btnNew->setVisible( bShow );

    ui->btnIgnore->setVisible( !bShow );
}

void MainWindow::LayoutUI( )
{
    //Qt::WindowStates winStates =  windowState( );
    //winStates |= Qt::WindowMaximized;
    //setWindowState( winStates );
    showMaximized( );

    //ui->menuBar->setVisible( false );

    ui->centralWidget->setLayout( ui->horizontalLayout );
    ui->horizontalLayout->addWidget( ui->lblLeft );
    ui->horizontalLayout->addWidget( ui->widget );
    ui->horizontalLayout->addWidget( ui->widget_2 );
    ui->widget_2->setLayout( ui->verticalLayout);

    ui->widget_4->setLayout( ui->verticalLayout_3 );

    ui->widget->setLayout( ui->verticalLayout_2 );
    ui->verticalLayout_2->addWidget( ui->lblTop );
    ui->verticalLayout_2->addWidget( ui->tabWidget );

    ui->tabNewCustomer->setLayout( ui->gridLayout1 );
#if true
    ui->gridLayout1->addWidget( ui->widget15, 0, 0, 1, 4 );
    ui->gridLayout1->addWidget( ui->widget16, 1, 0, 1, 4 );

    ui->gridLayout1->addWidget( ui->widget11, 2, 0 );
    ui->gridLayout1->addWidget( ui->widget12, 2, 1 );
    ui->gridLayout1->addWidget( ui->widget13, 2, 2 );
    ui->gridLayout1->addWidget( ui->widget14, 2, 3 );
    ui->gridLayout1->addWidget( ui->tableView1, 3, 0, 1, 4 );
#else
    ui->gridLayout1->addWidget( ui->widget11, 0, 0 );
    ui->gridLayout1->addWidget( ui->widget12, 1, 0 );
    ui->gridLayout1->addWidget( ui->tableView1, 2, 0 );
#endif

    ui->tabUpdatingCustomer->setLayout( ui->gridLayout2 );
#if true
    ui->gridLayout2->addWidget( ui->widget25, 0, 0, 1, 4 );
    ui->gridLayout2->addWidget( ui->widget26, 1, 0, 1, 4 );

    ui->gridLayout2->addWidget( ui->widget21, 2, 0 );
    ui->gridLayout2->addWidget( ui->widget22, 2, 1 );
    ui->gridLayout2->addWidget( ui->widget23, 2, 2 );
    ui->gridLayout2->addWidget( ui->widget24, 2, 3 );
    ui->gridLayout2->addWidget( ui->tableView2, 3, 0, 1, 4 );
#else
    ui->gridLayout2->addWidget( ui->widget21, 0, 0 );
    ui->gridLayout2->addWidget( ui->widget22, 1, 0 );
    ui->gridLayout2->addWidget( ui->tableView2, 2, 0 );
#endif

    ui->tabAllCustomers->setLayout( ui->gridLayout3 );
    ui->gridLayout3->addWidget( ui->widget35, 0, 0, 1, 4 );// Seperator
    ui->gridLayout3->addWidget( ui->widget36, 1, 0, 1, 4 );// Seperator
    ui->gridLayout3->addWidget( ui->widget31, 2, 0 );
    ui->gridLayout3->addWidget( ui->widget32, 2, 1 );
    ui->gridLayout3->addWidget( ui->widget33, 2, 2 );
    ui->gridLayout3->addWidget( ui->widget34, 2, 3 );
    ui->gridLayout3->addWidget( ui->tableView3, 3, 0, 1, 4 );

#if true
    ui->widget11->setLayout( ui->formLayout11 );
    ui->widget12->setLayout( ui->formLayout12 );
    ui->widget13->setLayout( ui->formLayout13 );
    ui->widget14->setLayout( ui->formLayout14 );

    ui->widget21->setLayout( ui->formLayout21 );
    ui->widget22->setLayout( ui->formLayout22 );
    ui->widget23->setLayout( ui->formLayout23 );
    ui->widget24->setLayout( ui->formLayout24 );
#endif
    ui->widget31->setLayout( ui->formLayout31 );
    ui->widget32->setLayout( ui->formLayout32 );
    ui->widget33->setLayout( ui->formLayout33 );
    ui->widget34->setLayout( ui->formLayout34 );
}

void MainWindow::SetTitle(int nIndex)
{
    QString strText = ui->tabWidget->tabText( nIndex );
    setWindowTitle( whatsThis( ) + "-" + strText );
}

void MainWindow::ChangeTabBarTextColor(int nCurrentIndex)
{
    for ( int nIndex = 0; nIndex < 3; nIndex++ ) {
       ui->tabWidget->tabBar( )->setTabTextColor( nIndex,
                                                  ( nIndex == nCurrentIndex ) ?
                                                      QColor( 255, 0,0 ) : QColor( 0,0,0 ) );
    }
}

void MainWindow::on_tabWidget_currentChanged(int index)
{
    //QWidget* pWgt = ui->tabWidget->widget( index );
    ChangeTabBarTextColor( index );
    SetTitle( index );

    bool bAll = ( 2 == index );
    ui->widget_4->setMaximumHeight( bAll ? 230 : 80 );
    HideButton( bAll );
    DisplayStatusText( index );
}

void MainWindow::DeleteCustomerData( QModelIndex& modIndex, int nIndex )
{
    ParkSolution::TabCustomerInfo customerInfo;
    QSqlQueryModel* pModel = &modelCustomer[ nIndex ];
    QSqlRecord sqlRecord = pModel->record( modIndex.row( ) );
    QVariant varValue =  sqlRecord.field( customerInfo.strCustomerID ).value( );
    QString strCustomerID =varValue.toString( );
    QStringList lstParams;

    lstParams << QString::number( nIndex ) << strCustomerID;

    pDatabaseThread->PostIgnoreOrDeleteCustomerEvent( lstParams );
}

void MainWindow::QueryCustomerData( int nIndex )
{
    QString strWhere;
    GetQueryWhere( strWhere, nIndex );

    QStringList lstParams;
    lstParams << QString::number( nIndex ) << "0" << strWhere;
    QSqlQueryModel* pModel = &modelCustomer[ nIndex ];
    pDatabaseThread->PostQueryCustomerDataEvent( lstParams, pModel );
}

void MainWindow::HandleTabViewDoubleClicked( const QModelIndex &index )
{
    QSqlQueryModel* pModel = ( QSqlQueryModel* ) index.model( );
    if ( NULL == pModel ) {
        return;
    }

    QSqlRecord record = pModel->record( index.row( ) );
    ParkSolution::TabCustomerInfo customerInfo;
    QVariant varValue = record.value( customerInfo.strCustomerID );

    QString strValue = varValue.toString( );
    qDebug( ) << strValue << endl;
    QueryCustomerAllInfo( strValue );
}

QTableView* MainWindow::GetDlgQueryTableView( )
{
    return pDlgQueryInfo->GetTableView( );
}

QTableView* MainWindow::GetDlgEditNewTableView( )
{
    return pDlgEditNewInfo->GetTableView( );
}

QSqlQueryModel* MainWindow::GetQueryModel( )
{
    return pDlgQueryInfo->GetModel( );
}

QSqlQueryModel* MainWindow::GetEditNewModel( )
{
    return pDlgEditNewInfo->GetModel( );
}

void MainWindow::ConcatCommonDataWhere( QByteArray& byWhere, QString& strDataType, bool bComma )
{
    byWhere.append( "\\'" );
    byWhere.append( strDataType.toUtf8( ) );
    byWhere.append( "\\'" );

    if ( bComma ) {
        byWhere.append( ',' );
    }
}

void MainWindow::GetQueryCommonDataWhere( QString &strWhere )
{
    ParkSolution::CommonDataType dataType;
    QByteArray byWhere;

    ConcatCommonDataWhere( byWhere, dataType.strDistrict, true );
    ConcatCommonDataWhere( byWhere, dataType.strCustomerSource, true );
    ConcatCommonDataWhere( byWhere, dataType.strCustomerDepartment, true );
    ConcatCommonDataWhere( byWhere, dataType.strAccountExecutive, true );
    ConcatCommonDataWhere( byWhere, dataType.strCustomerCategory, true );
    ConcatCommonDataWhere( byWhere, dataType.strMembershipClass, true );
    ConcatCommonDataWhere( byWhere, dataType.strCustomerLevel, true );

    ConcatCommonDataWhere( byWhere, dataType.strBrand, true );
    ConcatCommonDataWhere( byWhere, dataType.strSeries, true );
    ConcatCommonDataWhere( byWhere, dataType.strColor, true );
    ConcatCommonDataWhere( byWhere, dataType.strFeature, true );
    ConcatCommonDataWhere( byWhere, dataType.strInsurer, true );
    ConcatCommonDataWhere( byWhere, dataType.strVehicleState, true );

    ConcatCommonDataWhere( byWhere, dataType.strServiceCategory, true );
    ConcatCommonDataWhere( byWhere, dataType.strServiceSubCategory, true );
    ConcatCommonDataWhere( byWhere, dataType.strSettlementStyle, true );
    ConcatCommonDataWhere( byWhere, dataType.strServiceDepartment, true );
    ConcatCommonDataWhere( byWhere, dataType.strMaintanceman, false );

    strWhere = QString( byWhere );
}

void MainWindow::QueryCommonData( )
{
    //set @txtValue = '<Data><DataType>\'District\',\'Brand\'</DataType></Data>';
    QStringList lstParams;
    QString strWhere;
    GetQueryCommonDataWhere( strWhere );
    lstParams << strWhere;
    pDatabaseThread->PostQueryCommonDataInfoEvent( lstParams );
}

void MainWindow::QueryServiceDataInfo( QString &strPlate, QSqlQueryModel* pModel )
{
    QStringList lstParams;
    lstParams << "2" << "" << strPlate << "0";
    pDatabaseThread->PostQueryServiceDataEvent( lstParams, pModel );
}

void MainWindow::QueryServiceDataInfo( QModelIndex& index, QSqlQueryModel* pModel )
{
    if ( !index.isValid( ) ) {
        return;
    }

    QSqlQueryModel* pMainModel = ( QSqlQueryModel* ) index.model( );
    if ( NULL == pMainModel ) {
        return;
    }

    QSqlRecord sqlRecord = pMainModel->record( index.row( ) );
    ParkSolution::TabVehicleInfo vehicleInfo;
    QVariant varValue = sqlRecord.value( vehicleInfo.strPlateID );
    QString strPlate = varValue.toString( );

    QStringList lstParams;
    lstParams << "2" << "" << strPlate << "0";
    pDatabaseThread->PostQueryServiceDataEvent( lstParams, pModel );
}

void MainWindow::QueryCustomerAllInfo( QString &strCustomerID )
{
    QStringList lstParams;
    lstParams << "1" << strCustomerID << "";
    pDatabaseThread->PostQueryCustomerVehicleDataEvent( lstParams );

    lstParams.clear( );
    lstParams << "1" << strCustomerID << "" << "0";
    pDatabaseThread->PostQueryServiceDataEvent( lstParams, 0 == ui->tabWidget->currentIndex( ) ?
                                                 GetEditNewModel( ) : GetQueryModel( ) );
}

void MainWindow::AssignTableviewArray( )
{
    tableView[ 0 ] = ui->tableView1;
    ui->tableView1->setModel( &modelCustomer[ 0 ] );
    connect( ui->tableView1, SIGNAL( doubleClicked( QModelIndex ) ),
             this, SLOT( HandleTabViewDoubleClicked( QModelIndex ) ) );

    tableView[ 1 ] = ui->tableView2;
    ui->tableView2->setModel( &modelCustomer[ 1 ] );
    connect( ui->tableView2, SIGNAL( doubleClicked( QModelIndex ) ),
             this, SLOT( HandleTabViewDoubleClicked( QModelIndex ) ) );

    tableView[ 2 ] = ui->tableView3;
    ui->tableView3->setModel( &modelCustomer[ 2 ] );
    connect( ui->tableView3, SIGNAL( doubleClicked( QModelIndex ) ),
             this, SLOT( HandleTabViewDoubleClicked( QModelIndex ) ) );
}

void MainWindow::closeEvent(QCloseEvent *event)
{
    bool bRet = QCommonFunction::SystemCloseEvent( this, event );

    if ( !bRet ) {
        return;
    }
}

void MainWindow::on_btnExport_clicked()
{
    QCommonFunction::SelectDirectory( this, strExportDataDir );
    qDebug( ) << Q_FUNC_INFO << strExportDataDir << endl;

    if ( strExportDataDir.isNull( ) || strExportDataDir.isEmpty( ) ) {
        return;
    }

    QString strWhere;
    GetAllWhere( strWhere );
    ExportCustomerInfo( strWhere );
}

void MainWindow::ImportCustomerInfo( QStringList &lstCustomerData )
{
   QString strCustomerData = lstCustomerData.join( "" );
   lstCustomerData.clear( );

   lstCustomerData << "0" << strCustomerData;
   pDatabaseThread->PostImportCustomerEvent( lstCustomerData );
}

void MainWindow::ExportCustomerInfo( QString &strWhere )
{
    QStringList lstParams;

    lstParams << strWhere;
    modelExportCustomer.clear( );
    pDatabaseThread->PostExportCustomerEvent( lstParams, &modelExportCustomer );
}

void MainWindow::on_btnImport_clicked()
{
    QString strFile = QFileDialog::getOpenFileName(
                  this, "选择要导入的Excel文件",
                  qApp->applicationDirPath( ),
                  "Excel文件(*.xls)", NULL,
                  QFileDialog::ShowDirsOnly );

    if ( strFile.isNull( ) || strFile.isEmpty( ) ) {
        return;
    }

    QStringList lstCustomerData;
    bool bRet = dataParser.ImportData( strFile,lstCustomerData );

    if ( !bRet )  {
        strFile = "请检查Excel程序是否正确安装，\n或者文件【" + strFile +"】格式是否正确。";
        QCommonFunction::InformationBox( this, strFile );
        return;
    }

    ImportCustomerInfo( lstCustomerData );
}

void MainWindow::on_btnNew_clicked()
{
    pDlgEditNewInfo->SetEditFlag( false );
    QueryCommonData( );
}

void MainWindow::on_btnIgnore_clicked()
{
    DeleteOrIgnoreCustomer( false );
}

QModelIndex MainWindow::GetTableViewModelIndex(int nIndex)
{
    QTableView* pTableView = GetCustomerTableView( nIndex );
    return pTableView->currentIndex( );
}

void MainWindow::on_btnEdit_clicked()
{
    QModelIndex index = GetTableViewModelIndex( ui->tabWidget->currentIndex( ) );

    if ( !index.isValid( ) ) {
        QString strText = "请选择要编辑的客户。";
        QCommonFunction::InformationBox( this, strText );
        return;
    }

    pDlgEditNewInfo->SetEditFlag( true );

    QueryCommonData( );
    QueryServiceDataInfo( index, GetEditNewModel( ) );
     //QString strFile;
    //dataParser.ExportData( strFile );
}

void MainWindow::GetDateWhere( QString& strDateWhere, QDateEdit* pDateEditStart, QDateEdit* pDateEditEnd, QString& strFieldName )
{
    if ( NULL == pDateEditStart ||
         NULL == pDateEditEnd ) {
        return;
    }

    strDateWhere += QString( " %1 between \\'%2 00:00:00\\' and \\'%3 23:59:59\\' " ).arg(
                strFieldName,
                pDateEditStart->text( ),
                pDateEditEnd->text( ) );
}

void MainWindow::GetOtherWhere( QString& strOtherWhere, QLineEdit* pEdit, QString& strFieldName, const char* pLogic )
{
    if ( NULL == pEdit ||
         NULL == pLogic ) {
        return;
    }

    QString strText = pEdit->text( ).toUpper( );
    if ( strText.isEmpty( ) ) {
        return;
    }

    strOtherWhere += QString( " %1 %2 like \\'%%3%\\' " ).arg(
                pLogic, strFieldName, strText );
}

void MainWindow::GetIncomingWhere( QString& strWhere )
{
    // % _ [abc] [^acb] [!abc]

    strWhere= "";
    ParkSolution::TabCustomerInfo customerInfo;
    ParkSolution::TabVehicleInfo vehicleInfo;

    switch ( ui->cbxIncoming->currentIndex() ) {
    case 0 :
        GetOtherWhere( strWhere, ui->edtIncomingOther, vehicleInfo.strPlateID, "" );
        break;

    case 1 :  
        GetDateWhere( strWhere, ui->dtIncomingStart, ui->dtIncomingEnd, customerInfo.strVistNewlyTime );
        GetOtherWhere( strWhere, ui->edtIncomingOther, vehicleInfo.strPlateID, "And" );
        break;
    }
}

void MainWindow::GetUpdatingWhere( QString& strWhere )
{
    strWhere= "";
    ParkSolution::TabCustomerInfo customerInfo;
    ParkSolution::TabVehicleInfo vehicleInfo;

    switch ( ui->cbxUpdating->currentIndex() ) {
    case 0 :
        GetOtherWhere( strWhere, ui->edtUpdatingOther,
                       customerInfo.strName, "" );
        GetOtherWhere( strWhere, ui->edtUpdatingOther,
                       vehicleInfo.strPlateID, "Or" );
        break;

    case 1 :
        GetDateWhere( strWhere, ui->dtUpdatingStart,
                      ui->dtUpdatingEnd,
                      customerInfo.strVistFirstTime );
        GetOtherWhere( strWhere, ui->edtUpdatingOther,
                       customerInfo.strName, "And (" );
        GetOtherWhere( strWhere, ui->edtUpdatingOther,
                       vehicleInfo.strPlateID, "Or" );

        if ( !ui->edtUpdatingOther->text( ).isEmpty( ) ) {
            strWhere += ")";
        }
        break;

    case 2 :
        GetDateWhere( strWhere, ui->dtUpdatingStart,
                      ui->dtUpdatingEnd,
                      customerInfo.strEntryTime );
        GetOtherWhere( strWhere, ui->edtUpdatingOther,
                       customerInfo.strName, "And (" );
        GetOtherWhere( strWhere, ui->edtUpdatingOther,
                       vehicleInfo.strPlateID, "Or" );

        if ( !ui->edtUpdatingOther->text( ).isEmpty( ) ) {
            strWhere += ")";
        }
        break;

    case 3 :
        GetDateWhere( strWhere, ui->dtUpdatingStart,
                      ui->dtUpdatingEnd,
                      customerInfo.strVistNewlyTime );
        GetOtherWhere( strWhere, ui->edtUpdatingOther,
                       customerInfo.strName, "And (" );
        GetOtherWhere( strWhere, ui->edtUpdatingOther,
                       vehicleInfo.strPlateID, "Or" );

        if ( !ui->edtUpdatingOther->text( ).isEmpty( ) ) {
            strWhere += ")";
        }
        break;
    }
}

void MainWindow::GetAllWhere( QString& strWhere )
{
    strWhere= "";
    ParkSolution::TabCustomerInfo customerInfo;
    ParkSolution::TabVehicleInfo vehicleInfo;

    switch ( ui->cbxAll->currentIndex() ) {
    case 0 :
        GetOtherWhere( strWhere, ui->edtAllOther,
                       customerInfo.strName, " (" );
        GetOtherWhere( strWhere, ui->edtAllOther,
                       vehicleInfo.strPlateID, "Or" );

        if ( !ui->edtAllOther->text( ).isEmpty( ) ) {
            strWhere += ")";
        }
        break;

    case 1 :
        GetDateWhere( strWhere, ui->dtAllStart,
                      ui->dtAllEnd,
                      customerInfo.strVistFirstTime );
        GetOtherWhere( strWhere, ui->edtAllOther,
                       customerInfo.strName, "And (" );
        GetOtherWhere( strWhere, ui->edtAllOther,
                       vehicleInfo.strPlateID, "Or" );

        if ( !ui->edtAllOther->text( ).isEmpty( ) ) {
            strWhere += ")";
        }
        break;

    case 2 :
        GetDateWhere( strWhere, ui->dtAllStart,
                      ui->dtAllEnd,
                      customerInfo.strEntryTime );
        GetOtherWhere( strWhere, ui->edtAllOther,
                       customerInfo.strName, "And (" );
        GetOtherWhere( strWhere, ui->edtAllOther,
                       vehicleInfo.strPlateID, "Or" );

        if ( !ui->edtAllOther->text( ).isEmpty( ) ) {
            strWhere += ")";
        }
        break;

    case 3 :
        GetDateWhere( strWhere, ui->dtAllStart,
                      ui->dtAllEnd,
                      customerInfo.strVistNewlyTime );
        GetOtherWhere( strWhere, ui->edtAllOther,
                       customerInfo.strName, "And (" );
        GetOtherWhere( strWhere, ui->edtAllOther,
                       vehicleInfo.strPlateID, "Or" );

        if ( !ui->edtAllOther->text( ).isEmpty( ) ) {
            strWhere += ")";
        }
        break;
    }
}

void MainWindow::GetQueryWhere( QString &strWhere, int nIndex )
{
    switch ( nIndex ) {
    case 0 :
        GetIncomingWhere( strWhere );
        break;

    case 1 :
        GetUpdatingWhere( strWhere );
        break;

    case 2 :
        GetAllWhere( strWhere );
        break;
    }
}

void MainWindow::on_btnQuery_clicked()
{
    //QString strFile = "D:/ParkSolution/Document/1月.xls";
    //QStringList lstCustomerData;
    //dataParser.ImportData( strFile, lstCustomerData );
    //QString strFormat = "";
    //strFormat.sprintf( "%s", "拟好" );

    QueryCustomerData( ui->tabWidget->currentIndex( ) );
}

void MainWindow::ShowEditNewDlg( QPushButton* pClickedButton )
{
    pDlgEditNewInfo->setWindowTitle( pClickedButton->text( ) + pDlgEditNewInfo->whatsThis( ) );
    pDlgEditNewInfo->exec( );
}

void MainWindow::ShowInfoDlg( QPushButton* pClickedButton )
{
    if ( NULL == pClickedButton ) {
        pDlgQueryInfo->exec( );
    } else if ( ui->btnEdit == pClickedButton ) {
        ShowEditNewDlg( pClickedButton );
    } else if ( ui->btnNew == pClickedButton ) {
        ShowEditNewDlg( pClickedButton );
    }
}

void MainWindow::HandleQueryCommonDataRecord( QStringList& lstParams )
{
    pDatabaseThread->PostQueryCommonDataByTypeEvent( lstParams, pDlgCommonData->GetModel( ) );
}

void MainWindow::HandleChangeCommonDataRecord( QString strDataType, QStringList& lstParams )
{
    pDatabaseThread->PostChangeCommonDataEvent( lstParams );

    QStringList lstQueryType;
    lstQueryType << strDataType;
    HandleQueryCommonDataRecord( lstQueryType );
}

void MainWindow::ControlDialog( )
{
    pDlgQueryInfo = new QDlgQueryInfo( this );
    QCommonFunction::DisableHelpButton( pDlgQueryInfo );

    pDlgEditNewInfo = new QDlgEditNewInfo( this );
    QCommonFunction::DisableHelpButton( pDlgEditNewInfo );

    pDlgCommonData = new QDlgCommonData( this );

    connect( pDlgEditNewInfo, SIGNAL( ChangeCustomerVehicleData( QStringList& ) ),
             this, SLOT( HandleChangeCustomerVehicleData( QStringList& ) ) );

    connect( pDlgEditNewInfo, SIGNAL( ChangeServiceRecord( QStringList& ) ),
             this, SLOT( HandleChangeServiceRecord( QStringList& ) ) );

    connect( pDlgCommonData, SIGNAL( ChangeCommonDataRecord( QString, QStringList& ) ),
             this, SLOT( HandleChangeCommonDataRecord( QString, QStringList& ) ) );

    connect( pDlgCommonData, SIGNAL( QueryCommonDataRecord( QStringList& ) ),
             this, SLOT( HandleQueryCommonDataRecord( QStringList& ) ) );

    pDlgCommonData->FillComboBox( );
}

void MainWindow::ClearCustomerData( )
{
    pDlgEditNewInfo->ClearData( );
    QString strPlate = "";
    QueryServiceDataInfo( strPlate, GetEditNewModel( ) );
}

void MainWindow::HandleChangeCustomerVehicleData( QStringList &lstParams )
{
    pDatabaseThread->PostChangeCustomerVehicleDataEvent( lstParams );

    if ( 2 != ui->tabWidget->currentIndex( ) ) {
        ClearCustomerData( );
    }
}

void MainWindow::HandleChangeServiceRecord( QStringList &lstParams )
{
    pDatabaseThread->PostChangeServiceRecordEvent( lstParams );
}

void MainWindow::HideTableViewColumn( QTableView* pTableView, int nHidenColumn )
{
    for ( int nIndex = 0; nIndex < nHidenColumn; nIndex++ ) {
        pTableView->hideColumn( nIndex );
    }
}

void MainWindow::SetViewColumnName( QSqlQueryModel* pModel, QStringList& lstColName, int nHidenCol  )
{
    for ( int nIndex = 0; nIndex < lstColName.count( ); nIndex++ ) {
        pModel->setHeaderData( nIndex + nHidenCol, Qt::Horizontal, lstColName.at( nIndex ) );
    }
}

void MainWindow::DeleteOrIgnoreCustomer( bool bDelete )
{
    QModelIndex modIndex = GetTableViewModelIndex( ui->tabWidget->currentIndex( ) );
    QString strText;

    if ( !modIndex.isValid( ) ) {
        strText = QString( "请选择要%1的客户。" ).arg( bDelete ? "删除" : "忽略" );
        QCommonFunction::InformationBox( this, strText );
        return;
    }

    strText = bDelete ? "确定要删除该客户及其相关的车辆、服务信息吗？" :
                        "确定要忽略该客户吗？";

    if ( QMessageBox::Cancel == QCommonFunction::DeleteDataBox( this, strText ) ) {
        return;
    }

    int nIndex = ui->tabWidget->currentIndex( );
    DeleteCustomerData( modIndex, nIndex );
}

void MainWindow::on_btnDelete_clicked()
{
    DeleteOrIgnoreCustomer( true );
}

void MainWindow::on_cbxIncoming_currentIndexChanged(int index)
{
    EnableIncomingDateCtrl( 0 != index );
}

void MainWindow::on_cbxUpdating_currentIndexChanged(int index)
{
    EnableUpdatingDateCtrl( 0 != index );
}

void MainWindow::on_cbxAll_currentIndexChanged(int index)
{
    EnableAllDateCtrl( 0 != index );
}

void MainWindow::on_actCommonData_triggered()
{
    pDlgCommonData->exec( );
}

void MainWindow::on_actExit_triggered()
{
    close( );
}
