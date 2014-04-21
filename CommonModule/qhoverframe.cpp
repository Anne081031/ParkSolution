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

    setStyleSheet( "border-image: url(./Image/HoverForm.png);" );
    setWindowFlags( winFlags );
}

QHoverFrame::~QHoverFrame()
{
    delete ui;
}

void QHoverFrame::SetMarqueeString( QStringList &lstMarquee )
{
    if ( 4 > lstMarquee.count( ) ) {
        return;
    }

    QString strHtml = QString( "<marquee>%1&emsp;&emsp;&emsp;%2&emsp;&emsp;&emsp;%3&emsp;&emsp;&emsp;%4</marquee>" ).arg(
                lstMarquee.at( 0 ),
                lstMarquee.at( 1 ),
                lstMarquee.at( 2 ),
                lstMarquee.at( 3 ) );

    ui->webView->setHtml( strHtml );
}

void QHoverFrame::mouseDoubleClickEvent(QMouseEvent *)
{
}

void QHoverFrame::mousePressEvent(QMouseEvent *event)
{
    if ( event->button() == Qt::LeftButton ) {
        dragPosition = event->globalPos( ) - frameGeometry( ).topLeft( );
        event->accept( );
    }
}

void QHoverFrame::mouseMoveEvent(QMouseEvent *event)
{
    if ( event->buttons() & Qt::LeftButton ) {
        move( event->globalPos() - dragPosition );
        event->accept( );
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
