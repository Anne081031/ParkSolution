#ifndef QFRAMEQUERYDATA_H
#define QFRAMEQUERYDATA_H

#include "commonmodule_global.h"
#include <QFrame>
#include <QHBoxLayout>
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
    typedef enum _Resultset {
        CustomerData = 0,
        VehicleData,
        ServiceData,
        InOutRecordData,
    } Resultset ;

    explicit QFrameQueryData(QWidget *parent = 0);
    ~QFrameQueryData();

    void QueryInOutRecordFinished( );
    void QueryCustomerFinished( );
    void QueryVehicleFinished( );
    void QueryServiceDataFinished( );
    void QueryImageFinished( QByteArray& byData );
    void QueryChartFinished( QByteArray& byData );

protected:
    void closeEvent( QCloseEvent* e );

private slots:
    void HandleResize( QSize bkSize );
    void on_btnInOutRecordQuery_clicked();

    void on_tabWidget_currentChanged(int index);

    void on_tabInOutRecord_clicked(const QModelIndex &index);

    void on_tabCustomerInfo_clicked(const QModelIndex &index);

    void on_tabVehicleInfo_clicked(const QModelIndex &index);

    void on_cbxType_currentIndexChanged(int index);

    void on_cbxChartType_currentIndexChanged(int index);

signals:
    void QueryDataset( QStringList lstParams, QObject * pModel, int  nType );
    void QueryData( QStringList lstParams );
    void QueryChart( QStringList lstParams );

private:
    inline void SetTrendName( const QString& strPlate );
    inline void GetKeyValue( const QModelIndex &index, const QString& strKey, QString& strValue );
    void QueryResultset( QStringList& lstParams, Resultset eType );
    void MainLayoutUI( );
    void RecordLayoutUI( );
    void QueryChartData( int nIndex );
    void InitializeResizeForm( QResizeForm* pForm, QHBoxLayout* pLayout, QLabel* pLbl );

    inline void CreateBackgroundForm( );
    inline void SetModel4View( );
    bool LoadImage( bool bLeave, const QString& strRecordID, QLabel* pLbl );
    inline void GetImageFirst( bool bLeave, const QString& strRecordID, const QString& strImage64, QLabel* pLbl );

    void InitializeDateTime( );
    void InitializeTabWidget( );
    void SetTitle( int nIndex );
    void ChangeTabBarTextColor( int nCurrentIndex );

private:
    Ui::QFrameQueryData *ui;
    ParkSolution::QStringByteArrayHash hashStringByteArray[ 2 ];
    QSqlQueryModel sqlCustomerModel;
    QSqlQueryModel sqlVehicleModel;
    QSqlQueryModel sqlServiceDataModel;
    QSqlQueryModel sqlInOutRecordModel;
    QResizeForm bkForms[ 2 ];
    QString strFilePath;
};

#endif // QFRAMEQUERYDATA_H
