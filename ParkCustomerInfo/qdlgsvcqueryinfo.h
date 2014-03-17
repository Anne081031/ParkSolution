#ifndef QDLGSVCQUERYINFO_H
#define QDLGSVCQUERYINFO_H

#include <QDialog>
#include "../CommonModule/CommonHeader.h"
#include <QSqlQueryModel>
#include <QSqlRecord>

namespace Ui {
class QDlgSvcQueryInfo;
}

class QDlgSvcQueryInfo : public QDialog
{
    Q_OBJECT

public:
    explicit QDlgSvcQueryInfo(QWidget *parent = 0);
    ~QDlgSvcQueryInfo();
    void SetTableView( QTableView* pView );

private:
    void SetControlValue( int nRow );
    void FillHash( );
    void FillServiceEdit( );
    void SetValue( QSqlRecord& sqlRecord, QString& strCtrlID, QString& strFieldID );

private slots:
    void on_btnNext_clicked();

private:
    Ui::QDlgSvcQueryInfo *ui;
    ParkSolution::QStringWidgetHash hashWidget;
    QTableView* pTableView;
    int nCurrentRow;
};

#endif // QDLGSVCQUERYINFO_H
