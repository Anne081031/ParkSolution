#include "mainwindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QCommonFunction::SingleApplication( "[Guid(4FD614CC-5B12-44EB-9DEE-9BA796DCBDEF)]" );

    QApplication a(argc, argv);
    MainWindow w;

    if ( !w.Login( ) ) {
        return 0;
    }

    w.show();

    return a.exec();
}
