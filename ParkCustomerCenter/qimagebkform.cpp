#include "qimagebkform.h"
#include "ui_qimagebkform.h"
#include <QDebug>

QImageBKForm::QImageBKForm(int nIndex, QWidget *parent) :
    QWidget(parent),
    ui(new Ui::QImageBKForm)
{
    ui->setupUi(this);
    nImageIndex = nIndex;
    //setStyleSheet( "background-color: rgb(170, 255, 127);" );
    setToolTip( "单击查看客户信息。" );
}

QImageBKForm::~QImageBKForm()
{
    delete ui;
}

void QImageBKForm::resizeEvent( QResizeEvent *pEvent )
{
    QSize bkSize = pEvent->size( );
    if ( isVisible( ) ) {
        emit BKResize( nImageIndex, bkSize );
    }
}
