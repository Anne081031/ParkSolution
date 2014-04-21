#ifndef QSHAPEDFORM_H
#define QSHAPEDFORM_H

#include <QWidget>
#include "commonmodule_global.h"

namespace Ui {
class QShapedForm;
}

class COMMONMODULESHARED_EXPORT QShapedForm : public QWidget
{
    Q_OBJECT

public:
    explicit QShapedForm(QWidget *parent = 0);
    ~QShapedForm();

    QSize sizeHint( ) const;

protected:
    void mouseDoubleClickEvent( QMouseEvent* );
    void resizeEvent( QResizeEvent* );

private:
    Ui::QShapedForm *ui;
    bool bVisible;
    int nCaptionButtonWidth;
    int nCaptionButtonHeight;

signals:
    void ShowHoverWindow( bool bVisible );
};

#endif // QSHAPEDFORM_H
