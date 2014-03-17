/********************************************************************************
** Form generated from reading UI file 'qdlgcommondata.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QDLGCOMMONDATA_H
#define UI_QDLGCOMMONDATA_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDialog>
#include <QtWidgets/QHeaderView>

QT_BEGIN_NAMESPACE

class Ui_QDlgCommonData
{
public:

    void setupUi(QDialog *QDlgCommonData)
    {
        if (QDlgCommonData->objectName().isEmpty())
            QDlgCommonData->setObjectName(QStringLiteral("QDlgCommonData"));
        QDlgCommonData->resize(400, 300);

        retranslateUi(QDlgCommonData);

        QMetaObject::connectSlotsByName(QDlgCommonData);
    } // setupUi

    void retranslateUi(QDialog *QDlgCommonData)
    {
        QDlgCommonData->setWindowTitle(QApplication::translate("QDlgCommonData", "Dialog", 0));
    } // retranslateUi

};

namespace Ui {
    class QDlgCommonData: public Ui_QDlgCommonData {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QDLGCOMMONDATA_H
