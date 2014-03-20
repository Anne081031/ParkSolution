#include "qdlgcommondata.h"
#include "ui_qdlgcommondata.h"
#include "../CommonModule/CommonHeader.h"
#include <QMenu>

QDlgCommonData::QDlgCommonData(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::QDlgCommonData)
{
    ui->setupUi(this);
    QCommonFunction::DisableHelpButton( this );
    //FillComboBox( );
    ui->tabCommonData->setModel( &modelService );
    pDlgEditNewCommonData = new QDlgEditNewCommonData( this );

    connect( pDlgEditNewCommonData, SIGNAL( ChangeCommonDataRecord( QString, QStringList& ) ),
             this, SLOT( HandleChangeCommonDataRecord( QString, QStringList& ) ) );
}

QDlgCommonData::~QDlgCommonData()
{
    delete pDlgEditNewCommonData;
    delete ui;
}

QTableView* QDlgCommonData::GetTableView( )
{
    return ui->tabCommonData;
}

QSqlQueryModel* QDlgCommonData::GetModel( )
{
    return &modelService;
}

QStringList& QDlgCommonData::GetParamsList( )
{
    return lstParams;
}

bool QDlgCommonData::ProcessSpResult( ParkSolution::SpType eSpType, QByteArray &byData )
{
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
    QString strValueID;
    int nOperateCode;

    strValueID = jsonObject.value( "ValueD" ).toString( );
    nOperateCode = jsonObject.value( "OperateCode" ).toInt( );

    if ( ParkSolution::SpChangeCommonDataUI == eSpType ) {
        if ( 1 == nOperateCode ) {
            pDlgEditNewCommonData->SetValueID( strValueID );
        }
    } else if ( ParkSolution::SpChangeCommonDataDelete == eSpType ) {
        ;
    }

    return bRet;
}

void QDlgCommonData::InsertItem( QString &strDataType, QString strChinese )
{
    ui->cbxDataType->addItem( strChinese, strDataType );
}

void QDlgCommonData::HandleCurrentIndexChanged( int nIndex )
{
    if ( -1 == nIndex ) {
        return;
    }

    QComboBox* pCbx = ( QComboBox* ) sender( );
    QString strDataType = pCbx->currentData( ).toString( );

    QStringList lstParams;
    lstParams << strDataType;

    emit QueryCommonDataRecord( lstParams );

    ui->tabCommonData->selectRow( 0 );
}

void QDlgCommonData::HideColumn( )
{
    ui->tabCommonData->hideColumn( 0 );
    ui->tabCommonData->hideColumn( 1 );
}

void QDlgCommonData::FillComboBox( )
{
    ParkSolution::CommonDataType dataType;

    InsertItem( dataType.strDistrict, "所属区域" );
    InsertItem( dataType.strCustomerSource, "客户来源" );
    InsertItem( dataType.strCustomerDepartment, "部门" );
    InsertItem( dataType.strAccountExecutive, "客户专员" );
    InsertItem( dataType.strCustomerCategory, "客户类别" );
    InsertItem( dataType.strMembershipClass, "会员卡类别" );

    InsertItem( dataType.strBrand, "车辆品牌" );
    InsertItem( dataType.strSeries, "车系" );
    InsertItem( dataType.strColor, "车辆颜色" );
    InsertItem( dataType.strFeature, "车辆类型" );
    InsertItem( dataType.strInsurer, "保险公司" );
    InsertItem( dataType.strVehicleState, "车辆总体状态" );

    InsertItem( dataType.strServiceCategory, "服务项目类别" );
    InsertItem( dataType.strServiceSubCategory, "服务子类别" );
    InsertItem( dataType.strSettlementStyle, "结算方式" );
    //InsertItem( dataType.strServiceDepartment, "" );
    InsertItem( dataType.strMaintanceman, "维修人员" );

    connect( ui->cbxDataType, SIGNAL( currentIndexChanged( int ) ),
             this, SLOT( HandleCurrentIndexChanged( int ) ) );

    ui->cbxDataType->setCurrentIndex( - 1 );
    ui->cbxDataType->setCurrentIndex( 0 );
}

void QDlgCommonData::EditRecord( )
{
    QAction* pAct = ( QAction* ) sender( );
    ShowChangeDlg( true, pAct );
}

void QDlgCommonData::AddRecord( )
{
    QAction* pAct = ( QAction* ) sender( );
    ShowChangeDlg( false, pAct );
}

void QDlgCommonData::HandleChangeCommonDataRecord( QString strDataType, QStringList &lstParams )
{
    emit ChangeCommonDataRecord( strDataType, lstParams );
}

void QDlgCommonData::CreateContextMenu( QWidget* parent )
{
    static QMenu* pMenu = NULL;

    if ( NULL == pMenu ) {
        pMenu = new QMenu( parent );
        pMenu->addAction( "编辑", this, SLOT( EditRecord( ) ) );
        pMenu->addAction( "新增", this, SLOT( AddRecord( ) ) );
    }

    QTableView* pView =( QTableView* ) parent;

    pMenu->actions( ).at( 0 )->setEnabled( pView->currentIndex( ).isValid( ) );
    pMenu->exec( parent->cursor( ).pos( ) );
}

void QDlgCommonData::ShowChangeDlg( bool bEdit, QAction* pAct )
{
    QString strText = pAct->text( ) +
            ui->cbxDataType->currentText( )
            + pDlgEditNewCommonData->whatsThis( );
    pDlgEditNewCommonData->setWindowTitle( strText );
    pDlgEditNewCommonData->SetFlag( bEdit );

    pDlgEditNewCommonData->SetTableView( ui->tabCommonData );

    QString strDataType = ui->cbxDataType->currentData( ).toString( );
    pDlgEditNewCommonData->SetDataType( strDataType );
    pDlgEditNewCommonData->exec( );
}

void QDlgCommonData::on_tabCommonData_customContextMenuRequested(const QPoint &pos)
{
    Q_UNUSED( pos )
    QWidget* pWgt = ( QWidget* ) sender( );
    CreateContextMenu( pWgt );
}
