/********************************************************************************
** Form generated from reading UI file 'qdlgsvcqueryinfo.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QDLGSVCQUERYINFO_H
#define UI_QDLGSVCQUERYINFO_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDialog>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_QDlgSvcQueryInfo
{
public:
    QWidget *formLayoutWidget;
    QFormLayout *formLayout1;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *label_4;
    QLabel *label_5;
    QLineEdit *edtServiceID;
    QLineEdit *edtPlateID;
    QLineEdit *edtInsuranceAmount;
    QLineEdit *edtCategory;
    QLineEdit *edtSubCategory;
    QWidget *formLayoutWidget_3;
    QFormLayout *formLayout3;
    QLabel *label_11;
    QLabel *label_12;
    QLabel *label_13;
    QLineEdit *edtServiceConsumptionAmount;
    QLineEdit *edtServiceDepartment;
    QLineEdit *edtMaintanceman;
    QWidget *formLayoutWidget_2;
    QFormLayout *formLayout2;
    QLabel *label_6;
    QLineEdit *edtClaimAmount;
    QLabel *label_7;
    QLabel *label_8;
    QLabel *label_9;
    QLabel *label_10;
    QLineEdit *edtSettlementStyle;
    QLineEdit *edtMaintanceStartTime;
    QLineEdit *edtMaintanceEndTime;
    QLineEdit *edtPickupTime;
    QPushButton *btnNext;

    void setupUi(QDialog *QDlgSvcQueryInfo)
    {
        if (QDlgSvcQueryInfo->objectName().isEmpty())
            QDlgSvcQueryInfo->setObjectName(QStringLiteral("QDlgSvcQueryInfo"));
        QDlgSvcQueryInfo->resize(703, 187);
        QDlgSvcQueryInfo->setMinimumSize(QSize(703, 187));
        QDlgSvcQueryInfo->setMaximumSize(QSize(703, 187));
        formLayoutWidget = new QWidget(QDlgSvcQueryInfo);
        formLayoutWidget->setObjectName(QStringLiteral("formLayoutWidget"));
        formLayoutWidget->setGeometry(QRect(10, 10, 221, 131));
        formLayout1 = new QFormLayout(formLayoutWidget);
        formLayout1->setObjectName(QStringLiteral("formLayout1"));
        formLayout1->setContentsMargins(0, 0, 0, 0);
        label = new QLabel(formLayoutWidget);
        label->setObjectName(QStringLiteral("label"));

        formLayout1->setWidget(0, QFormLayout::LabelRole, label);

        label_2 = new QLabel(formLayoutWidget);
        label_2->setObjectName(QStringLiteral("label_2"));

        formLayout1->setWidget(1, QFormLayout::LabelRole, label_2);

        label_3 = new QLabel(formLayoutWidget);
        label_3->setObjectName(QStringLiteral("label_3"));

        formLayout1->setWidget(2, QFormLayout::LabelRole, label_3);

        label_4 = new QLabel(formLayoutWidget);
        label_4->setObjectName(QStringLiteral("label_4"));

        formLayout1->setWidget(3, QFormLayout::LabelRole, label_4);

        label_5 = new QLabel(formLayoutWidget);
        label_5->setObjectName(QStringLiteral("label_5"));

        formLayout1->setWidget(4, QFormLayout::LabelRole, label_5);

        edtServiceID = new QLineEdit(formLayoutWidget);
        edtServiceID->setObjectName(QStringLiteral("edtServiceID"));
        edtServiceID->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtServiceID->setReadOnly(true);

        formLayout1->setWidget(0, QFormLayout::FieldRole, edtServiceID);

        edtPlateID = new QLineEdit(formLayoutWidget);
        edtPlateID->setObjectName(QStringLiteral("edtPlateID"));
        edtPlateID->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtPlateID->setReadOnly(true);

        formLayout1->setWidget(1, QFormLayout::FieldRole, edtPlateID);

        edtInsuranceAmount = new QLineEdit(formLayoutWidget);
        edtInsuranceAmount->setObjectName(QStringLiteral("edtInsuranceAmount"));
        edtInsuranceAmount->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtInsuranceAmount->setReadOnly(true);

        formLayout1->setWidget(4, QFormLayout::FieldRole, edtInsuranceAmount);

        edtCategory = new QLineEdit(formLayoutWidget);
        edtCategory->setObjectName(QStringLiteral("edtCategory"));
        edtCategory->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtCategory->setReadOnly(true);

        formLayout1->setWidget(2, QFormLayout::FieldRole, edtCategory);

        edtSubCategory = new QLineEdit(formLayoutWidget);
        edtSubCategory->setObjectName(QStringLiteral("edtSubCategory"));
        edtSubCategory->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtSubCategory->setReadOnly(true);

        formLayout1->setWidget(3, QFormLayout::FieldRole, edtSubCategory);

        formLayoutWidget_3 = new QWidget(QDlgSvcQueryInfo);
        formLayoutWidget_3->setObjectName(QStringLiteral("formLayoutWidget_3"));
        formLayoutWidget_3->setGeometry(QRect(490, 10, 201, 131));
        formLayout3 = new QFormLayout(formLayoutWidget_3);
        formLayout3->setObjectName(QStringLiteral("formLayout3"));
        formLayout3->setContentsMargins(0, 0, 0, 0);
        label_11 = new QLabel(formLayoutWidget_3);
        label_11->setObjectName(QStringLiteral("label_11"));

        formLayout3->setWidget(0, QFormLayout::LabelRole, label_11);

        label_12 = new QLabel(formLayoutWidget_3);
        label_12->setObjectName(QStringLiteral("label_12"));

        formLayout3->setWidget(1, QFormLayout::LabelRole, label_12);

        label_13 = new QLabel(formLayoutWidget_3);
        label_13->setObjectName(QStringLiteral("label_13"));

        formLayout3->setWidget(2, QFormLayout::LabelRole, label_13);

        edtServiceConsumptionAmount = new QLineEdit(formLayoutWidget_3);
        edtServiceConsumptionAmount->setObjectName(QStringLiteral("edtServiceConsumptionAmount"));
        edtServiceConsumptionAmount->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtServiceConsumptionAmount->setReadOnly(true);

        formLayout3->setWidget(2, QFormLayout::FieldRole, edtServiceConsumptionAmount);

        edtServiceDepartment = new QLineEdit(formLayoutWidget_3);
        edtServiceDepartment->setObjectName(QStringLiteral("edtServiceDepartment"));
        edtServiceDepartment->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtServiceDepartment->setReadOnly(true);

        formLayout3->setWidget(0, QFormLayout::FieldRole, edtServiceDepartment);

        edtMaintanceman = new QLineEdit(formLayoutWidget_3);
        edtMaintanceman->setObjectName(QStringLiteral("edtMaintanceman"));
        edtMaintanceman->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtMaintanceman->setReadOnly(true);

        formLayout3->setWidget(1, QFormLayout::FieldRole, edtMaintanceman);

        formLayoutWidget_2 = new QWidget(QDlgSvcQueryInfo);
        formLayoutWidget_2->setObjectName(QStringLiteral("formLayoutWidget_2"));
        formLayoutWidget_2->setGeometry(QRect(250, 10, 222, 131));
        formLayout2 = new QFormLayout(formLayoutWidget_2);
        formLayout2->setObjectName(QStringLiteral("formLayout2"));
        formLayout2->setFieldGrowthPolicy(QFormLayout::AllNonFixedFieldsGrow);
        formLayout2->setContentsMargins(0, 0, 0, 0);
        label_6 = new QLabel(formLayoutWidget_2);
        label_6->setObjectName(QStringLiteral("label_6"));

        formLayout2->setWidget(0, QFormLayout::LabelRole, label_6);

        edtClaimAmount = new QLineEdit(formLayoutWidget_2);
        edtClaimAmount->setObjectName(QStringLiteral("edtClaimAmount"));
        edtClaimAmount->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtClaimAmount->setReadOnly(true);

        formLayout2->setWidget(0, QFormLayout::FieldRole, edtClaimAmount);

        label_7 = new QLabel(formLayoutWidget_2);
        label_7->setObjectName(QStringLiteral("label_7"));

        formLayout2->setWidget(1, QFormLayout::LabelRole, label_7);

        label_8 = new QLabel(formLayoutWidget_2);
        label_8->setObjectName(QStringLiteral("label_8"));

        formLayout2->setWidget(2, QFormLayout::LabelRole, label_8);

        label_9 = new QLabel(formLayoutWidget_2);
        label_9->setObjectName(QStringLiteral("label_9"));

        formLayout2->setWidget(3, QFormLayout::LabelRole, label_9);

        label_10 = new QLabel(formLayoutWidget_2);
        label_10->setObjectName(QStringLiteral("label_10"));

        formLayout2->setWidget(4, QFormLayout::LabelRole, label_10);

        edtSettlementStyle = new QLineEdit(formLayoutWidget_2);
        edtSettlementStyle->setObjectName(QStringLiteral("edtSettlementStyle"));
        edtSettlementStyle->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtSettlementStyle->setReadOnly(true);

        formLayout2->setWidget(1, QFormLayout::FieldRole, edtSettlementStyle);

        edtMaintanceStartTime = new QLineEdit(formLayoutWidget_2);
        edtMaintanceStartTime->setObjectName(QStringLiteral("edtMaintanceStartTime"));
        edtMaintanceStartTime->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtMaintanceStartTime->setReadOnly(true);

        formLayout2->setWidget(2, QFormLayout::FieldRole, edtMaintanceStartTime);

        edtMaintanceEndTime = new QLineEdit(formLayoutWidget_2);
        edtMaintanceEndTime->setObjectName(QStringLiteral("edtMaintanceEndTime"));
        edtMaintanceEndTime->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtMaintanceEndTime->setReadOnly(true);

        formLayout2->setWidget(3, QFormLayout::FieldRole, edtMaintanceEndTime);

        edtPickupTime = new QLineEdit(formLayoutWidget_2);
        edtPickupTime->setObjectName(QStringLiteral("edtPickupTime"));
        edtPickupTime->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        edtPickupTime->setReadOnly(true);

        formLayout2->setWidget(4, QFormLayout::FieldRole, edtPickupTime);

        btnNext = new QPushButton(QDlgSvcQueryInfo);
        btnNext->setObjectName(QStringLiteral("btnNext"));
        btnNext->setGeometry(QRect(620, 158, 75, 23));

        retranslateUi(QDlgSvcQueryInfo);

        QMetaObject::connectSlotsByName(QDlgSvcQueryInfo);
    } // setupUi

    void retranslateUi(QDialog *QDlgSvcQueryInfo)
    {
        QDlgSvcQueryInfo->setWindowTitle(QApplication::translate("QDlgSvcQueryInfo", "\346\237\245\347\234\213\346\234\215\345\212\241\350\256\260\345\275\225", 0));
        label->setText(QApplication::translate("QDlgSvcQueryInfo", "\346\234\215\345\212\241\351\241\271\347\233\256\347\274\226\345\217\267", 0));
        label_2->setText(QApplication::translate("QDlgSvcQueryInfo", "\350\275\246\347\211\214\345\217\267\347\240\201", 0));
        label_3->setText(QApplication::translate("QDlgSvcQueryInfo", "\346\234\215\345\212\241\351\241\271\347\233\256\347\261\273\345\210\253", 0));
        label_4->setText(QApplication::translate("QDlgSvcQueryInfo", "\346\234\215\345\212\241\345\255\220\347\261\273\345\210\253", 0));
        label_5->setText(QApplication::translate("QDlgSvcQueryInfo", "\344\277\235\351\231\251\351\207\221\351\242\235", 0));
        label_11->setText(QApplication::translate("QDlgSvcQueryInfo", "\347\273\264\344\277\256\351\203\250\351\227\250", 0));
        label_12->setText(QApplication::translate("QDlgSvcQueryInfo", "\347\273\264\344\277\256\344\272\272\345\221\230", 0));
        label_13->setText(QApplication::translate("QDlgSvcQueryInfo", "\346\266\210\350\264\271\351\207\221\351\242\235", 0));
        label_6->setText(QApplication::translate("QDlgSvcQueryInfo", "\347\264\242\350\265\224\351\207\221\351\242\235", 0));
        label_7->setText(QApplication::translate("QDlgSvcQueryInfo", "\347\273\223\347\256\227\346\226\271\345\274\217", 0));
        label_8->setText(QApplication::translate("QDlgSvcQueryInfo", "\347\273\264\344\277\256\350\265\267\345\247\213\346\227\266\351\227\264", 0));
        label_9->setText(QApplication::translate("QDlgSvcQueryInfo", "\347\273\264\344\277\256\346\210\252\346\255\242\346\227\266\351\227\264", 0));
        label_10->setText(QApplication::translate("QDlgSvcQueryInfo", "\345\217\226\350\275\246\346\227\266\351\227\264", 0));
        btnNext->setText(QApplication::translate("QDlgSvcQueryInfo", "\344\270\213\344\270\200\346\235\241", 0));
    } // retranslateUi

};

namespace Ui {
    class QDlgSvcQueryInfo: public Ui_QDlgSvcQueryInfo {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QDLGSVCQUERYINFO_H
