#include "qhoverframe.h"
#include "ui_qhoverframe.h"

QHoverFrame::QHoverFrame(QWidget *parent) :
    QFrame(parent),
    ui(new Ui::QHoverFrame)
{
    ui->setupUi(this);
    Qt::WindowFlags winFlags = windowFlags( );
    winFlags &= ( ~Qt::WindowCloseButtonHint );
    winFlags |= Qt::Tool;
    winFlags |= Qt::WindowStaysOnTopHint;
    //winFlags |= Qt::FramelessWindowHint;

    setWindowFlags( winFlags );
}

QHoverFrame::~QHoverFrame()
{
    delete ui;
}

void QHoverFrame::mouseDoubleClickEvent(QMouseEvent *event)
{
    close( );
    show( );
}

void QHoverFrame::resizeEvent( QResizeEvent* )
{
    int nWidth = width( );
    int nHeight = height( );
    int nSide = qMin( nWidth, nHeight );
    QRegion maskedRegion( nWidth / 2 - nSide / 2,
                          nHeight / 2 - nSide / 2,
                          nSide, nSide, QRegion::Ellipse );
    setMask( maskedRegion );
}
