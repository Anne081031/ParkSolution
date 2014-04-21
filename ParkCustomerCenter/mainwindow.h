#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QCloseEvent>
#include "qimagelabel.h"
#include "qimagebkform.h"
#include "../DataParse/qdataparser.h"
#include "qplatethread.h"
#include "../DatabaseModule/qdatabasethread.h"
#include "../ConfigModule/qconfigurator.h"
#include <QtNetwork>
#include "../CommonModule/qdlglogin.h"
#include <QSystemTrayIcon>
#include "../CommonModule/qshapedform.h"
#include "../CommonModule/qhoverframe.h"
#include "qspeechthread.h"

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
    void showEvent( QShowEvent * );
    void moveEvent( QMoveEvent * );

private:
    inline void SetScrollAreaStyleSheet( );
    void SystemTrayIcon( );
    void LayoutUI( );
    void CreateImageLabel( );
    void CreateInfoWidget( );
    void DestroyImageLabel( );
    void FillHash( );
    void FillCustomerEdit( );
    void FillVehicleEdit( );
    void StartPlateThread( );
    void StartDatabaseThread( );
    void StartSpeechThread( );
    void ConnectDatabase( );
    void ClearEditText( );
    inline void ClearTableView( );
    void FillInfoEditsArray( );
    void SetBigPicture( int nIndex );
    void SetSmallPicture( int nIndex, QByteArray& byImage );
    void QueryCustomerAllInfo( int nDoubleClick, QString& strPlate, QString& strEnterTime );
    void SetSmallPictureCustomerInfo( int nIndex, QString& strPlate, QString& strEnterTime );
    void SetBigPictureIndex( int nIndex );
    void FillServiceColumnName( );
    void SetServiceViewColumnName( QSqlQueryModel* pModel );
    void HideTableViewColumn( QTableView* pTableView );
    void StartProcess( );
    bool SendData( );
    void CreateHoverForm( );
    void CustomerComing( );
    void GetComingString( QString& strText, int nIndex );
    void PlayWelcomeSound( );
    void MovePicture( );

private:
    Ui::MainWindow *ui;
    QImageLabel* pImageLabels[ IMAGE_LABEL_COUNT ];
    QImageBKForm* pImageBK[ IMAGE_LABEL_COUNT ];
    QImageBKForm* pInfoBK[ IMAGE_LABEL_COUNT - 1 ];
    QLineEdit* pInfoEdits[ 4 ][ 4 ];
    ParkSolution::QStringWidgetHash hashWidget;
    QPlateThread* pPlateThread;
    QPlateParserThread* pPlateParserThread;
    QDatabaseThread* pDatabaseThread;
    QSqlQueryModel modelService;
    QDataParser dataParser;
    QConfigurator* pConfigurator;
    QStringList lstServiceColumnName;
    QLocalSocket localSocket;
    QDlgLogin dlgLogin;
    QSystemTrayIcon* pSysTrayIcon;
    QHoverFrame* pHoverFrame;
    QShapedForm* pShapedForm;
    QSpeechThread* pSpeechThread;

private slots:
    void HandleActivated( QSystemTrayIcon::ActivationReason reason );
    void HandleMessageClicked( );
    void HandleShowHoverWindow( bool bVisible );

    void HandleBKResize( int nIndex, QSize bkSize );
    void HandleInfoBKResize( int nIndex, QSize bkSize );
    void OnImageLabelDoubleClick( QMouseEvent*, int nImageIndex );
    void HandlePlateData( QString strPlate, QString strDateTime, QByteArray byImage );
    void HandleLog( QString strMsg );
    void HandleSpResult( int nSpType, QByteArray byData ); // JSON
    void HandleSpResultset( int nSpType, QObject* pQSqlQueryModel );
    void on_actCustomerInfo_triggered();
    void on_actionExit_triggered();
};

#endif // MAINWINDOW_H
