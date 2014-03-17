#include "qdlgeditnewinfo.h"
#include "ui_qdlgeditnewinfo.h"
#include <QComboBox>
#include <QJsonDocument>
#include <QJsonParseError>
#include <QMenu>
// RegExp
// [ABCD] = [A-D]
// [0-9]{1,3} 0-999 可在任何位置 \d{1,10} \d{0,1} = \d?
// ^[0-9]{1,2}$ ^必须以之开始 $必须以之结尾
// 1|3 or  \b(mail|letter|correspondence)\b

QDlgEditNewInfo::QDlgEditNewInfo(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::QDlgEditNewInfo)
{
    ui->setupUi(this);
    //LayoutUI( );
    FillHash( );
    bEditData = true;
    ui->tabServiceRecord->setModel( &modelService );
    pDlgSvcEditNewInfo = new QDlgSvcEditNewInfo( this );
    pDlgSvcEditNewInfo->AppendComboxBox( hashWidget );
    connect( pDlgSvcEditNewInfo, SIGNAL( ChangeServiceRecord( QStringList& ) ),
             this, SLOT( HandleChangeServiceRecord( QStringList& ) ) );
}

QDlgEditNewInfo::~QDlgEditNewInfo()
{
    delete pDlgSvcEditNewInfo;
    delete ui;
}

void QDlgEditNewInfo::HandleChangeServiceRecord( QStringList &lstParams )
{
    emit ChangeServiceRecord( lstParams );
}

bool QDlgEditNewInfo::ProcessSpResult( ParkSolution::SpType eSpType, QByteArray &byData )
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
    QString strCustomerID;
    QString strVehicleID;
    QString strServiceID;
    int nOperateCode;

    if ( ParkSolution::SpChangeCustomerVehicleDataUI == eSpType ) {
        strCustomerID = jsonObject.value( "CustomerID" ).toString( );
        strVehicleID = jsonObject.value( "VehicleID" ).toString( );
        nOperateCode = jsonObject.value( "OperateCode" ).toInt( );

    } else if ( ParkSolution::SpChangeServiceRecordUI == eSpType ||
                ParkSolution::SpChangeServiceRecordDelete == eSpType ) {
        strServiceID = jsonObject.value( "ServiceID" ).toString( );
        nOperateCode = jsonObject.value( "OperateCode" ).toInt( );
    }

    if ( ParkSolution::SpChangeCustomerVehicleDataUI == eSpType ) {
        if ( 1 == nOperateCode ) {
            ui->edtCustomerID->setText( strCustomerID );
            ui->edtVehicleID->setText( strVehicleID );
        }
    } else if ( ParkSolution::SpChangeCustomerVehicleDataDelete == eSpType ) {
        ;
    } else if ( ParkSolution::SpChangeServiceRecordUI == eSpType ) {
        if ( 1 == nOperateCode ) {
            pDlgSvcEditNewInfo->SetServiceID( strServiceID );
        }
    } else if ( ParkSolution::SpChangeServiceRecordDelete == eSpType ) {
        ;
    }

    return bRet;
}

void QDlgEditNewInfo::SetEditFlag( bool bEdit )
{
    ClearData( );
    bEditData = bEdit;
}

bool QDlgEditNewInfo::GetEditFlag( )
{
    return bEditData;
}

QTableView* QDlgEditNewInfo::GetTableView( )
{
    return ui->tabServiceRecord;
}

QSqlQueryModel* QDlgEditNewInfo::GetModel( )
{
    return &modelService;
}

QStringList& QDlgEditNewInfo::GetParamsList()
{
    return lstParams;
}

ParkSolution::QStringWidgetHash& QDlgEditNewInfo::GetWidgetHash( )
{
    return hashWidget;
}

void QDlgEditNewInfo::ClearData( )
{
    foreach ( QWidget* pWgt, hashWidget.values( ) ) {
        if ( NULL != pWgt ) {
            if ( pWgt->metaObject( )->className( ) ==
            QLineEdit::staticMetaObject.className( ) ) {
                ( ( QLineEdit* ) pWgt )->clear( );
            } else if ( pWgt->metaObject( )->className( ) ==
                        QComboBox::staticMetaObject.className( ) ) {
                ( ( QComboBox* ) pWgt )->setCurrentIndex( -1 );
            } else if ( pWgt->metaObject( )->className( ) ==
                        QDateEdit::staticMetaObject.className( ) ) {
                ( ( QDateEdit* ) pWgt )->setDate( QDate::currentDate( ) );
            } else if ( pWgt->metaObject( )->className( ) ==
                        QDateTimeEdit::staticMetaObject.className( ) ) {
                ( ( QDateTimeEdit* ) pWgt )->setDateTime( QDateTime::currentDateTime( ) );
            }
        }
    }
}

