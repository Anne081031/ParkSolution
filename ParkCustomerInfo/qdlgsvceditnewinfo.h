#ifndef QDLGSVCEDITNEWINFO_H
#define QDLGSVCEDITNEWINFO_H

#include <QDialog>
#include "../CommonModule/CommonHeader.h"
#include <QSqlQueryModel>
#include <QSqlRecord>
#include <QCloseEvent>

namespace Ui {
class QDlgSvcEditNewInfo;
}

class QDlgSvcEditNewInfo : public QDialog
{
    Q_OBJECT

public:
    explicit QDlgSvcEditNewInfo(QWidget *parent = 0);
    ~QDlgSvcEditNewInfo();
    void SetFlag( bool bEdit );
    void SetTableView( QTableView* pView );
    void AppendComboxBox( ParkSolution::QStringWidgetHash& wgtHash );
    void SetServiceID( QString& strServiceID );
    void SetPlateID( QString& strPlateID );

protected:
    void closeEvent( QCloseEvent* pEvent );

private:
    void SetControlValue( int nRow, bool bOnlyPlate );
    void FillHash( );
    void FillServiceCtrl( );
    void ClearData( );
    void FillParamsList( );
    bool DecideInputValue( );
    void ControlPlateEdit( bool bOnlyRead );
    void SetValue( QSqlRecord& sqlRecord, QString& strCtrlID, QString& strFieldID );
    void SetIntValidator(QLineEdit *pEdit, int nMin, int nMax );

private slots:
    void on_btnNext_clicked();

    void on_btnOK_clicked();

    void on_btnCancel_clicked();

signals:
    void ChangeServiceRecord( QStringList& lstParams );

private:
    Ui::QDlgSvcEditNewInfo *ui;
    ParkSolution::QStringWidgetHash hashWidget;
    QTableView* pTableView;
    int nCurrentRow;
    QStringList lstParams;
    bool bEditData;
};

#endif // QDLGSVCEDITNEWINFO_H
