#include "qresizeform.h"
#include "ui_qresizeform.h"

QResizeForm::QResizeForm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::QResizeForm)
{
    ui->setupUi(this);
    setObjectName( "QResizeForm" );
}

QResizeForm::~QResizeForm()
{
    delete ui;
}

void QResizeForm::resizeEvent( QResizeEvent *pEvent )
{
    QSize bkSize = pEvent->size( ); // new size
    if ( isVisible( ) ) {
        emit Resize( bkSize );
    }
}
