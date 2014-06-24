#ifndef QFRAMEREPORT_H
#define QFRAMEREPORT_H

#include <QFrame>
#include "commonmodule_global.h"
#include "../CommonModule/qcommonfunction.h"
#include <QtWebKitWidgets/QWebView>
#include <QPrinter>

namespace Ui {
class QFrameReport;
}

class COMMONMODULESHARED_EXPORT QFrameReport : public QFrame
{
    Q_OBJECT

public:
    explicit QFrameReport(QWidget *parent = 0);
    ~QFrameReport();

    void DisplayReport( const QByteArray& byJson );
    void DisplayChart(const QByteArray &byJson );
    void Export2ExcelFinisded( );

private:
    void LayoutUI( );
    void Print( QWebView& wvReport );
    void KillAdobeProcess( QString &strExe );
    bool GetAdboeExePath( QString &strExe );
    void PrintPdf( QString &strFile );
    void QueryData( int nType );

private slots:
    void on_btQuery_clicked();

    void on_btPrintPdf_clicked();

    void on_btPrintExcel_clicked();

    void on_cbxType_currentIndexChanged(int index);

signals:
    void ReportQuery( QStringList lstParams );
    void Export2Excel( QStringList lstParams, QObject* pSqlQueryModel );

private:
    Ui::QFrameReport *ui;
    QPrinter printer;
    QString strAdobeExe;
    QString strReportFile;
    QTextCodec* pTextCodec;
    QSqlQueryModel sqlExport2ExcelModel;
};

#endif // QFRAMEREPORT_H
