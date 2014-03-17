#include "qdlgsvcqueryinfo.h"
#include "ui_qdlgsvcqueryinfo.h"

QDlgSvcQueryInfo::QDlgSvcQueryInfo(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::QDlgSvcQueryInfo)
{
    ui->setupUi(this);
    QCommonFunction::DisableHelpButton( this );
    FillHash( );
    nCurrentRow = -1;
}

QDlgSvcQueryInfo::~QDlgSvcQueryInfo()
{
    delete ui;
}

void QDlgSvcQueryInfo::FillHash( )
{
    FillServiceEdit( );
}

void QDlgSvcQueryInfo::FillServiceEdit( )
{
    ParkSolution::TabServiceRecord tabService;

    hashWidget.insert( tabService.strServiceID, ui->edtServiceID );
    hashWidget.insert( tabService.strPlateID, ui->edtPlateID );
    hashWidget.insert( tabService.strCategory, ui->edtCategory );
    hashWidget.insert( tabService.strSubCategory, ui->edtSubCategory );
    hashWidget.insert( tabService.strInsuranceAmount, ui->edtInsuranceAmount );
    hashWidget.insert( tabService.strClaimAmount, ui->edtClaimAmount );
    hashWidget.insert( tabService.strSettlementStyle, ui->edtSettlementStyle );
    hashWidget.insert( tabService.strMaintanceStartTime, ui->edtMaintanceStartTime );
    hashWidget.insert( tabService.strMaintanceEndTime, ui->edtMaintanceEndTime );
    hashWidget.insert( tabService.strPickupTime, ui->edtPickupTime );
    hashWidget.insert( tabService.strDepartment, ui->edtServiceDepartment );
    hashWidget.insert( tabService.strMaintanceman, ui->edtMaintanceman );
    hashWidget.insert( tabService.strConsumptionAmount, ui->edtServiceConsumptionAmount );
}

void QDlgSvcQueryInfo::SetTableView( QTableView* pView )
{
    pTableView = pView;

    if ( !pView->currentIndex( ).isValid( ) ) {
        return;
    }

    SetControlValue( nCurrentRow );
}

void QDlgSvcQueryInfo::SetValue( QSqlRecord& sqlRecord, QString& strCtrlID, QString& strFieldID )
{
    QVariant varValue = sqlRecord.value( strFieldID );
    QLineEdit* pEdit = ( QLineEdit* ) hashWidget[ strCtrlID ];

    if ( NULL == pEdit ) {
        return;
    }

    pEdit->setText( varValue.toString( ) );
}

void QDlgSvcQueryInfo::SetControlValue( int nRow )
{
    QSqlQueryModel* pModel = ( QSqlQueryModel* ) pTableView->model( );
    if ( NULL == pModel ) {
        return;
    }

    ParkSolution::TabServiceRecord serviceRecord;
    QSqlRecord sqlRecord = pModel->record( nRow );
    if ( sqlRecord.isEmpty( ) ) {
        return;
    }

    SetValue( sqlRecord, serviceRecord.strServiceID, serviceRecord.strServiceID );
    SetValue( sqlRecord, serviceRecord.strPlateID, serviceRecord.strPlateID );
    SetValue( sqlRecord, serviceRecord.strCategory, serviceRecord.strCategory );
    SetValue( sqlRecord, serviceRecord.strInsuranceAmount, serviceRecord.strInsuranceAmount );
    SetValue( sqlRecord, serviceRecord.strClaimAmount, serviceRecord.strClaimAmount );
    SetValue( sqlRecord, serviceRecord.strSettlementStyle, serviceRecord.strSettlementStyle );
    SetValue( sqlRecord, serviceRecord.strMaintanceStartTime, serviceRecord.strMaintanceStartTime );
    SetValue( sqlRecord, serviceRecord.strMaintanceEndTime, serviceRecord.strMaintanceEndTime );
    SetValue( sqlRecord, serviceRecord.strPickupTime, serviceRecord.strPickupTime );
    SetValue( sqlRecord, serviceRecord.strSubCategory, serviceRecord.strSubCategory );
    SetValue( sqlRecord, serviceRecord.strDepartment, serviceRecord.strDepartment );
    SetValue( sqlRecord, serviceRecord.strMaintanceman, serviceRecord.strMaintanceman );
    SetValue( sqlRecord, serviceRecord.strConsumptionAmount, serviceRecord.strConsumptionAmount );
}

void QDlgSvcQueryInfo::on_btnNext_clicked()
{
    QSqlQueryModel* pModel = ( QSqlQueryModel* ) pTableView->model( );
    if ( NULL == pModel ) {
        return;
    }

    nCurrentRow++;

    if ( pModel->rowCount( ) <= nCurrentRow ) {
        nCurrentRow = 0;
    }

    SetControlValue( nCurrentRow );
    pTableView->selectRow( nCurrentRow );
}
