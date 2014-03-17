#ifndef QDLGEDITNEWINFO_H
#define QDLGEDITNEWINFO_H

#include <QDialog>
#include <QtSql>
#include "../CommonModule/CommonHeader.h"
#include "qdlgsvceditnewinfo.h"
#include <QCloseEvent>

namespace Ui {
class QDlgEditNewInfo;
}

class QDlgEditNewInfo : public QDialog
{
    Q_OBJECT

public:
    explicit QDlgEditNewInfo(QWidget *parent = 0);
    ~QDlgEditNewInfo();
    void SetEditFlag( bool bEdit );
    bool GetEditFlag( );
    QTableView* GetTableView( );
    QSqlQueryModel* GetModel( );
    QStringList& GetParamsList( );
    ParkSolution::QStringWidgetHash& GetWidgetHash( );
    void InitializeDialog( QModelIndex& index );
    bool ProcessSpResult( ParkSolution::SpType eSpType, QByteArray& byData );
    void ClearData( );
    void ShowServiceDlg( bool bEdit, QAction* pAct );
    void GetPlateID( QString& strPlateID );

protected:
    void closeEvent( QCloseEvent* pEvent );

private slots:
    void EditRecord( );
    void AddRecord( );
    void HandleChangeServiceRecord( QStringList& lstParams );
    void on_btnOK_clicked();

    void on_btnCancel_clicked();

    void on_tabServiceRecord_customContextMenuRequested(const QPoint &pos);

private:
    void LayoutUI( );
    void FillHash( );
    void FillVehicleEdit( );
    void FillCustomerEdit( );
    void FillParamsList( );
    bool DecideInputValue( );
    void CreateContextMenu( QWidget* parent );
    inline void SetIntValidator( QLineEdit* pEdit, int nMin, int nMax );
    void SetControlValue( QSqlRecord& sqlRow, QString& strFieldName, QString& strControl );

private:
    Ui::QDlgEditNewInfo *ui;
    ParkSolution::QStringWidgetHash hashWidget;
    bool bEditData;
    QStringList lstParams;
    QDlgSvcEditNewInfo* pDlgSvcEditNewInfo;
    QSqlQueryModel modelService;

signals:
    void ChangeCustomerVehicleData( QStringList& lstParams );
    void ChangeServiceRecord( QStringList& lstParams );
};

#endif // QDLGEDITNEWINFO_H
