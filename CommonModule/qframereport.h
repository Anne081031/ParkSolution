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

private:
    void LoadChartCbx( );
    void LayoutUI( );
    void Print( QWebView& wvReport );
    void KillAdobeProcess( QString &strExe );
    bool GetAdboeExePath( QString &strExe );
    void PrintPdf( QString &strFile );
    void QueryData( int nType );

private slots:
    void on_btQuery_clicked();

    void on_btPrint_clicked();

    void on_cbxType_currentIndexChanged(int index);

signals:
    void ReportQuery( QStringList lstParams );

private:
    Ui::QFrameReport *ui;
    QPrinter printer;
    QString strAdobeExe;
    QString strReportFile;
    QTextCodec* pTextCodec;
};

#endif // QFRAMEREPORT_H
