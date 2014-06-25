#ifndef QDLGBIGPICTURE_H
#define QDLGBIGPICTURE_H

#include <QDialog>
#include <QLabel>

namespace Ui {
class QDlgBigPicture;
}

class QDlgBigPicture : public QDialog
{
    Q_OBJECT

public:
    explicit QDlgBigPicture(QWidget *parent = 0);
    ~QDlgBigPicture();

    void SetPixmap( const QPixmap& pixmap );

private:
    Ui::QDlgBigPicture *ui;
    QLabel* pMyLabel;

private slots:
    void HandleCloseDialog( );

};

#endif // QDLGBIGPICTURE_H
