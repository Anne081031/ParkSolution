#include "mainwindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QCommonFunction::SingleApplication( "[Guid(7D8ADD33-8E2A-487E-AF07-A09CCFFA0417)]" );

    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    return a.exec();
}