void QDlgEditNewInfo::FillVehicleEdit( )
{
    ParkSolution::TabVehicleInfo tabVehicle;

    hashWidget.insert( tabVehicle.strPlateID, ui->edtPlateID );
    hashWidget.insert( tabVehicle.strBrand, ui->cbxBrand );
    hashWidget.insert( tabVehicle.strSeries, ui->cbxSeries );
    hashWidget.insert( tabVehicle.strColor , ui->cbxColor );
    hashWidget.insert( tabVehicle.strFeature, ui->cbxFeature );
    hashWidget.insert( tabVehicle.strBuyDate, ui->dtBuyDate );
    hashWidget.insert( tabVehicle.strMaintenanceFirstDate, ui->dtMaintenanceFirstDate );
    hashWidget.insert( tabVehicle.strMaintenanceNextDate, ui->dtMaintenanceNextDate );
    hashWidget.insert( tabVehicle.strAannualSurveyDate, ui->dtAannualSurveyDate );
    hashWidget.insert( tabVehicle.strCommercialInsuranceExpiration, ui->dtCommercialInsuranceExpiration );
    hashWidget.insert( tabVehicle.strMandatoryInsuranceExpiration, ui->dtMandatoryInsuranceExpiration );
    hashWidget.insert( tabVehicle.strInsurer, ui->cbxInsurer );
    hashWidget.insert( tabVehicle.strVistCount, ui->edtVistCount );
    SetIntValidator( ui->edtVistCount, 0, 2147483647 );
    hashWidget.insert( tabVehicle.strVehicleState, ui->cbxState );
    hashWidget.insert( tabVehicle.strMotorID, ui->edtMotorID );
    hashWidget.insert( tabVehicle.strOdometer, ui->edtOdometer );
    SetIntValidator( ui->edtOdometer, 0, 2147483647 );
    hashWidget.insert( tabVehicle.strVehicleID, ui->edtVehicleID );
    ui->edtVehicleID->setVisible( false );
}

void QDlgEditNewInfo::SetIntValidator(QLineEdit *pEdit, int nMin, int nMax)
{
    QValidator* pValidator = new QIntValidator( nMin, nMax, pEdit );
    pValidator->setLocale( locale( ) );
    pEdit->setValidator( pValidator );
}

void QDlgEditNewInfo::FillCustomerEdit( )
{
    ParkSolution::TabCustomerInfo tabCustomer;

    hashWidget.insert( tabCustomer.strCustomerID, ui->edtCustomerID );
    hashWidget.insert( tabCustomer.strName, ui->edtName );
    hashWidget.insert( tabCustomer.strCredentialsID, ui->edtCredentialsID );
    hashWidget.insert( tabCustomer.strAddress, ui->edtAddress );
    hashWidget.insert( tabCustomer.strDistrict, ui->cbxDistrict );
    hashWidget.insert( tabCustomer.strMobilePhone, ui->edtMobilePhone );
    hashWidget.insert( tabCustomer.strLandline, ui->edtLandline );
    hashWidget.insert( tabCustomer.strEMail, ui->edtEMail );
    hashWidget.insert( tabCustomer.strCustomerSource, ui->cbxCustomerSource );
    hashWidget.insert( tabCustomer.strCustomerDepartment, ui->cbxDepartment );
    hashWidget.insert( tabCustomer.strAccountExecutive, ui->cbxAccountExecutive );
    hashWidget.insert( tabCustomer.strVistFirstTime, ui->dtVistFirstTime );
    hashWidget.insert( tabCustomer.strEntryTime, ui->dtEntryTime );
    hashWidget.insert( tabCustomer.strCustomerCategory, ui->cbxCustomerCategory );
    hashWidget.insert( tabCustomer.strVistNewlyTime, ui->dtVistNewlyTime );
    hashWidget.insert( tabCustomer.strConsumptionAmount, ui->edtConsumptionAmount );
    SetIntValidator( ui->edtConsumptionAmount, 0, 2147483647 );
    hashWidget.insert( tabCustomer.strMembershipClass, ui->cbxMembershipClass );
    hashWidget.insert( tabCustomer.strMembershipCardSurplus, ui->edtMembershipCardSurplus );
    SetIntValidator( ui->edtMembershipCardSurplus, 0, 2147483647 );
}

