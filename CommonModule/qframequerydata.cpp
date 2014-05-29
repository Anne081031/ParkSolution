#include "qframequerydata.h"
#include "ui_qframequerydata.h"
#include "qcommonfunction.h"

QFrameQueryData::QFrameQueryData(QWidget *parent) :
    QFrame(parent),
    ui(new Ui::QFrameQueryData)
{
    ui->setupUi(this);

    MainLayoutUI( );
    RecordLayoutUI( );
    InitializeTabWidget( );

    CreateBackgroundForm( );
    SetModel4View( );
}

QFrameQueryData::~QFrameQueryData()
{
    delete ui;
}

void QFrameQueryData::CreateBackgroundForm( )
{
    // Dynamic Property
    QResizeForm& frmIn = bkForms[ 0 ];
    const char* pName = frmIn.objectName( ).toUtf8( ).data( );
    frmIn.setLayout( ui->horizontalLayout_3 );
    connect( &frmIn, SIGNAL( Resize( QSize ) ),
            this, SLOT( HandleResize( QSize ) ) );
    frmIn.setProperty( pName, ( quint32 ) ui->lblInImage );

    QResizeForm& frmOut = bkForms[ 1 ];
    frmOut.setLayout( ui->horizontalLayout_4 );
    connect( &frmOut, SIGNAL( Resize( QSize ) ),
            this, SLOT( HandleResize( QSize ) ) );
    frmOut.setProperty( pName, ( quint32 ) ui->lblOutImage );
}

void QFrameQueryData::HandleResize( QSize bkSize )
{
    QResizeForm* pForm = ( QResizeForm* ) sender( );
    const char* pName = pForm->objectName( ).toUtf8( ).data( );
    QLabel* pLbl = ( QLabel* )  pForm->property( pName ).toUInt( );

    if ( NULL == pLbl ) {
        return;
    }

    int nDeltaX = 0;
    int nDeltaY = 0;

    pLbl->setGeometry( nDeltaX, nDeltaY,
                       bkSize.width( ) - nDeltaX,
                       bkSize.height( ) - nDeltaY );
}

void QFrameQueryData::closeEvent(QCloseEvent *e)
{
    if ( !QCommonFunction::CloseDiaglogBox( this, e ) ) {
        return;
    }

    hashStringByteArray[ 0 ].clear( );
    hashStringByteArray[ 1 ].clear( );
}

void QFrameQueryData::QueryInOutRecordFinished( )
{
    ui->tabInOutRecord->hideColumn( 0 );
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

    QJsonObject jsonObj = jsonDoc.object( );
    QString strRecordID = jsonObj.value( "RecordID" ).toString( );
    QString strInImage = jsonObj.value( "EnterImage" ).toString( );
    QString strOutImage = jsonObj.value( "LeaveImage" ).toString( );

    GetImageFirst( false, strRecordID, strInImage, ui->lblInImage );
    GetImageFirst( true, strRecordID, strOutImage, ui->lblOutImage );
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
    ui->tabInOutRecord->setModel( &sqlInOutRecordModel );
}

void QFrameQueryData::MainLayoutUI( )
{
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
    ui->tabRecord->setLayout( ui->gridLayout );

    ui->gridLayout->addWidget( ui->widget, 0, 0 );
    ui->widget->setLayout( ui->horizontalLayout_2 );

    QCommonFunction::SetButtonMiniSize( ui->btnInOutRecordQuery, 85 );

    ui->gridLayout->addWidget( ui->label_4, 1, 0 );
    ui->gridLayout->addWidget( ui->tabCustomerInfo, 2, 0 );
    ui->gridLayout->addWidget( ui->label_5, 3, 0 );
    ui->gridLayout->addWidget( ui->tabVehicleInfo, 4, 0 );
    ui->gridLayout->addWidget( ui->label_6, 5, 0 );
    ui->gridLayout->addWidget( ui->tabServiceRecord, 6, 0 );
    ui->gridLayout->addWidget( ui->label_7, 7, 0 );
    ui->gridLayout->addWidget( ui->tabInOutRecord, 8, 0 );
    ui->gridLayout->addWidget( &bkForms[ 0 ], 1, 1, 4, 1 );
    ui->gridLayout->addWidget( &bkForms[ 1 ], 5, 1, 4, 1 );
}

void QFrameQueryData::on_btnInOutRecordQuery_clicked()
{
    QStringList lstParams;
    lstParams << "0" << ui->edtPlate->text( )
              << ui->dtRecordStart->text( ) << ui->dtRecordEnd->text( );

    emit QueryDataset( lstParams, &sqlInOutRecordModel );
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
    QSqlQueryModel* pModel = ( QSqlQueryModel* ) index.model( );
    QSqlRecord sqlRecord = pModel->record( index.row( ) );
    QString strRecordID = sqlRecord.value( "RecordID" ).toString( );

    bool bRet = LoadImage( false, strRecordID, ui->lblInImage );

    if ( !bRet ) {
        QStringList lstParams;

        lstParams << "0" << strRecordID;
        emit QueryData( lstParams );
    }

    bRet = LoadImage( true, strRecordID, ui->lblOutImage );
}
