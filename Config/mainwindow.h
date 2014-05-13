#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtWidgets>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private:
    inline void FillComboBox( QString strValues[ ][ 2  ], int nRow, QComboBox* pCbx );
    void InitializeVideoUI( );

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
