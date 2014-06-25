#include "qframequerydata.h"
#include "ui_qframequerydata.h"
#include "qcommonfunction.h"

QFrameQueryData::QFrameQueryData(QWidget *parent) :
    QFrame(parent),
    ui(new Ui::QFrameQueryData)
{
    ui->setupUi(this);

    strFilePath = QString( "file:///%1/Report/VehicleTemplate.html" ).arg( qApp->applicationDirPath( ) );
    CreateImageLabel( );
    MainLayoutUI( );
    QCommonFunction::LoadChartType( ui->cbxChartType );
    RecordLayoutUI( );
    InitializeTabWidget( );
    InitializeDateTime( );

    CreateBackgroundForm( );
    SetModel4View( );
}

void QFrameQueryData::CreateImageLabel( )
{
    lblInImage = new QMyLabel( this );
    lblInImage->SetCloseDialog( false );

    lblOutImage = new QMyLabel( this );
    lblOutImage->SetCloseDialog( false );
}

QFrameQueryData::~QFrameQueryData()
{
    delete lblInImage;
    delete lblOutImage;
    delete ui;
}

void QFrameQueryData::InitializeDateTime( )
{
    QDateTime dtDateTime = QDateTime::currentDateTime( );
    ui->dtRecordEnd->setDateTime( dtDateTime );

    dtDateTime =  dtDateTime.addMonths( -1 );
    ui->dtRecordStart->setDateTime( dtDateTime );
}

void QFrameQueryData::InitializeResizeForm( QResizeForm* pForm, QHBoxLayout* pLayout, QLabel* pLbl )
{
    QString strName = pForm->objectName( );
    QByteArray byData = strName.toUtf8( );
    byData.append( '\0' );
    const char* pName = byData.data( );
    pForm->setLayout( pLayout );
    pLayout->addWidget( pLbl );
    connect( pForm, SIGNAL( Resize( QSize ) ),
            this, SLOT( HandleResize( QSize ) ) );
    pForm->setProperty( pName, ( quint32 ) pLbl );
}

void QFrameQueryData::CreateBackgroundForm( )
{
    // Dynamic Property
    InitializeResizeForm( &bkForms[ 0 ], ui->horizontalLayout_3, lblInImage );
    InitializeResizeForm( &bkForms[ 1 ], ui->horizontalLayout_4, lblOutImage );
}

void QFrameQueryData::HandleResize( QSize bkSize )
{
    QResizeForm* pForm = ( QResizeForm* ) sender( );
    QString strName = pForm->objectName( );
    QByteArray byData = strName.toUtf8( );
    byData.append( '\0' );
    const char* pName = byData.data( );
    QLabel* pLbl = ( QLabel* )  pForm->property( pName ).toUInt( );

    if ( NULL == pLbl ) {
        return;
    }

    int nDeltaX = 0;
    int nDeltaY = 0;

    qDebug( ) << QString::number( bkSize.width( ) )
              << QString::number( bkSize.height( ) ) << endl;

    pLbl->setMaximumSize(  bkSize );
    pLbl->setGeometry( nDeltaX, nDeltaY,
                       bkSize.width( ) - nDeltaX,
                       bkSize.height( ) - nDeltaY );
}

void QFrameQueryData::closeEvent(QCloseEvent *e)
{
    //if ( !QCommonFunction::CloseDiaglogBox( this, e ) ) {
    //    return;
    //}

    hashStringByteArray[ 0 ].clear( );
    hashStringByteArray[ 1 ].clear( );
}

void QFrameQueryData::QueryInOutRecordFinished( )
{
    ui->tabInOutRecord->hideColumn( 0 );
}

void QFrameQueryData::QueryCustomerFinished( )
{
    ui->tabCustomerInfo->hideColumn( 0 );
}

void QFrameQueryData::QueryVehicleFinished( )
{
    ui->tabVehicleInfo->hideColumn( 0 );

    if ( 0 < ui->tabVehicleInfo->model( )->rowCount( ) ) {
        ui->tabVehicleInfo->selectRow( 0 );
        QueryChartData(  ui->cbxType->currentIndex( ) );
    }
}

void QFrameQueryData::QueryServiceDataFinished( )
{

}

void QFrameQueryData::QueryChartFinished( QByteArray &byData )
{
    if ( 0 == byData.size( ) ) {
        return;
    }

    QFile file( "./Report/datavehicle.json" );
    if ( !file.open( QIODevice::Truncate | QIODevice::ReadWrite ) ) {
        return;
    }

    file.write( byData );
    file.close( );

    QUrl url( strFilePath );
    ui->webView->setUrl( url );
}