void QDlgEditNewInfo::FillHash( )
{
    FillVehicleEdit( );
    FillCustomerEdit( );
}

void QDlgEditNewInfo::LayoutUI( )
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

    ui->gridLayout->setColumnMinimumWidth( 0, 500 );
    ui->gridLayout->addWidget( ui->lblSpace );
    ui->gridLayout->addWidget( ui->btnOK, 0, 1 );
    ui->gridLayout->addWidget( ui->btnCancel, 0, 2 );
}

void QDlgEditNewInfo::SetControlValue( QSqlRecord& sqlRow, QString& strFieldName, QString& strControl )
{
    QSqlField sqlFiled = sqlRow.field( strFieldName );
    QVariant varValue;

    if( QVariant::Int == sqlFiled.type( ) && sqlFiled.isNull( ) ) {
        varValue = -1;
    } else if( QVariant::UInt == sqlFiled.type( ) && sqlFiled.isNull( ) ) {
        varValue = 0;
    } else {
        varValue = sqlFiled.value( );
    }

    QWidget* pWgt = hashWidget[ strControl ];

    if ( NULL == pWgt ) {
        return;
    }

    if ( pWgt->metaObject( )->className( ) ==
         QLineEdit::staticMetaObject.className( ) ) {
        QLineEdit* pEdit = ( QLineEdit* ) pWgt;

        if ( NULL != pEdit ) {
            pEdit->setText( varValue.toString( ) );
        }
    } else if ( pWgt->metaObject( )->className( ) ==
                QComboBox::staticMetaObject.className( ) ) {
        QComboBox* pCbx = ( QComboBox* ) pWgt;

        if ( NULL != pCbx ) {
            pCbx->setCurrentIndex( varValue.toInt( ) );
        }
    } else if ( pWgt->metaObject( )->className( ) ==
                QDateEdit::staticMetaObject.className( ) ) {
        QDateEdit* pDateEdit = ( QDateEdit* ) pWgt;

        if ( NULL != pDateEdit ) {
            //QDate date = QDate::fromString( strValue, pDateEdit->displayFormat( ) );
            pDateEdit->setDate( varValue.toDate( ) );
        }
    } else if ( pWgt->metaObject( )->className( ) ==
               QDateTimeEdit::staticMetaObject.className( ) ) {
       QDateTimeEdit* pDateTimeEdit = ( QDateEdit* ) pWgt;

       if ( NULL != pDateTimeEdit ) {
           //QDateTime dateTime = QDateTime::fromString( strValue, pDateTimeEdit->displayFormat( ) );
           pDateTimeEdit->setDateTime( varValue.toDateTime( ) );
       }
   }
}

