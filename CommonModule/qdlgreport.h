#ifndef QDLGREPORT_H
#define QDLGREPORT_H

#include <QDialog>
#include "commonmodule_global.h"
#include "../CommonModule/qcommonfunction.h"
#include <QtWebKitWidgets/QWebView>
#include <QPrinter>

namespace Ui {
class QDlgReport;
}

class COMMONMODULESHARED_EXPORT QDlgReport : public QDialog
{
    Q_OBJECT

public:
    explicit QDlgReport(QWidget *parent = 0);
    ~QDlgReport();

    void DisplayReport( const QByteArray& byJson );

private:
    void Print( QWebView& wvReport );
    void KillAdobeProcess( QString &strExe );
    bool GetAdboeExePath( QString &strExe );
    void PrintPdf( QString &strFile );

private slots:
    void on_btQuery_clicked();

    void on_btPrint_clicked();

signals:
    void ReportQuery( QStringList lstParams );

private:
    Ui::QDlgReport *ui;
    QPrinter printer;
    QString strAdobeExe;
};

#endif // QDLGREPORT_H
