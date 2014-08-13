#include "qvideoframe.h"
#include "ui_qvideoframe.h"

QVideoFrame::QVideoFrame(QWidget *parent) :
    QFrame(parent),
    ui(new Ui::QVideoFrame)
{
    ui->setupUi(this);
}

QVideoFrame::~QVideoFrame()
{
    delete ui;
}
