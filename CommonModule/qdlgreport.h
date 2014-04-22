#ifndef QDLGREPORT_H
#define QDLGREPORT_H

#include <QDialog>
#include "commonmodule_global.h"
#include "../CommonModule/qcommonfunction.h"
#include <QtWebKitWidgets/QWebView>

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

private slots:
    void on_btQuery_clicked();

signals:
    void ReportQuery( QStringList lstParams );

private:
    Ui::QDlgReport *ui;
};

#endif // QDLGREPORT_H
