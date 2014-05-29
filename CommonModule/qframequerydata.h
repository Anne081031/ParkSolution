#ifndef QFRAMEQUERYDATA_H
#define QFRAMEQUERYDATA_H

#include "commonmodule_global.h"
#include <QFrame>
#include <QLabel>
#include <QtSql>
#include "qresizeform.h"
#include "../CommonModule/CommonTypedef.h"

namespace Ui {
class QFrameQueryData;
}

class COMMONMODULESHARED_EXPORT QFrameQueryData : public QFrame
{
    Q_OBJECT

public:
    explicit QFrameQueryData(QWidget *parent = 0);
    ~QFrameQueryData();

    void QueryInOutRecordFinished( );
    void QueryImageFinished( QByteArray& byData );

protected:
    void closeEvent( QCloseEvent* e );

private slots:
    void HandleResize( QSize bkSize );
    void on_btnInOutRecordQuery_clicked();

    void on_tabWidget_currentChanged(int index);

    void on_tabInOutRecord_clicked(const QModelIndex &index);

signals:
    void QueryDataset( QStringList lstParams, QObject * pModel );
    void QueryData( QStringList lstParams );

private:
    void MainLayoutUI( );
    void RecordLayoutUI( );

    void CreateBackgroundForm( );
    inline void SetModel4View( );
    bool LoadImage( bool bLeave, const QString& strRecordID, QLabel* pLbl );
    inline void GetImageFirst( bool bLeave, const QString& strRecordID, const QString& strImage64, QLabel* pLbl );

    void InitializeTabWidget( );
    void SetTitle( int nIndex );
    void ChangeTabBarTextColor( int nCurrentIndex );

private:
    Ui::QFrameQueryData *ui;
    ParkSolution::QStringByteArrayHash hashStringByteArray[ 2 ];
    QSqlQueryModel sqlInOutRecordModel;
    QResizeForm bkForms[ 2 ];
};

#endif // QFRAMEQUERYDATA_H
