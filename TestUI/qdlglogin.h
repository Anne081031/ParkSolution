#ifndef QDLGLOGIN_H
#define QDLGLOGIN_H

#include <QDialog>

namespace Ui {
class QDlgLogin;
}

class QDlgLogin : public QDialog
{
    Q_OBJECT

public:
    explicit QDlgLogin(QWidget *parent = 0);
    ~QDlgLogin();

private slots:
    void on_pushButton_2_clicked();

private:
    Ui::QDlgLogin *ui;
};

#endif // QDLGLOGIN_H
