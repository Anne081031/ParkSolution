#include "mainwindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QCommonFunction::SingleApplication( "[Guid(77DBF162-F0BE-46D3-9BEE-978244F5B353)]" );

    QApplication a(argc, argv);
    QCommonFunction::SetApplicationIcon( );

    QString strStyleSheet;
    QCommonFunction::GetUIStyleSheet( strStyleSheet );

    a.setStyleSheet( strStyleSheet );

    MainWindow w;
    //QCommonFunction::SetWindowIcon( &w );

    if ( !w.Login( ) ) {
        return 0;
    }

    w.show();

    return a.exec();
}
