#include "mainwindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QCommonFunction::SingleApplication( "[Guid(77DBF162-F0BE-46D3-9BEE-978244F5B353)]" );

    QApplication a(argc, argv);
    MainWindow w;
    if ( !w.Login( ) ) {
        return 0;
    }

    w.show();

    return a.exec();
}
