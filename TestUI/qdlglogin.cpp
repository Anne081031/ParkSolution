#include "qdlglogin.h"
#include "ui_qdlglogin.h"

QDlgLogin::QDlgLogin(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::QDlgLogin)
{
    ui->setupUi(this);
    //setObjectName( "DlgLogin" );
    setWindowFlags( Qt::FramelessWindowHint );
}

QDlgLogin::~QDlgLogin()
{
    delete ui;
}

void QDlgLogin::on_pushButton_2_clicked()
{
    close( );
}
