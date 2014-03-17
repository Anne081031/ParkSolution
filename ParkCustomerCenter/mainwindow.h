#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QCloseEvent>
#include "qimagelabel.h"
#include "../DataParse/qdataparser.h"
#include "qplatethread.h"
#include "../DatabaseModule/qdatabasethread.h"
#include "../ConfigModule/qconfigurator.h"
#include <QtNetwork>
#include "../CommonModule/qdlglogin.h"
#include <QSystemTrayIcon>

#define IMAGE_LABEL_COUNT   ( int ) 5

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    bool Login( );
    ~MainWindow();

protected:
    void closeEvent( QCloseEvent * event );
    void changeEvent( QEvent* event );

private:
    void SystemTrayIcon( );
    void LayoutUI( );
    void CreateImageLabel( );
    void DestroyImageLabel( );
    void FillHash( );
    void FillCustomerEdit( );
    void FillVehicleEdit( );
    void StartPlateThread( );
    void StartDatabaseThread( );
    void ConnectDatabase( );
    void ClearEditText( );
    inline void ClearTableView( );
    void FillInfoEditsArray( );
    void SetBigPicture( int nIndex );
    void SetSmallPicture( int nIndex, QString& strImageData );
    void QueryCustomerAllInfo( int nDoubleClick, QString& strPlate, QString& strEnterTime );
    void SetSmallPictureCustomerInfo( int nIndex, QString& strPlate, QString& strEnterTime );
    void SetBigPictureIndex( int nIndex );
    void FillServiceColumnName( );
    void SetServiceViewColumnName( QSqlQueryModel* pModel );
    void HideTableViewColumn( QTableView* pTableView );
    void StartProcess( );
    bool SendData( );

private:
    Ui::MainWindow *ui;
    QImageLabel* pImageLabels[ IMAGE_LABEL_COUNT ];
    QLineEdit* pInfoEdits[ 4 ][ 4 ];
    ParkSolution::QStringWidgetHash hashWidget;
    QPlateThread* pPlateThread;
    QDatabaseThread* pDatabaseThread;
    QSqlQueryModel modelService;
    QDataParser dataParser;
    QConfigurator* pConfigurator;
    QStringList lstServiceColumnName;
    QLocalSocket localSocket;
    QDlgLogin dlgLogin;
    QSystemTrayIcon* pSysTrayIcon;

private slots:
    void HandleActivated( QSystemTrayIcon::ActivationReason reason );
    void OnImageLabelDoubleClick( QMouseEvent*, int nImageIndex );
    void HandlePlateData( QByteArray byData );
    void HandleLog( QString strMsg );
    void HandleSpResult( int nSpType, QByteArray byData ); // JSON
    void HandleSpResultset( int nSpType, QObject* pQSqlQueryModel );
    void on_actCustomerInfo_triggered();
    void on_actionExit_triggered();
};

#endif // MAINWINDOW_H