void QDlgEditNewInfo::InitializeDialog( QModelIndex &index )
{
    QSqlQueryModel* pModel = ( QSqlQueryModel* ) index.model( );
    if ( NULL == pModel ) {
        return;
    }

    ParkSolution::TabCustomerInfo customerInfo;
    ParkSolution::TabVehicleInfo vehicleInfo;
    QSqlRecord sqlRow = pModel->record( index.row( ) );

    SetControlValue( sqlRow, customerInfo.strCustomerID, customerInfo.strCustomerID );
    SetControlValue( sqlRow, customerInfo.strName, customerInfo.strName );
    SetControlValue( sqlRow, customerInfo.strCredentialsID, customerInfo.strCredentialsID );
    SetControlValue( sqlRow, customerInfo.strAddress, customerInfo.strAddress );
    SetControlValue( sqlRow, customerInfo.strDistrictID, customerInfo.strDistrict );
    SetControlValue( sqlRow, customerInfo.strMobilePhone, customerInfo.strMobilePhone );
    SetControlValue( sqlRow, customerInfo.strLandline, customerInfo.strLandline );
    SetControlValue( sqlRow, customerInfo.strEMail, customerInfo.strEMail );
    SetControlValue( sqlRow, customerInfo.strCustomerSourceID, customerInfo.strCustomerSource );
    SetControlValue( sqlRow, customerInfo.strCustomerDepartmentID, customerInfo.strCustomerDepartment );
    SetControlValue( sqlRow, customerInfo.strAccountExecutiveID, customerInfo.strAccountExecutive );
    SetControlValue( sqlRow, customerInfo.strVistFirstTime, customerInfo.strVistFirstTime );
    SetControlValue( sqlRow, customerInfo.strEntryTime, customerInfo.strEntryTime );
    SetControlValue( sqlRow, customerInfo.strCustomerCategoryID, customerInfo.strCustomerCategory );
    SetControlValue( sqlRow, customerInfo.strVistNewlyTime, customerInfo.strVistNewlyTime );
    SetControlValue( sqlRow, customerInfo.strConsumptionAmount, customerInfo.strConsumptionAmount );
    SetControlValue( sqlRow, customerInfo.strMembershipClassID, customerInfo.strMembershipClass );
    SetControlValue( sqlRow, customerInfo.strMembershipCardSurplus, customerInfo.strMembershipCardSurplus );

    SetControlValue( sqlRow, vehicleInfo.strPlateID, vehicleInfo.strPlateID );
    SetControlValue( sqlRow, vehicleInfo.strBrand, vehicleInfo.strBrand );
    SetControlValue( sqlRow, vehicleInfo.strSeries, vehicleInfo.strSeries );
    SetControlValue( sqlRow, vehicleInfo.strColor, vehicleInfo.strColor );
    SetControlValue( sqlRow, vehicleInfo.strFeature, vehicleInfo.strFeature );
    SetControlValue( sqlRow, vehicleInfo.strBuyDate, vehicleInfo.strBuyDate );
    SetControlValue( sqlRow, vehicleInfo.strMaintenanceFirstDate, vehicleInfo.strMaintenanceFirstDate );
    SetControlValue( sqlRow, vehicleInfo.strMaintenanceNextDate, vehicleInfo.strMaintenanceNextDate );
    SetControlValue( sqlRow, vehicleInfo.strAannualSurveyDate, vehicleInfo.strAannualSurveyDate );
    SetControlValue( sqlRow, vehicleInfo.strCommercialInsuranceExpiration, vehicleInfo.strCommercialInsuranceExpiration );
    SetControlValue( sqlRow, vehicleInfo.strMandatoryInsuranceExpiration, vehicleInfo.strMandatoryInsuranceExpiration );
    SetControlValue( sqlRow, vehicleInfo.strInsurer, vehicleInfo.strInsurer );
    SetControlValue( sqlRow, vehicleInfo.strVistCount, vehicleInfo.strVistCount );
    SetControlValue( sqlRow, vehicleInfo.strVehicleState, vehicleInfo.strVehicleState );
    SetControlValue( sqlRow, vehicleInfo.strMotorID, vehicleInfo.strMotorID );
    SetControlValue( sqlRow, vehicleInfo.strOdometer, vehicleInfo.strOdometer );
    SetControlValue( sqlRow, vehicleInfo.strVehicleID, vehicleInfo.strVehicleID );
}

bool QDlgEditNewInfo::DecideInputValue( )
{
    bool bRet = true;
    QString strText;

    if ( ui->edtName->text( ).isEmpty( ) ) {
        bRet = false;
        strText = "请输入客户名。";
    }

    if ( ui->edtMembershipCardSurplus->text( ).isEmpty( ) ) {
        ui->edtMembershipCardSurplus->setText( "0" );
    }

    if ( ui->edtConsumptionAmount->text( ).isEmpty( ) ) {
        ui->edtConsumptionAmount->setText( "0" );
    }

    if ( ui->edtVistCount->text( ).isEmpty( ) ) {
        ui->edtVistCount->setText( "0" );
    }

    if ( ui->edtOdometer->text( ).isEmpty( ) ) {
        ui->edtOdometer->setText( "0" );
    }

    if ( !bRet ) {
        QCommonFunction::InformationBox( this, strText );
    }

    return bRet;
}

