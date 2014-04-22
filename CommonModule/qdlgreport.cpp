#include "qdlgreport.h"
#include "ui_qdlgreport.h"
#include <QtCore>

QDlgReport::QDlgReport(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::QDlgReport)
{
    ui->setupUi(this);
    QCommonFunction::DisableHelpButton( this );
}

QDlgReport::~QDlgReport()
{
    delete ui;
}

void QDlgReport::DisplayReport( const QByteArray &byJson )
{
    QJsonParseError jsonError;
    QJsonDocument jsonDoc = QJsonDocument::fromJson( byJson, &jsonError );

    if ( QJsonParseError::NoError != jsonError.error ) {
        return;
    }

    if ( jsonDoc.isNull( ) || jsonDoc.isEmpty( ) ) {
        return;
    }

    QJsonObject jsonObj = jsonDoc.object( );
    if ( jsonObj.isEmpty( ) ) {
        return;
    }

    QJsonValue jsonValue = jsonObj.value( "HTML" );
    if ( jsonValue.isNull( ) ) {
        return;
    }

    QString strHTML = jsonValue.toString( );

    ui->webView->setHtml( strHTML );
}

void QDlgReport::on_btQuery_clicked()
{
    QStringList lstParams;

    lstParams << QString::number( ui->cbxType->currentIndex( ) )
              << ui->dtStart->text( ) << ui->dtEnd->text( );

    emit ReportQuery( lstParams );
}
