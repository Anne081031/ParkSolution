#ifndef QHOVERFRAME_H
#define QHOVERFRAME_H

#include <QFrame>
#include <QMouseEvent>
#include "commonmodule_global.h"

namespace Ui {
class QHoverFrame;
}

class COMMONMODULESHARED_EXPORT QHoverFrame : public QFrame
{
    Q_OBJECT

public:
    explicit QHoverFrame(QWidget *parent = 0);
    ~QHoverFrame();

    void SetMarqueeString( QStringList& lstMarquee );

protected:
    void mouseMoveEvent(QMouseEvent *event);
    void mousePressEvent(QMouseEvent *event);
    //void paintEvent(QPaintEvent *event);
    void mouseDoubleClickEvent(QMouseEvent * );
    void resizeEvent(QResizeEvent *event);

private:
    Ui::QHoverFrame *ui;
    QPoint dragPosition;
};

#endif // QHOVERFRAME_H
