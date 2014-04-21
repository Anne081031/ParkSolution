#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QSplitter>
#include <QSystemTrayIcon>
#include "qhoverframe.h"
#include <QCloseEvent>
#include "shapedclock.h"
#include <QAxObject>


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
    void resizeEvent( QResizeEvent* e);
    void moveEvent(QMoveEvent * event);

private slots:
    void on_lineEdit_returnPressed();
    void HandleActivated( QSystemTrayIcon::ActivationReason reason );
    void HandleMessageClicked( );
    void ClickMenuItem( );
    void HandleShowHoverWindow( bool bVisible );
    void HandleException(int code, const QString & source, const QString & desc, const QString & help);

    void on_pushButton_clicked();

private:
    void LayoutUI( );
    void CreateImageLabel( );
    void DestroyImageLabel( );
    void SystemTrayIcon( );
    //void Move

private:
    Ui::MainWindow *ui;
    QSplitter* pSplitter;
    QSystemTrayIcon* pSysTrayIcon;
    QHoverFrame* pHoverFrame;
    ShapedClock* pShapedClock;
    QAxObject* pAxObj;
};

#endif // MAINWINDOW_H