void QDlgEditNewInfo::FillParamsList( )
{
    lstParams.clear( );

    lstParams << ( bEditData ? "0" : "1" )
              << ( bEditData ? ui->edtCustomerID->text( ) : ( ui->edtCustomerID->text( ).isEmpty( ) ? "0" : ui->edtCustomerID->text( ) ) )
              << ui->edtName->text( )
              << ui->edtCredentialsID->text( )
              << ui->edtAddress->text( )
              << QString::number( ui->cbxDistrict->currentIndex( ) )
              << ui->edtMobilePhone->text( )
              << ui->edtLandline->text( )
              << ui->edtEMail->text( )
              << QString::number( ui->cbxCustomerSource->currentIndex( ) )
              << QString::number( ui->cbxDepartment->currentIndex( ) )
              << QString::number( ui->cbxAccountExecutive->currentIndex( ) )
              << ui->dtVistFirstTime->text( )
              << ui->dtEntryTime->text( )
              << QString::number( ui->cbxCustomerCategory->currentIndex( ) )
              << ui->dtVistNewlyTime->text( )
              << ui->edtConsumptionAmount->text( )
              << QString::number( ui->cbxMembershipClass->currentIndex( ) )
              << ui->edtMembershipCardSurplus->text( )
              << ui->edtPlateID->text( ).toUpper( )
              << QString::number( ui->cbxBrand->currentIndex( ) )
              << QString::number( ui->cbxSeries->currentIndex( ) )
              << QString::number( ui->cbxColor->currentIndex( ) )
              << QString::number( ui->cbxFeature->currentIndex( ) )
              << ui->dtBuyDate->text( )
              << ui->dtMaintenanceFirstDate->text( )
              << ui->dtMaintenanceNextDate->text( )
              << ui->dtAannualSurveyDate->text( )
              << ui->dtCommercialInsuranceExpiration->text( )
              << ui->dtMandatoryInsuranceExpiration->text( )
              << QString::number( ui->cbxInsurer->currentIndex( ) )
              << ui->edtVistCount->text( )
              << QString::number( ui->cbxState->currentIndex( ) )
              << ui->edtMotorID->text( )
              << ui->edtOdometer->text( )
              << ( bEditData ? ui->edtVehicleID->text( ) : ( ui->edtVehicleID->text( ).isEmpty( ) ? "0" : ui->edtVehicleID->text( ) ) );
}

void QDlgEditNewInfo::on_btnOK_clicked()
{
    if ( !DecideInputValue( ) ) {
        return;
    }

    if ( QMessageBox::Cancel == QCommonFunction::SaveDataBox( this ) ) {
        return;
    }

    FillParamsList( );
    emit ChangeCustomerVehicleData( lstParams );
}

void QDlgEditNewInfo::on_btnCancel_clicked()
{
    close( );
}

void QDlgEditNewInfo::GetPlateID( QString &strPlateID )
{
    strPlateID = ui->edtPlateID->text( );
}

void QDlgEditNewInfo::ShowServiceDlg( bool bEdit, QAction* pAct )
{
    QString strText = pAct->text( ) + pDlgSvcEditNewInfo->whatsThis( );
    pDlgSvcEditNewInfo->setWindowTitle( strText );
    pDlgSvcEditNewInfo->SetFlag( bEdit );

    if ( !bEdit ) {
        QString strPlateID = ui->edtPlateID->text( );
        pDlgSvcEditNewInfo->SetPlateID( strPlateID );
    }

    pDlgSvcEditNewInfo->SetTableView( ui->tabServiceRecord );
    pDlgSvcEditNewInfo->exec( );
}

void QDlgEditNewInfo::closeEvent( QCloseEvent *pEvent )
{
    QCommonFunction::CloseDiaglogBox( this, pEvent );
}

void QDlgEditNewInfo::EditRecord( )
{
    QAction* pAct = ( QAction* ) sender( );
    ShowServiceDlg( true, pAct );
}

void QDlgEditNewInfo::AddRecord( )
{
    QAction* pAct = ( QAction* ) sender( );
    ShowServiceDlg( false, pAct );
}

void QDlgEditNewInfo::CreateContextMenu( QWidget* parent )
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

void QDlgEditNewInfo::on_tabServiceRecord_customContextMenuRequested(const QPoint &pos)
{
    Q_UNUSED( pos )
    QWidget* pWgt = ( QWidget* ) sender( );
    CreateContextMenu( pWgt );
}
