#ifndef QDLGCOMMONDATA_H
#define QDLGCOMMONDATA_H

#include <QDialog>

namespace Ui {
class QDlgCommonData;
}

class QDlgCommonData : public QDialog
{
    Q_OBJECT

public:
    explicit QDlgCommonData(QWidget *parent = 0);
    ~QDlgCommonData();

private:
    Ui::QDlgCommonData *ui;
};

#endif // QDLGCOMMONDATA_H
