#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtWidgets>
#include "../CommonModule/qresizeform.h"
#include "../NetworkModule/qtcpserverthread.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    typedef enum __ServerType {
        PassengerFlow = 0
    } ServerType;

    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private:
    void LayoutUI( );
    void Initialize( );

    QResizeForm* CreateServerTypeButton( int nType, QString& strName );
    void PassengerFlowServer( bool bStart );

private:
    Ui::MainWindow *ui;
    QTcpServerThread* pTcpServerThread;

private slots:
    void ServerTypeButtonClick( );
    void HandleResize( QSize bkSize );
};

#endif // MAINWINDOW_H
