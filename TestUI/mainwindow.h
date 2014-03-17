#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QSplitter>
#include <QSystemTrayIcon>
#include "qhoverframe.h"
#include <QCloseEvent>


namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

protected:
    void closeEvent(QCloseEvent *e);

private slots:
    void on_lineEdit_returnPressed();
    void HandleActivated( QSystemTrayIcon::ActivationReason reason );
    void HandleMessageClicked( );
    void ClickMenuItem( );

private:
    void LayoutUI( );
    void CreateImageLabel( );
    void DestroyImageLabel( );
    void SystemTrayIcon( );

private:
    Ui::MainWindow *ui;
    QSplitter* pSplitter;
    QSystemTrayIcon* pSysTrayIcon;
    QHoverFrame* pHoverFrame;
};

#endif // MAINWINDOW_H
