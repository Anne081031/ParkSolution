#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtWidgets>
#include "../CommonModule/qcommonfunction.h"
#include "../ConfigModule/qconfigurator.h"

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
    void closeEvent( QCloseEvent* e );

private slots:
    void on_btnOK_clicked();

    void on_btnClose_clicked();

private:
    inline void FillComboBox( QString strValues[ ][ 2  ], int nRow, QComboBox* pCbx );
    inline void SetCbxCurrentItem( QVariant varData, QComboBox* pCbx );
    inline void GetCbxCurrentItem( QVariant& varData, QComboBox* pCbx );
    inline void SetEditText( const QString& strValue, QLineEdit* pEdit );
    inline void GetEditText( QString& strValue, QLineEdit* pEdit );
    inline void SetCheckBox( bool bChecked, QCheckBox* pChx );
    inline void GetCheckBox( bool& bChecked, QCheckBox* pChx );
    void InitializeServerUI( );
    void InitializeCenterUI( );
    void InitializeGateUI( );

    void SaveData( );
    void SaveServerData( );
    void SaveCenterData( );
    void SaveGateData( );

private:
    Ui::MainWindow *ui;
    QConfigurator* pConfigurator;
};

#endif // MAINWINDOW_H
