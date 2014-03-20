#ifndef QDLGCOMMONDATA_H
#define QDLGCOMMONDATA_H

#include <QDialog>
#include <QSqlQueryModel>
#include "qdlgeditnewcommondata.h"

namespace Ui {
class QDlgCommonData;
}

class QDlgCommonData : public QDialog
{
    Q_OBJECT

public:
    explicit QDlgCommonData(QWidget *parent = 0);
    ~QDlgCommonData();

    QTableView* GetTableView( );
    QSqlQueryModel* GetModel( );
    QStringList& GetParamsList( );
    void FillComboBox( );
    void HideColumn( );
    bool ProcessSpResult( ParkSolution::SpType eSpType, QByteArray &byData );

private:
    void ShowChangeDlg( bool bEdit, QAction* pAct );
    void CreateContextMenu( QWidget* parent );
    inline void InsertItem( QString& strDataType, QString strChinese );

private:
    Ui::QDlgCommonData *ui;
    QSqlQueryModel modelService;
    QDlgEditNewCommonData* pDlgEditNewCommonData;
    QStringList lstParams;

signals:
    void QueryCommonDataRecord( QStringList& lstParams );
    void ChangeCommonDataRecord( QString strDataType, QStringList& lstParams );

private slots:
    void EditRecord( );
    void AddRecord( );
    void HandleChangeCommonDataRecord( QString strDataType, QStringList& lstParams );
    void HandleCurrentIndexChanged( int nIndex );
    void on_tabCommonData_customContextMenuRequested(const QPoint &pos);
};

#endif // QDLGCOMMONDATA_H
