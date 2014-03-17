#ifndef QDLGLOGIN_H
#define QDLGLOGIN_H

#include <QDialog>
#include "commonmodule_global.h"

namespace Ui {
class QDlgLogin;
}

class COMMONMODULESHARED_EXPORT QDlgLogin : public QDialog
{
    Q_OBJECT

public:
    explicit QDlgLogin(QWidget *parent = 0);
    ~QDlgLogin();

    void FillUser( QByteArray& byJson );
    void GetUser( QString& strUser );
    void GetUserID( QString& strUserID );

private:
    bool Login( );
    void ControlDialog( );

private slots:
    void on_btnOK_clicked();

    void on_btnCancel_clicked();

private:
    Ui::QDlgLogin *ui;
    QString strLoginUser;
    QString strLoginUserID;
};

#endif // QDLGLOGIN_H
