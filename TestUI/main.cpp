#include "mainwindow.h"
#include <QApplication>


int main(int argc, char *argv[])
{


    QApplication a(argc, argv);

    QString strSheetStyle = "QPushButton { border-image: url(./Image/ButtonDefault.png); }\
            QPushButton::pressed { color: red; border-image: url(./Image/ButtonDown.png); }";
    //strSheetStyle += "QPushButton::hover { background-image: url(:/Button/Image/ButtonHover.png); }";
    strSheetStyle += "QDialog { border-image: url(./Image/Login.png); }";

    strSheetStyle = "QLineEdit { background-color: green; color: red; }";
    a.setStyleSheet( strSheetStyle );

    MainWindow w;
    w.show();

    return a.exec();
}
