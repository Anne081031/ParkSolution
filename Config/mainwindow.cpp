#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    InitializeVideoUI( );
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::FillComboBox( QString strValues[ ][ 2 ], int nRow, QComboBox* pCbx )
{
    for ( int r = 0; r < nRow; r++ ) {
        pCbx->addItem( strValues[ r ] [ 0 ],   strValues[ r ] [ 1 ]);
    }
}

void MainWindow::InitializeVideoUI( )
{
    QString strIPCType[ 1 ][ 2 ] = { { "海康IPC", "HK" } };
    FillComboBox( strIPCType, 1, ui->cbxIPCType );

    QString strIPCStream[ 2 ][ 2 ] = { { "子码流", "0" }, { "主码流", "1" } };
    FillComboBox( strIPCStream, 2, ui->cbxIPCStream );
}
