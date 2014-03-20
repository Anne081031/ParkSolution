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
    winFlags |= Qt::FramelessWindowHint;

    setWindowFlags( winFlags );
}

QHoverFrame::~QHoverFrame()
{
    delete ui;
}

void QHoverFrame::mouseDoubleClickEvent(QMouseEvent *event)
{
}

void QHoverFrame::mousePressEvent(QMouseEvent *event)
{
    if (event->button() == Qt::LeftButton) {
        dragPosition = event->globalPos() - frameGeometry().topLeft();
        event->accept();
    }
}

void QHoverFrame::mouseMoveEvent(QMouseEvent *event)
{
    if (event->buttons() & Qt::LeftButton) {
        move(event->globalPos() - dragPosition);
        event->accept();
    }
}

void QHoverFrame::resizeEvent( QResizeEvent* )
{
    return;
    int nWidth = width( );
    int nHeight = height( );
    int nSide = qMin( nWidth, nHeight );
    QRegion maskedRegion( nWidth / 2 - nSide / 2,
                          nHeight / 2 - nSide / 2,
                          nSide, nSide, QRegion::Ellipse );
    setMask( maskedRegion );
}
