#include "qdlgqueryinfo.h"
#include "ui_qdlgqueryinfo.h"
#include <QPushButton>
#include "qdlgsvcqueryinfo.h"

QDlgQueryInfo::QDlgQueryInfo(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::QDlgQueryInfo)
{
    ui->setupUi(this);
    //LayoutUI( );
    FillHash( );

    ui->tabServiceRecord->setModel( &modelService );
}

QDlgQueryInfo::~QDlgQueryInfo()
{
    delete ui;
}

QTableView* QDlgQueryInfo::GetTableView( )
{
    return ui->tabServiceRecord;
}

QSqlQueryModel* QDlgQueryInfo::GetModel( )
{
    return &modelService;
}

ParkSolution::QStringWidgetHash& QDlgQueryInfo::GetWidgetHash( )
{
    return hashWidget;
}

void QDlgQueryInfo::ClearEditData( )
{
    foreach ( QWidget* pWgt, hashWidget.values( ) ) {
        if ( NULL != pWgt &&
             pWgt->metaObject( )->className( ) ==
             QLineEdit::staticMetaObject.className( ) ) {
            ( ( QLineEdit* ) pWgt )->clear( );
        }
    }
}

void QDlgQueryInfo::FillVehicleEdit( )
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

void QDlgQueryInfo::FillCustomerEdit( )
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
    hashWidget.insert( tabCustomer.strCustomerLevel, ui->edtCustomerLevel );
}

void QDlgQueryInfo::FillHash( )
{
    FillVehicleEdit( );
    FillCustomerEdit( );
}

void QDlgQueryInfo::LayoutUI( )
{
    setLayout( ui->mainGridLayout );

    ui->mainGridLayout->addWidget( ui->lblDetail, 0, 0, 1, 3 );

    ui->mainGridLayout->addWidget( ui->widget1, 1, 0, 1, 3 );
    ui->mainGridLayout->addWidget( ui->widget2, 2, 0 );
    ui->mainGridLayout->addWidget( ui->widget3, 2, 1 );
    ui->mainGridLayout->addWidget( ui->widget4, 2, 2 );

    ui->mainGridLayout->addWidget( ui->widget5, 3, 0, 1, 3 );
    ui->mainGridLayout->addWidget( ui->widget6, 4, 0 );
    ui->mainGridLayout->addWidget( ui->widget7, 4, 1 );
    ui->mainGridLayout->addWidget( ui->widget8, 4, 2 );

    ui->mainGridLayout->addWidget( ui->widget9, 5, 0, 1, 3 );
    ui->mainGridLayout->addWidget( ui->tabServiceRecord, 6, 0, 1, 3 );

    ui->widget1->setLayout( ui->formLayout1 );  
    ui->widget2->setLayout( ui->formLayout4 );
    ui->widget3->setLayout( ui->formLayout5 );
    ui->widget4->setLayout( ui->formLayout6 );

    ui->widget5->setLayout( ui->formLayout2 );
    ui->widget6->setLayout( ui->formLayout7 );
    ui->widget7->setLayout( ui->formLayout8 );
    ui->widget8->setLayout( ui->formLayout9 );

    ui->widget9->setLayout( ui->formLayout3 );

    ui->mainGridLayout->addWidget( ui->widget10, 7, 0, 1, 3 );
    ui->widget10->setLayout( ui->gridLayout );

    //ui->gridLayout->setColumnMinimumWidth( 0, 500 );
    //ui->gridLayout->addWidget( ui->lblSpace );
    //ui->gridLayout->addWidget( ui->btnOK, 0, 1 );
    //ui->gridLayout->addWidget( ui->btnCancel, 0, 2 );
}

void QDlgQueryInfo::on_tabServiceRecord_doubleClicked(const QModelIndex &index)
{
    QSqlQueryModel* pModel = ( QSqlQueryModel* ) index.model( );
    if ( NULL == pModel ) {
        return;
    }

    QDlgSvcQueryInfo dlg( this );
    dlg.SetTableView( ui->tabServiceRecord );
    dlg.exec( );
}
