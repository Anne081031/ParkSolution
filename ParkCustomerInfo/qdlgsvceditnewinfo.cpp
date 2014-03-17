#include "qdlgsvceditnewinfo.h"
#include "ui_qdlgsvceditnewinfo.h"
#include "../CommonModule/CommonHeader.h"
#include <QSqlField>

QDlgSvcEditNewInfo::QDlgSvcEditNewInfo(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::QDlgSvcEditNewInfo)
{
    ui->setupUi(this);
    QCommonFunction::DisableHelpButton( this );
    FillHash( );
    nCurrentRow = -1;
}

QDlgSvcEditNewInfo::~QDlgSvcEditNewInfo()
{
    delete ui;
}

void QDlgSvcEditNewInfo::SetFlag(bool bEdit)
{
    ClearData( );
    bEditData = bEdit;
}

bool QDlgSvcEditNewInfo::DecideInputValue( )
{
    bool bRet = true;
    QString strText;

    if ( ui->edtPlateID->text( ).isEmpty( ) ) {
        bRet = false;
        strText = "请输入车牌号码。";
    }

    if ( ui->edtInsuranceAmount->text( ).isEmpty( ) ) {
        ui->edtInsuranceAmount->setText( "0" );
    }

    if ( ui->edtClaimAmount->text( ).isEmpty( ) ) {
        ui->edtClaimAmount->setText( "0" );
    }

    if ( ui->edtServiceConsumptionAmount->text( ).isEmpty( ) ) {
        ui->edtServiceConsumptionAmount->setText( "0" );
    }

    if ( !bRet ) {
        QCommonFunction::InformationBox( this, strText );
    }

    return bRet;
}

void QDlgSvcEditNewInfo::FillParamsList( )
{
    lstParams.clear( );

    lstParams << ( bEditData ? "0" : "1" )
              << ( bEditData ? ui->edtServiceID->text( ) : ( ui->edtServiceID->text( ).isEmpty( ) ? "0" : ui->edtServiceID->text( ) ) )
              << ui->edtPlateID->text( )
              << QString::number( ui->cbxSubCategory->currentIndex( ) )
              << QString::number( ui->cbxCategory->currentIndex( ) )
              << ui->edtInsuranceAmount->text( )
              << ui->edtClaimAmount->text( )
              << QString::number( ui->cbxSettlementStyle->currentIndex( ) )
              << ui->dtMaintanceStartTime->text( )
              << ui->dtMaintanceEndTime->text( )
              << ui->dtPickupTime->text( )
              << QString::number( ui->cbxServiceDepartment->currentIndex( ) )
              << QString::number( ui->cbxMaintanceman->currentIndex( ) )
              << ui->edtServiceConsumptionAmount->text( );
}

void QDlgSvcEditNewInfo::FillHash( )
{
    FillServiceCtrl( );
}

void QDlgSvcEditNewInfo::FillServiceCtrl( )
{
    ParkSolution::TabServiceRecord tabService;

    hashWidget.insert( tabService.strServiceID, ui->edtServiceID );
    hashWidget.insert( tabService.strPlateID, ui->edtPlateID );
    hashWidget.insert( tabService.strCategory, ui->cbxCategory );
    hashWidget.insert( tabService.strSubCategory, ui->cbxSubCategory );
    hashWidget.insert( tabService.strInsuranceAmount, ui->edtInsuranceAmount );
    SetIntValidator( ui->edtInsuranceAmount, 0, 2147483647 );
    hashWidget.insert( tabService.strClaimAmount, ui->edtClaimAmount );
    SetIntValidator( ui->edtClaimAmount, 0, 2147483647 );
    hashWidget.insert( tabService.strSettlementStyle, ui->cbxSettlementStyle );
    hashWidget.insert( tabService.strMaintanceStartTime, ui->dtMaintanceStartTime );
    hashWidget.insert( tabService.strMaintanceEndTime, ui->dtMaintanceEndTime );
    hashWidget.insert( tabService.strPickupTime, ui->dtPickupTime );
    hashWidget.insert( tabService.strDepartment, ui->cbxServiceDepartment );
    hashWidget.insert( tabService.strMaintanceman, ui->cbxMaintanceman );
    hashWidget.insert( tabService.strConsumptionAmount, ui->edtServiceConsumptionAmount );
    SetIntValidator( ui->edtServiceConsumptionAmount, 0, 65535 );
}

