#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <winsock2.h>
#include <QMainWindow>
#include <QtWidgets>
#include "../CommonModule/qresizeform.h"
#include "../NetworkModule/qtcpclientthread.h"
#include "../PassengerFlowUI/passengermainwindow.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    typedef enum __ClientType {
        PassengerFlow = 0
    } ClientType;

    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private:
    void LayoutUI( );
    void Initialize( );

    QResizeForm* CreateClientTypeButton( int nType, QString& strName );
    void PassengerFlowClient( bool bStart );

private:
    Ui::MainWindow *ui;
    PassengerMainWindow* pPassengerUI;
    QTcpClientThread* pTcpClientThread;

private slots:
    void ClientTypeButtonClick( );
    void HandleResize( QSize bkSize );
};

#endif // MAINWINDOW_H
