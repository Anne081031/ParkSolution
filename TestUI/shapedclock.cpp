#include <QtWidgets>
#include "shapedclock.h"

ShapedClock::ShapedClock(QWidget *parent)
    : QWidget(parent, Qt::FramelessWindowHint |
              //Qt::WindowStaysOnTopHint |
              Qt::Tool )
{
    //QAction *quitAction = new QAction(tr("E&xit"), this);
    //quitAction->setShortcut(tr("Ctrl+Q"));
    //connect(quitAction, SIGNAL(triggered()), qApp, SLOT(quit()));
    //addAction(quitAction);

    //setContextMenuPolicy(Qt::ActionsContextMenu);
    setToolTip( "双击显示或隐藏最近未查看客户悬浮窗口。" );
    setWindowTitle( "" );

    setStyleSheet( "background-color: rgb(255, 0, 0);" );
    bVisible = false;

    nCaptionButtonWidth = GetSystemMetrics( SM_CXSIZE );
    nCaptionButtonHeight = GetSystemMetrics( SM_CYSIZE );
}

void ShapedClock::mousePressEvent(QMouseEvent *event)
{
    return;
    if (event->button() == Qt::LeftButton) {
        dragPosition = event->globalPos() - frameGeometry().topLeft();
        event->accept();
    }
}

void ShapedClock::mouseMoveEvent(QMouseEvent *event)
{
    return;
    if (event->buttons() & Qt::LeftButton) {
        move(event->globalPos() - dragPosition);
        event->accept();
    }
}

void ShapedClock::mouseDoubleClickEvent(QMouseEvent *)
{
    bVisible = !bVisible;
    emit ShowHoverWindow( bVisible );
}

void ShapedClock::paintEvent(QPaintEvent *event)
{
    //int nSide = qMin(width(), height());
    //QPainter painter1(this);
    //QPixmap pixmap( "D:\\ParkSolution\\Document\\Info.PNG" );
    //painter1.drawPixmap( width() / 2 - nSide / 2, height() / 2 - nSide / 2, 33, 33, pixmap );
    return;
    static const QPoint hourHand[3] = {
        QPoint(7, 8),
        QPoint(-7, 8),
        QPoint(0, -40)
    };
    static const QPoint minuteHand[3] = {
        QPoint(7, 8),
        QPoint(-7, 8),
        QPoint(0, -70)
    };

    QColor hourColor(127, 0, 127);
    QColor minuteColor(0, 127, 127, 191);

    int side = qMin(width(), height());
    QTime time = QTime::currentTime();

    QPainter painter(this);
    painter.setRenderHint(QPainter::Antialiasing);
    painter.translate(width() / 2, height() / 2);
    painter.scale(side / 200.0, side / 200.0);

    painter.setPen(Qt::NoPen);
    painter.setBrush(hourColor);

    painter.save();
    painter.rotate(30.0 * ((time.hour() + time.minute() / 60.0)));
    painter.drawConvexPolygon(hourHand, 3);
    painter.restore();

    painter.setPen(hourColor);

    for (int i = 0; i < 12; ++i) {
        painter.drawLine(88, 0, 96, 0);
        painter.rotate(30.0);
    }

    painter.setPen(Qt::NoPen);
    painter.setBrush(minuteColor);

    painter.save();
    painter.rotate(6.0 * (time.minute() + time.second() / 60.0));
    painter.drawConvexPolygon(minuteHand, 3);
    painter.restore();

    painter.setPen(minuteColor);

    for (int j = 0; j < 60; ++j) {
        if ((j % 5) != 0)
            painter.drawLine(92, 0, 96, 0);
        painter.rotate(6.0);
    }
}

void ShapedClock::resizeEvent(QResizeEvent * /* event */)
{
    int side = qMin(width(), height());
    QRegion maskedRegion(width() / 2 - side / 2, height() / 2 - side / 2, side,
                         side, QRegion::Ellipse);
    //QPixmap pixmap( "D:\\ParkSolution\\Document\\Info.bmp" );
    //QBitmap bitmap( pixmap );
    setMask(maskedRegion);
}

void ShapedClock::MoveSelf(QRect frameRect, QRect geometryRect)
{

   int nX = geometryRect.x( ) + geometryRect.width( ) - nCaptionButtonWidth * 3 + 5;
   int nY = frameRect.y( ) + 5;

   qDebug( ) << "fx:" << frameRect.x( ) << " fy:" << frameRect.y( )
                << " fw:" << frameRect.width( ) << " fh:" << frameRect.height( );
   qDebug( ) << "x:" << geometryRect.x( ) << " y:" << geometryRect.y( )
                << " w:" << geometryRect.width( ) << " h:" << geometryRect.height( );

   move( nX, nY );
}

QSize ShapedClock::sizeHint() const
{
    return QSize(22, 22);
}
