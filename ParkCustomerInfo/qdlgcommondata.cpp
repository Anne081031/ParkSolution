#include "qdlgcommondata.h"
#include "ui_qdlgcommondata.h"

QDlgCommonData::QDlgCommonData(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::QDlgCommonData)
{
    ui->setupUi(this);
}

QDlgCommonData::~QDlgCommonData()
{
    delete ui;
}
