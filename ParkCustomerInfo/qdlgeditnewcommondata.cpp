#include "qdlgeditnewcommondata.h"
#include "ui_qdlgeditnewcommondata.h"
#include <QSqlField>

QDlgEditNewCommonData::QDlgEditNewCommonData(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::QDlgEditNewCommonData)
{
    ui->setupUi(this);
    FillHash( );
    QCommonFunction::DisableHelpButton( this );
    nCurrentRow = -1;
}

QDlgEditNewCommonData::~QDlgEditNewCommonData()
{
    delete ui;
}

void QDlgEditNewCommonData::SetValueID( QString &strValueID )
{
    ui->edtValueID->setText( strValueID );
}

void QDlgEditNewCommonData::FillHash( )
{
    ParkSolution::TabCommonDataInfo tabCommonData;

    hashWidget.insert( tabCommonData.strValueID, ui->edtValueID );
    hashWidget.insert( tabCommonData.strValue, ui->edtValue );
}

void QDlgEditNewCommonData::SetFlag( bool bEdit )
{
    ClearData( );
    bEditData = bEdit;
}

void QDlgEditNewCommonData::SetDataType( QString &strType )
{
    strDataType = strType;
}

void QDlgEditNewCommonData::SetTableView( QTableView* pView )
{
    pTableView = pView;
    bool bInvalid = pView->currentIndex( ).isValid( );

    if ( !bInvalid ) {
        return;
    }

    nCurrentRow = pView->currentIndex( ).row( );

    if ( !bEditData ) {
        return;
    }

    SetControlValue( nCurrentRow );
}

void QDlgEditNewCommonData::SetControlValue( int nRow )
{
    QSqlQueryModel* pModel = ( QSqlQueryModel* ) pTableView->model( );
    if ( NULL == pModel ) {
        return;
    }

    ParkSolution::TabCommonDataInfo tabCommonData;
    QSqlRecord sqlRecord = pModel->record( nRow );
    if ( sqlRecord.isEmpty( ) ) {
        return;
    }

    SetValue( sqlRecord, tabCommonData.strValueID, tabCommonData.strValueID );
    SetValue( sqlRecord, tabCommonData.strValue, tabCommonData.strValue );
}

void QDlgEditNewCommonData::SetValue( QSqlRecord& sqlRecord, QString& strCtrlID, QString& strFieldID )
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
    }
}

void QDlgEditNewCommonData::on_btnNext_clicked()
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

    SetControlValue( nCurrentRow );
    pTableView->selectRow( nCurrentRow );
}

void QDlgEditNewCommonData::on_btnOK_clicked()
{
    if ( !DecideInputValue( ) ) {
        return;
    }

    if ( QMessageBox::Cancel == QCommonFunction::SaveDataBox( this ) ) {
        return;
    }

    FillParamsList( );
    emit ChangeCommonDataRecord( strDataType, lstParams );
}

void QDlgEditNewCommonData::ClearData( )
{
    ui->edtValueID->clear( );
    ui->edtValue->clear( );
}

void QDlgEditNewCommonData::FillParamsList( )
{
    lstParams.clear( );

    lstParams << ( bEditData ? "0" : "1" )
              << strDataType
              << ( bEditData ? ui->edtValueID->text( ) : ( ui->edtValueID->text( ).isEmpty( ) ? "0" : ui->edtValueID->text( ) ) )
              << ui->edtValue->text( );
}

bool QDlgEditNewCommonData::DecideInputValue( )
{
    bool bRet = true;
    QString strText;

    if ( ui->edtValue->text( ).isEmpty( ) ) {
        bRet = false;
        strText = "请输入数据项值。";
    }

    if ( !bRet ) {
        QCommonFunction::InformationBox( this, strText );
    }

    return bRet;
}

void QDlgEditNewCommonData::closeEvent( QCloseEvent *pEvent )
{
    QCommonFunction::CloseDiaglogBox( this, pEvent );
}

void QDlgEditNewCommonData::on_btnCancel_clicked()
{
    close( );
}
