#ifndef QIMAGEBKFORM_H
#define QIMAGEBKFORM_H

#include <QWidget>
#include <QResizeEvent>

namespace Ui {
class QImageBKForm;
}

class QImageBKForm : public QWidget
{
    Q_OBJECT

public:
    explicit QImageBKForm( int nIndex ,QWidget *parent = 0);
    ~QImageBKForm();

protected:
    void resizeEvent( QResizeEvent* pEvent );

signals:
    void BKResize( int nIndex, QSize bkSize );

private:
    Ui::QImageBKForm *ui;
    int nImageIndex;
};

#endif // QIMAGEBKFORM_H
