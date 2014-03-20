/********************************************************************************
** Form generated from reading UI file 'qdlgeditnewcommondata.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QDLGEDITNEWCOMMONDATA_H
#define UI_QDLGEDITNEWCOMMONDATA_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDialog>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_QDlgEditNewCommonData
{
public:
    QWidget *layoutWidget;
    QHBoxLayout *horizontalLayout;
    QPushButton *btnNext;
    QPushButton *btnOK;
    QPushButton *btnCancel;
    QWidget *formLayoutWidget;
    QFormLayout *formLayout;
    QLabel *label;
    QLabel *label_2;
    QLineEdit *edtValueID;
    QLineEdit *edtValue;

    void setupUi(QDialog *QDlgEditNewCommonData)
    {
        if (QDlgEditNewCommonData->objectName().isEmpty())
            QDlgEditNewCommonData->setObjectName(QStringLiteral("QDlgEditNewCommonData"));
        QDlgEditNewCommonData->resize(261, 117);
        QDlgEditNewCommonData->setMinimumSize(QSize(261, 117));
        QDlgEditNewCommonData->setMaximumSize(QSize(261, 117));
        layoutWidget = new QWidget(QDlgEditNewCommonData);
        layoutWidget->setObjectName(QStringLiteral("layoutWidget"));
        layoutWidget->setGeometry(QRect(10, 80, 239, 25));
        horizontalLayout = new QHBoxLayout(layoutWidget);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        btnNext = new QPushButton(layoutWidget);
        btnNext->setObjectName(QStringLiteral("btnNext"));

        horizontalLayout->addWidget(btnNext);

        btnOK = new QPushButton(layoutWidget);
        btnOK->setObjectName(QStringLiteral("btnOK"));

        horizontalLayout->addWidget(btnOK);

        btnCancel = new QPushButton(layoutWidget);
        btnCancel->setObjectName(QStringLiteral("btnCancel"));

        horizontalLayout->addWidget(btnCancel);

        formLayoutWidget = new QWidget(QDlgEditNewCommonData);
        formLayoutWidget->setObjectName(QStringLiteral("formLayoutWidget"));
        formLayoutWidget->setGeometry(QRect(10, 10, 241, 51));
        formLayout = new QFormLayout(formLayoutWidget);
        formLayout->setObjectName(QStringLiteral("formLayout"));
        formLayout->setContentsMargins(0, 0, 0, 0);
        label = new QLabel(formLayoutWidget);
        label->setObjectName(QStringLiteral("label"));

        formLayout->setWidget(0, QFormLayout::LabelRole, label);

        label_2 = new QLabel(formLayoutWidget);
        label_2->setObjectName(QStringLiteral("label_2"));

        formLayout->setWidget(1, QFormLayout::LabelRole, label_2);

        edtValueID = new QLineEdit(formLayoutWidget);
        edtValueID->setObjectName(QStringLiteral("edtValueID"));
        edtValueID->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtValueID->setReadOnly(true);

        formLayout->setWidget(0, QFormLayout::FieldRole, edtValueID);

        edtValue = new QLineEdit(formLayoutWidget);
        edtValue->setObjectName(QStringLiteral("edtValue"));

        formLayout->setWidget(1, QFormLayout::FieldRole, edtValue);


        retranslateUi(QDlgEditNewCommonData);

        QMetaObject::connectSlotsByName(QDlgEditNewCommonData);
    } // setupUi

    void retranslateUi(QDialog *QDlgEditNewCommonData)
    {
        QDlgEditNewCommonData->setWindowTitle(QApplication::translate("QDlgEditNewCommonData", "\351\200\232\347\224\250\346\225\260\346\215\256", 0));
#ifndef QT_NO_WHATSTHIS
        QDlgEditNewCommonData->setWhatsThis(QApplication::translate("QDlgEditNewCommonData", "\351\200\232\347\224\250\346\225\260\346\215\256", 0));
#endif // QT_NO_WHATSTHIS
        btnNext->setText(QApplication::translate("QDlgEditNewCommonData", "\344\270\213\344\270\200\346\235\241", 0));
        btnOK->setText(QApplication::translate("QDlgEditNewCommonData", "\344\277\235\345\255\230", 0));
        btnCancel->setText(QApplication::translate("QDlgEditNewCommonData", "\345\205\263\351\227\255", 0));
        label->setText(QApplication::translate("QDlgEditNewCommonData", "\346\225\260\346\215\256\351\241\271ID", 0));
        label_2->setText(QApplication::translate("QDlgEditNewCommonData", "\346\225\260\346\215\256\351\241\271\345\200\274", 0));
    } // retranslateUi

};

namespace Ui {
    class QDlgEditNewCommonData: public Ui_QDlgEditNewCommonData {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QDLGEDITNEWCOMMONDATA_H
