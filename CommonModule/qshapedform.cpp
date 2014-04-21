#include <QtWidgets>
#include "qshapedform.h"
#include "ui_qshapedform.h"

QShapedForm::QShapedForm(QWidget *parent) :
    QWidget( parent, Qt::FramelessWindowHint |
            //Qt::WindowStaysOnTopHint |
            Qt::Tool ),
    ui(new Ui::QShapedForm)
{
    ui->setupUi(this);

    setToolTip( "双击显示或隐藏最近未查看客户悬浮窗口。" );
    setWindowTitle( "" );

    //setStyleSheet( "background-color: rgb(255, 0, 0);" );
    //setStyleSheet( "border-image:url(./Image/HoverButton.PNG);" );
    bVisible = false;

    nCaptionButtonWidth = GetSystemMetrics( SM_CXSIZE );
    nCaptionButtonHeight = GetSystemMetrics( SM_CYSIZE );
}

QShapedForm::~QShapedForm()
{
    delete ui;
}

void QShapedForm::mouseDoubleClickEvent( QMouseEvent* )
{
    bVisible = !bVisible;
    emit ShowHoverWindow( bVisible );
}

void QShapedForm::resizeEvent( QResizeEvent* )
{
    int nSide = qMin( width( ), height( ) );
    QRegion maskedRegion( width( ) / 2 - nSide / 2,
                          height( ) / 2 - nSide / 2, nSide,
                          nSide, QRegion::Ellipse );
    //QBitmap bitmap( "D:\\ParkSolution\\Document\\Info.bmp" );
    setMask( maskedRegion );
}

QSize QShapedForm::sizeHint( ) const
{
    return QSize( 22, 22 );
}
