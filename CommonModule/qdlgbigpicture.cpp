#include "qdlgbigpicture.h"
#include "ui_qdlgbigpicture.h"
#include <qmylabel.h>

QDlgBigPicture::QDlgBigPicture(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::QDlgBigPicture)
{
    ui->setupUi(this);
    setWindowFlags( Qt::FramelessWindowHint );

    pMyLabel = new QMyLabel(  );
   (  ( QMyLabel* ) pMyLabel )->SetCloseDialog( true );
    connect( pMyLabel, SIGNAL( CloseDialog( ) ), this , SLOT( HandleCloseDialog( ) ) );

    setLayout( ui->horizontalLayout );
    ui->horizontalLayout->addWidget( pMyLabel );
}

void QDlgBigPicture::SetPixmap( const QPixmap& pixmap )
{
    pMyLabel->setPixmap( pixmap );
}

void QDlgBigPicture::HandleCloseDialog( )
{
    close( );
}

QDlgBigPicture::~QDlgBigPicture()
{
    delete pMyLabel;
    delete ui;
}
