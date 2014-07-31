#include "mainwindow.h"
#include "ui_mainwindow.h"
//实现功能模块配置 人数统计等等
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}