void QFrameQueryData::QueryImageFinished( QByteArray &byData )
{
    QJsonParseError jsonError;
    QJsonDocument jsonDoc = QJsonDocument::fromJson( byData, &jsonError );

    if ( QJsonParseError::NoError != jsonError.error ) {
        qDebug( ) << jsonError.errorString( ) << endl;
        return;
    }

    if ( jsonDoc.isNull( ) || jsonDoc.isEmpty( ) || !jsonDoc.isObject( ) ) {
        return;
    }

    ParkSolution::TabInOutRecordInfo tabImageInfo;

    QJsonObject jsonObj = jsonDoc.object( );
    QString strRecordID = jsonObj.value( tabImageInfo.strRecordID ).toString( );
    QString strInImage = jsonObj.value( tabImageInfo.strEnterImage ).toString( );
    QString strOutImage = jsonObj.value( tabImageInfo.strLeaveImage ).toString( );

    GetImageFirst( false, strRecordID, strInImage, lblInImage );
    GetImageFirst( true, strRecordID, strOutImage, lblOutImage );
}

void QFrameQueryData::GetImageFirst( bool bLeave, const QString& strRecordID, const QString& strImage64, QLabel* pLbl )
{
    QByteArray byImage;
    QCommonFunction::GetImageFromBase64( byImage, strImage64 );
    hashStringByteArray[ bLeave ].insert( strRecordID, byImage );
    LoadImage( bLeave, strRecordID, pLbl );
}

void QFrameQueryData::SetModel4View( )
{
    ui->tabCustomerInfo->setModel( &sqlCustomerModel );
    ui->tabVehicleInfo->setModel( &sqlVehicleModel );
    ui->tabServiceRecord->setModel( &sqlServiceDataModel );
    ui->tabInOutRecord->setModel( &sqlInOutRecordModel );
}

void QFrameQueryData::MainLayoutUI( )
{
    setWindowState( Qt::WindowMaximized );
    ui->horizontalLayout->addWidget( ui->tabWidget );
    setLayout( ui->horizontalLayout );
}

void QFrameQueryData::InitializeTabWidget( )
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

void QFrameQueryData::SetTitle( int nIndex )
{
    QString strText = ui->tabWidget->tabText( nIndex );
    setWindowTitle( whatsThis( ) + "-" + strText );
}

void QFrameQueryData::ChangeTabBarTextColor( int nCurrentIndex )
{
    for ( int nIndex = 0; nIndex < 2; nIndex++ ) {
       ui->tabWidget->tabBar( )->setTabTextColor( nIndex,
                                                  ( nIndex == nCurrentIndex ) ?
                                                      QColor( 255, 0,0 ) : QColor( 0,0,0 ) );
    }
}

void QFrameQueryData::RecordLayoutUI( )
{
    ui->tabRecord->setLayout( ui->gridLayoutMain );

    ui->gridLayoutMain->addWidget( ui->widgetLeft, 0, 0 );
    ui->gridLayoutMain->addWidget( ui->widgetRight, 0, 1 );

    ui->widgetLeft->setLayout( ui->gridLayoutLeft );
    ui->widgetRight->setLayout( ui->gridLayoutRight );

    ui->gridLayoutLeft->addWidget( ui->widget, 0, 0 );
    ui->widget->setLayout( ui->horizontalLayout_2 );

    QCommonFunction::SetButtonMiniSize( ui->btnInOutRecordQuery, 85 );

    ui->gridLayoutLeft->addWidget( ui->label_4, 1, 0 );
    ui->gridLayoutLeft->addWidget( ui->tabCustomerInfo, 2, 0 );
    ui->gridLayoutLeft->addWidget( ui->label_5, 3, 0 );
    ui->gridLayoutLeft->addWidget( ui->tabVehicleInfo, 4, 0 );
    ui->gridLayoutLeft->addWidget( ui->label_6, 5, 0 );
    ui->gridLayoutLeft->addWidget( ui->tabServiceRecord, 6, 0 );
    ui->gridLayoutLeft->addWidget( ui->label_7, 7, 0 );
    ui->gridLayoutLeft->addWidget( ui->tabInOutRecord, 8, 0 );

    ui->gridLayoutRight->addWidget( &bkForms[ 0 ], 0, 0 );
    ui->gridLayoutRight->addWidget( &bkForms[ 1 ], 0, 1 );
    ui->gridLayoutRight->addWidget( ui->widget_2, 1, 0, 1, 2 );
    ui->gridLayoutRight->addWidget( ui->webView, 2, 0, 1, 2 );

    ui->widget_2->setLayout( ui->horizontalLayout_5 );
}

void QFrameQueryData::QueryResultset( QStringList& lstParams, Resultset eType )
{
    switch ( eType ) {
    case CustomerData :
        emit QueryDataset( lstParams, &sqlCustomerModel, eType );
        break;

    case VehicleData :
        emit QueryDataset( lstParams, &sqlVehicleModel, eType );
        break;

    case ServiceData :
        emit QueryDataset( lstParams, &sqlServiceDataModel, eType );
        break;

    case InOutRecordData :
        emit QueryDataset( lstParams, &sqlInOutRecordModel, eType );
        break;
    }
}

