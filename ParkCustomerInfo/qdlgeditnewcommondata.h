#ifndef QDLGEDITNEWCOMMONDATA_H
#define QDLGEDITNEWCOMMONDATA_H

#include <QDialog>
#include "../CommonModule/CommonHeader.h"
#include <QSqlQueryModel>
#include <QSqlRecord>
#include <QCloseEvent>

namespace Ui {
class QDlgEditNewCommonData;
}

class QDlgEditNewCommonData : public QDialog
{
    Q_OBJECT

public:
    explicit QDlgEditNewCommonData(QWidget *parent = 0);
    ~QDlgEditNewCommonData();
    void SetValueID( QString& strValueID );
    void SetFlag( bool bEdit );
    void SetTableView( QTableView* pView );
    void SetDataType( QString& strType );

protected:
    void closeEvent( QCloseEvent *pEvent );

private slots:
    void on_btnNext_clicked();

    void on_btnOK_clicked();

    void on_btnCancel_clicked();

signals:
    void ChangeCommonDataRecord( QString strDataType, QStringList& lstParams );

private:
    void FillHash( );
    bool DecideInputValue( );
    void FillParamsList( );
    void ClearData( );
    void SetControlValue( int nRow );
    void SetValue( QSqlRecord& sqlRecord, QString& strCtrlID, QString& strFieldID );

private:
    Ui::QDlgEditNewCommonData *ui;

    QTableView* pTableView;
    int nCurrentRow;
    QStringList lstParams;
    ParkSolution::QStringWidgetHash hashWidget;
    bool bEditData;
    QString strDataType;
};

#endif // QDLGEDITNEWCOMMONDATA_H
