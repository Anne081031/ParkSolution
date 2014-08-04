#ifndef QRESIZEFORM_H
#define QRESIZEFORM_H

#include <QWidget>
#include <QResizeEvent>
#include "commonmodule_global.h"

namespace Ui {
class QResizeForm;
}

class COMMONMODULESHARED_EXPORT QResizeForm : public QWidget
{
    Q_OBJECT

public:
    explicit QResizeForm(QWidget *parent = 0);
    ~QResizeForm();

protected:
    void resizeEvent( QResizeEvent* pEvent );

signals:
    void Resize( QSize bkSize );

private:
    Ui::QResizeForm *ui;
};

#endif // QRESIZEFORM_H
