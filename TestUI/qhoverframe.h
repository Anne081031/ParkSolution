#ifndef QHOVERFRAME_H
#define QHOVERFRAME_H
#include <QMouseEvent>
#include <QFrame>

namespace Ui {
class QHoverFrame;
}

class QHoverFrame : public QFrame
{
    Q_OBJECT

public:
    explicit QHoverFrame(QWidget *parent = 0);
    ~QHoverFrame( );

protected:
    void mouseMoveEvent(QMouseEvent *event);
    void mousePressEvent(QMouseEvent *event);
    //void paintEvent(QPaintEvent *event);
    void mouseDoubleClickEvent(QMouseEvent * event);
    void resizeEvent(QResizeEvent *event);

private:
    Ui::QHoverFrame *ui;
    QPoint dragPosition;
};

#endif // QHOVERFRAME_H
