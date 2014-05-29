/********************************************************************************
** Form generated from reading UI file 'qdlgcommondata.ui'
**
** Created by: Qt User Interface Compiler version 5.3.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QDLGCOMMONDATA_H
#define UI_QDLGCOMMONDATA_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDialog>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QTableView>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_QDlgCommonData
{
public:
    QWidget *formLayoutWidget;
    QFormLayout *formLayout;
    QLabel *label;
    QComboBox *cbxDataType;
    QTableView *tabCommonData;

    void setupUi(QDialog *QDlgCommonData)
    {
        if (QDlgCommonData->objectName().isEmpty())
            QDlgCommonData->setObjectName(QStringLiteral("QDlgCommonData"));
        QDlgCommonData->resize(242, 295);
        QDlgCommonData->setMinimumSize(QSize(242, 295));
        QDlgCommonData->setMaximumSize(QSize(242, 295));
        formLayoutWidget = new QWidget(QDlgCommonData);
        formLayoutWidget->setObjectName(QStringLiteral("formLayoutWidget"));
        formLayoutWidget->setGeometry(QRect(10, 10, 201, 22));
        formLayout = new QFormLayout(formLayoutWidget);
        formLayout->setObjectName(QStringLiteral("formLayout"));
        formLayout->setContentsMargins(0, 0, 0, 0);
        label = new QLabel(formLayoutWidget);
        label->setObjectName(QStringLiteral("label"));

        formLayout->setWidget(0, QFormLayout::LabelRole, label);

        cbxDataType = new QComboBox(formLayoutWidget);
        cbxDataType->setObjectName(QStringLiteral("cbxDataType"));

        formLayout->setWidget(0, QFormLayout::FieldRole, cbxDataType);

        tabCommonData = new QTableView(QDlgCommonData);
        tabCommonData->setObjectName(QStringLiteral("tabCommonData"));
        tabCommonData->setGeometry(QRect(10, 40, 221, 241));
        tabCommonData->setContextMenuPolicy(Qt::CustomContextMenu);
        tabCommonData->setSelectionMode(QAbstractItemView::SingleSelection);
        tabCommonData->setSelectionBehavior(QAbstractItemView::SelectRows);
        tabCommonData->verticalHeader()->setVisible(false);

        retranslateUi(QDlgCommonData);

        QMetaObject::connectSlotsByName(QDlgCommonData);
    } // setupUi

    void retranslateUi(QDialog *QDlgCommonData)
    {
        QDlgCommonData->setWindowTitle(QApplication::translate("QDlgCommonData", "\351\200\232\347\224\250\346\225\260\346\215\256", 0));
        label->setText(QApplication::translate("QDlgCommonData", "\346\225\260\346\215\256\347\261\273\345\210\253", 0));
    } // retranslateUi

};

namespace Ui {
    class QDlgCommonData: public Ui_QDlgCommonData {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QDLGCOMMONDATA_H
