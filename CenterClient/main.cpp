#include "mainwindow.h"
#include <QApplication>
//实现功能模块配置 人数统计等等
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    return a.exec();
}
