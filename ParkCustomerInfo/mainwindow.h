#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QCloseEvent>
#include "qdlgqueryinfo.h"
#include "../DatabaseModule/qdatabasethread.h"
#include "../DataParse/qdataparser.h"
#include "../ConfigModule/qconfigurator.h"
#include "qdlgeditnewinfo.h"
#include "qlocalserverthread.h"
#include <QDateEdit>
#include "../CommonModule/qdlglogin.h"
#include "qdlgcommondata.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    bool Login( );

protected:
    void closeEvent(QCloseEvent *event);

private:
    void ComInitliaze( );
    void ControlDockWidget( );
    void HideButton( bool bShow );
    void LayoutUI( );
    void SetTitle( int nIndex );
    void ClearTableView( );
    inline void FillColumnName( QStringList& lstColName, bool bCustomer );
    inline void SetViewColumnName( QSqlQueryModel* pModel, QStringList& lstColName, int nHidenCol );
    void StartDatabaseThread( );
    void StartLocalServer( );
    void QueryCustomerData( int nIndex );
    void DeleteCustomerData( QModelIndex& modIndex, int nIndex );
    void AssignTableviewArray( );
    void ConnectDatabase( );
    void ImportCustomerInfo( QStringList &lstCustomerData );
    void ExportCustomerInfo( QString& strWhere );
    void QueryCustomerAllInfo( QString &strCustomerID );
    void QueryServiceDataInfo( QModelIndex& index, QSqlQueryModel* pModel );
    void QueryServiceDataInfo( QString& strPlate, QSqlQueryModel* pModel );
    void QueryCommonData( );
    void GetQueryCommonDataWhere( QString& strWhere );
    void ConcatCommonDataWhere( QByteArray& byWhere, QString& strDataType, bool bComma );
    inline QTableView* GetDlgQueryTableView( );
    inline QTableView* GetDlgEditNewTableView( );
    inline QTableView* GetCustomerTableView( int nIndex );
    inline QTableView* GetCustomerTableView( QSqlQueryModel* pModel );
    inline QSqlQueryModel* GetQueryModel( );
    inline QSqlQueryModel* GetEditNewModel( );
    void ShowInfoDlg( QPushButton* pClickedButton );
    void ControlDialog( );
    void HideTableViewColumn( QTableView* pTableView, int nHidenColumn );
    void ShowEditNewDlg( QPushButton* pClickedButton );
    inline QModelIndex GetTableViewModelIndex( int nIndex );
    void ChangeTabBarTextColor( int nCurrentIndex );
    void InitializeTabWidget( );
    void DeleteOrIgnoreCustomer( bool bDelete );
    bool ProcessSpResult( ParkSolution::SpType eSpType, QByteArray &byData );
    void ClearCustomerData( );
    void DisplayStatusText( int nIndex );
    void CalculateSum( quint32& nCardCount, quint32& nAmount, int nIndex );
    void ControlStatusBar( );
    void EnableIncomingDateCtrl( bool bEnable );
    void EnableUpdatingDateCtrl( bool bEnable );
    void EnableAllDateCtrl( bool bEnable );
    void InitialzieDateCtrl( );
    void GetQueryWhere( QString& strWhere, int nIndex );
    void GetIncomingWhere( QString& strWhere );
    void GetUpdatingWhere( QString& strWhere );
    void GetAllWhere( QString& strWhere );
    inline void GetDateWhere( QString& strDateWhere,
                              QDateEdit* pDateEditStart,
                              QDateEdit* pDateEditEnd,
                              QString& strFieldName );
    inline void GetOtherWhere( QString& strOtherWhere,
                               QLineEdit* pEdit,
                               QString& strFieldName,
                               const char* pLogic );
    void SetButtonMiniSize( );

private slots:
    void HandleQueryCommonDataRecord( QStringList& lstParams );
    void HandleChangeCommonDataRecord( QString strDataType, QStringList& lstParams );
    void HandleChangeCustomerVehicleData( QStringList& lstParams );
    void HandleChangeServiceRecord( QStringList &lstParams );
    void HandleLog( QString strMsg );
    void HandleSpResult( int nSpType, QByteArray byData ); // JSON
    void HandleSpResultset( int nSpType, QObject* pQSqlQueryModel );
    void HandleTabViewDoubleClicked( const QModelIndex & index );
    void on_tabWidget_currentChanged(int index);
    void HandleForeground( );

    void on_btnQuery_clicked();

    void on_btnEdit_clicked();

    void on_btnExport_clicked();

    void on_btnImport_clicked();

    void on_btnNew_clicked();

    void on_btnIgnore_clicked();

    void on_btnDelete_clicked();

    void on_cbxIncoming_currentIndexChanged(int index);

    void on_cbxUpdating_currentIndexChanged(int index);

    void on_cbxAll_currentIndexChanged(int index);

    void on_actCommonData_triggered();

    void on_actExit_triggered();

private:
    Ui::MainWindow *ui;
    QDlgQueryInfo* pDlgQueryInfo;
    QDlgEditNewInfo* pDlgEditNewInfo;
    QDlgCommonData* pDlgCommonData;
    QDatabaseThread* pDatabaseThread;
    QDataParser dataParser;
    QSqlQueryModel modelCustomer[ 3 ];
    QSqlQueryModel modelExportCustomer;
    QTableView* tableView[ 3 ];
    QConfigurator* pConfigurator;
    QStringList lstCustomerColumnName;
    QStringList lstServiceColumnName;
    QLocalServerThread* pLocalServer;
    QString strExportDataDir;
    QDlgLogin dlgLogin;
};

#endif // MAINWINDOW_H
