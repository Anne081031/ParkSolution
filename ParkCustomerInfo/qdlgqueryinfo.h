#ifndef QDLGQUERYINFO_H
#define QDLGQUERYINFO_H

#include <QDialog>
#include <QTableView>
#include <QSqlQueryModel>
#include "../CommonModule/CommonHeader.h"

namespace Ui {
class QDlgQueryInfo;
}

class QDlgQueryInfo : public QDialog
{
    Q_OBJECT

public:
    explicit QDlgQueryInfo(QWidget *parent = 0);
    ~QDlgQueryInfo();
    QTableView* GetTableView( );
    QSqlQueryModel* GetModel( );
    ParkSolution::QStringWidgetHash& GetWidgetHash( );
    void ClearEditData( );


private slots:

    void on_tabServiceRecord_doubleClicked(const QModelIndex &index);

private:
    void LayoutUI( );
    void FillHash( );
    void FillVehicleEdit( );
    void FillCustomerEdit( );

private:
    Ui::QDlgQueryInfo *ui;
    ParkSolution::QStringWidgetHash hashWidget;
    QSqlQueryModel modelService;
};

#endif // QDLGQUERYINFO_H
