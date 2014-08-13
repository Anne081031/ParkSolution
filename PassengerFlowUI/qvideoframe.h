#ifndef QVIDEOFRAME_H
#define QVIDEOFRAME_H

#include <QFrame>

namespace Ui {
class QVideoFrame;
}

class QVideoFrame : public QFrame
{
    Q_OBJECT

public:
    explicit QVideoFrame(QWidget *parent = 0);
    ~QVideoFrame();

private:
    Ui::QVideoFrame *ui;
};

#endif // QVIDEOFRAME_H