void QFrameQueryData::on_btnInOutRecordQuery_clicked()
{
    if ( ui->edtPlate->text( ).isEmpty( ) ) {
        QString strText = "请输入车牌号，可以是车牌号的一部份。";
        QCommonFunction::InformationBox( this, strText );
        return;
    }

    QStringList lstParams;
    lstParams << "0" << ui->edtPlate->text( );
    QueryResultset( lstParams, CustomerData );

    lstParams.clear( );
    lstParams << "0" << "0" << ui->edtPlate->text( );
    QueryResultset( lstParams, VehicleData );

    lstParams.clear( );
    lstParams << "0" << ui->edtPlate->text( ) <<
    ui->dtRecordStart->text( ) << ui->dtRecordEnd->text( );
    QueryResultset( lstParams, InOutRecordData );
}

void QFrameQueryData::on_tabWidget_currentChanged(int index)
{
    ChangeTabBarTextColor( index );
    SetTitle( index );
}

bool QFrameQueryData::LoadImage( bool bLeave, const QString& strRecordID, QLabel* pLbl )
{
    ParkSolution::QStringByteArrayHash& hash = hashStringByteArray[ bLeave ];
    bool bRet = hash.contains( strRecordID );

    if ( bRet ) {
        QPixmap pixmap;
        QByteArray byImage = hash[ strRecordID ];
        pixmap.loadFromData( byImage );
        pLbl->setPixmap( pixmap );
    }

    return bRet;
}

void QFrameQueryData::on_tabInOutRecord_clicked(const QModelIndex &index)
{
    ParkSolution::TabInOutRecordInfo recordInfo;
    QString strValue;
    GetKeyValue( index, recordInfo.strRecordID, strValue );

    bool bRet = LoadImage( false, strValue, lblInImage );

    if ( !bRet ) {
        QStringList lstParams;

        lstParams << "0" << strValue;
        emit QueryData( lstParams );
    }

    bRet = LoadImage( true, strValue, lblOutImage );
}

void QFrameQueryData::GetKeyValue( const QModelIndex &index, const QString& strKey, QString& strValue )
{
    QSqlQueryModel* pMpdel = ( QSqlQueryModel* ) index.model( );
    QSqlRecord sqlRecord = pMpdel->record( index.row( ) );
    strValue = sqlRecord.field( strKey ).value( ).toString( );
}

void QFrameQueryData::on_tabCustomerInfo_clicked(const QModelIndex &index)
{
    ParkSolution::TabCustomerInfo customerInfo;
    QString strValue;
    GetKeyValue( index, customerInfo.strCustomerID, strValue );

    QStringList lstParams;
    lstParams << "0" << strValue << "";
    QueryResultset( lstParams, VehicleData );
}

void QFrameQueryData::on_tabVehicleInfo_clicked(const QModelIndex &index)
{
    ParkSolution::TabVehicleInfo vehicleInfo;
    QString strValue;
    GetKeyValue( index, vehicleInfo.strPlateID, strValue );

    QStringList lstParams;
    lstParams << "2" << "0" << strValue << "100";
    QueryResultset( lstParams, ServiceData );

    lstParams.clear( );
    lstParams << "0" << strValue <<
                 ui->dtRecordStart->text( ) <<
                 ui->dtRecordEnd->text( );
    QueryResultset( lstParams, InOutRecordData );
    QueryChartData(  ui->cbxType->currentIndex( ) );
}

void QFrameQueryData::SetTrendName( const QString &strPlate )
{
    ui->lblTrend->setText( QString( "趋势图 %1" ).arg( strPlate ) );
}

void QFrameQueryData::QueryChartData( int nIndex )
{
    QModelIndex sqlIndex = ui->tabVehicleInfo->currentIndex( );
    if ( !sqlIndex.isValid( ) ) {
        return;
    }

    ParkSolution::TabVehicleInfo vehicleInfo;
    QString strKey = vehicleInfo.strPlateID;
    QString strValue;
    GetKeyValue( sqlIndex, strKey, strValue);

    QStringList lstParams;
    lstParams << QString::number( nIndex ) <<
                 ui->dtRecordStart->text( ) <<
                 ui->dtRecordEnd->text( ) <<
                 ui->cbxChartType->currentData( ).toString( ) << strValue;

    SetTrendName( strValue );
    emit QueryChart( lstParams );
}

void QFrameQueryData::on_cbxType_currentIndexChanged(int index)
{
    QueryChartData( index );
}

void QFrameQueryData::on_cbxChartType_currentIndexChanged(int index)
{
    index = ui->cbxType->currentIndex( );
    QueryChartData(  index );
}