void QDlgSvcEditNewInfo::ClearData( )
{
    foreach ( QWidget* pWgt, hashWidget.values( ) ) {
        if ( NULL != pWgt ) {
            if ( pWgt->metaObject( )->className( ) ==
            QLineEdit::staticMetaObject.className( ) ) {
                QLineEdit* pEdit = ( QLineEdit* ) pWgt;
                if ( pEdit != ui->edtPlateID ) {
                    pEdit->clear( );
                }
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

void QDlgSvcEditNewInfo::AppendComboxBox( ParkSolution::QStringWidgetHash &wgtHash )
{
    ParkSolution::TabServiceRecord serviceRecord;
    wgtHash.insert( serviceRecord.strCategory, ui->cbxCategory );
    wgtHash.insert( serviceRecord.strSubCategory, ui->cbxSubCategory );
    wgtHash.insert( serviceRecord.strSettlementStyle, ui->cbxSettlementStyle );
    wgtHash.insert( serviceRecord.strDepartment, ui->cbxServiceDepartment );
    wgtHash.insert( serviceRecord.strMaintanceman, ui->cbxMaintanceman );
}

void QDlgSvcEditNewInfo::ControlPlateEdit( bool bOnlyRead )
{
    ui->edtPlateID->setReadOnly( bOnlyRead );
    ui->edtPlateID->setStyleSheet( bOnlyRead ? "background-color: rgb(192, 192, 192);" : "background-color: rgb(255, 255, 255);" );
}

void QDlgSvcEditNewInfo::SetTableView( QTableView* pView )
{
    pTableView = pView;
    bool bInvalid = pView->currentIndex( ).isValid( );
    //ControlPlateEdit( bInvalid );

    if ( !bInvalid ) {
        return;
    }

    nCurrentRow = pView->currentIndex( ).row( );
    SetControlValue( nCurrentRow, !bEditData );
}

void QDlgSvcEditNewInfo::SetValue( QSqlRecord& sqlRecord, QString& strCtrlID, QString& strFieldID )
{
    QSqlField sqlFiled = sqlRecord.field( strFieldID );
    QVariant varValue;

    if( QVariant::Int == sqlFiled.type( ) && sqlFiled.isNull( ) ) {
        varValue = -1;
    } else if( QVariant::UInt == sqlFiled.type( ) && sqlFiled.isNull( ) ) {
        varValue = 0;
    } else {
        varValue = sqlFiled.value( );
    }

    QWidget* pWgt = hashWidget[ strCtrlID ];

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
                QDateTimeEdit::staticMetaObject.className( ) ) {
        QDateTimeEdit* pDateTimeEdit = ( QDateEdit* ) pWgt;

        if ( NULL != pDateTimeEdit ) {
            pDateTimeEdit->setDateTime( varValue.toDateTime( ) );
        }
    }
}

void QDlgSvcEditNewInfo::SetControlValue( int nRow, bool bOnlyPlate )
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

    if ( bOnlyPlate ) {
       SetValue( sqlRecord, serviceRecord.strPlateID, serviceRecord.strPlateID );
       return;
    }

    SetValue( sqlRecord, serviceRecord.strServiceID, serviceRecord.strServiceID );
    SetValue( sqlRecord, serviceRecord.strPlateID, serviceRecord.strPlateID );
    SetValue( sqlRecord, serviceRecord.strCategory, serviceRecord.strCategoryID );
    SetValue( sqlRecord, serviceRecord.strInsuranceAmount, serviceRecord.strInsuranceAmount );
    SetValue( sqlRecord, serviceRecord.strClaimAmount, serviceRecord.strClaimAmount );
    SetValue( sqlRecord, serviceRecord.strSettlementStyle, serviceRecord.strSettlementStyleID );
    SetValue( sqlRecord, serviceRecord.strMaintanceStartTime, serviceRecord.strMaintanceStartTime );
    SetValue( sqlRecord, serviceRecord.strMaintanceEndTime, serviceRecord.strMaintanceEndTime );
    SetValue( sqlRecord, serviceRecord.strPickupTime, serviceRecord.strPickupTime );
    SetValue( sqlRecord, serviceRecord.strSubCategory, serviceRecord.strSubCategoryID );
    SetValue( sqlRecord, serviceRecord.strDepartment, serviceRecord.strDepartmentID );
    SetValue( sqlRecord, serviceRecord.strMaintanceman, serviceRecord.strMaintancemanID );
    SetValue( sqlRecord, serviceRecord.strConsumptionAmount, serviceRecord.strConsumptionAmount );
}

void QDlgSvcEditNewInfo::closeEvent( QCloseEvent *pEvent )
{
    QCommonFunction::CloseDiaglogBox( this, pEvent );
}

void QDlgSvcEditNewInfo::SetIntValidator(QLineEdit *pEdit, int nMin, int nMax)
{
    QValidator* pValidator = new QIntValidator( nMin, nMax, pEdit );
    pValidator->setLocale( locale( ) );
    pEdit->setValidator( pValidator );
}


void QDlgSvcEditNewInfo::on_btnNext_clicked()
{
    if ( !bEditData ) {
        ClearData( );
        return;
    }

    QSqlQueryModel* pModel = ( QSqlQueryModel* ) pTableView->model( );
    if ( NULL == pModel ) {
        return;
    }

    nCurrentRow++;

    if ( pModel->rowCount( ) <= nCurrentRow ) {
        nCurrentRow = 0;
    }

    SetControlValue( nCurrentRow, false );
    pTableView->selectRow( nCurrentRow );
}

void QDlgSvcEditNewInfo::on_btnOK_clicked()
{
    if ( !DecideInputValue( ) ) {
        return;
    }

    if ( QMessageBox::Cancel == QCommonFunction::SaveDataBox( this ) ) {
        return;
    }

    //ControlPlateEdit( true );

    FillParamsList( );
    emit ChangeServiceRecord( lstParams );
}

void QDlgSvcEditNewInfo::SetServiceID( QString &strServiceID )
{
    ui->edtServiceID->setText( strServiceID );
}

void QDlgSvcEditNewInfo::SetPlateID( QString &strPlateID )
{
    ui->edtPlateID->setText( strPlateID );
}

void QDlgSvcEditNewInfo::on_btnCancel_clicked()
{
    close( );
}
