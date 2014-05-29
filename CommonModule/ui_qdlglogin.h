/********************************************************************************
** Form generated from reading UI file 'qdlglogin.ui'
**
** Created by: Qt User Interface Compiler version 5.3.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QDLGLOGIN_H
#define UI_QDLGLOGIN_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDialog>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_QDlgLogin
{
public:
    QWidget *formLayoutWidget;
    QFormLayout *formLayout;
    QLabel *label;
    QLabel *label_2;
    QComboBox *cbxUser;
    QLineEdit *edtPwd;
    QWidget *layoutWidget;
    QHBoxLayout *horizontalLayout;
    QPushButton *btnOK;
    QPushButton *btnCancel;

    void setupUi(QDialog *QDlgLogin)
    {
        if (QDlgLogin->objectName().isEmpty())
            QDlgLogin->setObjectName(QStringLiteral("QDlgLogin"));
        QDlgLogin->resize(281, 153);
        QDlgLogin->setMaximumSize(QSize(281, 153));
        QDlgLogin->setAutoFillBackground(false);
        QDlgLogin->setStyleSheet(QStringLiteral(""));
        QDlgLogin->setSizeGripEnabled(false);
        formLayoutWidget = new QWidget(QDlgLogin);
        formLayoutWidget->setObjectName(QStringLiteral("formLayoutWidget"));
        formLayoutWidget->setGeometry(QRect(60, 20, 160, 51));
        formLayout = new QFormLayout(formLayoutWidget);
        formLayout->setObjectName(QStringLiteral("formLayout"));
        formLayout->setContentsMargins(0, 0, 0, 0);
        label = new QLabel(formLayoutWidget);
        label->setObjectName(QStringLiteral("label"));

        formLayout->setWidget(0, QFormLayout::LabelRole, label);

        label_2 = new QLabel(formLayoutWidget);
        label_2->setObjectName(QStringLiteral("label_2"));

        formLayout->setWidget(1, QFormLayout::LabelRole, label_2);

        cbxUser = new QComboBox(formLayoutWidget);
        cbxUser->setObjectName(QStringLiteral("cbxUser"));

        formLayout->setWidget(0, QFormLayout::FieldRole, cbxUser);

        edtPwd = new QLineEdit(formLayoutWidget);
        edtPwd->setObjectName(QStringLiteral("edtPwd"));

        formLayout->setWidget(1, QFormLayout::FieldRole, edtPwd);

        layoutWidget = new QWidget(QDlgLogin);
        layoutWidget->setObjectName(QStringLiteral("layoutWidget"));
        layoutWidget->setGeometry(QRect(60, 100, 158, 25));
        horizontalLayout = new QHBoxLayout(layoutWidget);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        btnOK = new QPushButton(layoutWidget);
        btnOK->setObjectName(QStringLiteral("btnOK"));
        btnOK->setMinimumSize(QSize(75, 23));
        btnOK->setStyleSheet(QStringLiteral(""));

        horizontalLayout->addWidget(btnOK);

        btnCancel = new QPushButton(layoutWidget);
        btnCancel->setObjectName(QStringLiteral("btnCancel"));
        btnCancel->setMinimumSize(QSize(75, 23));

        horizontalLayout->addWidget(btnCancel);


        retranslateUi(QDlgLogin);

        QMetaObject::connectSlotsByName(QDlgLogin);
    } // setupUi

    void retranslateUi(QDialog *QDlgLogin)
    {
        QDlgLogin->setWindowTitle(QApplication::translate("QDlgLogin", "\347\224\250\346\210\267\347\231\273\345\275\225", 0));
        label->setText(QApplication::translate("QDlgLogin", "\347\224\250\346\210\267", 0));
        label_2->setText(QApplication::translate("QDlgLogin", "\345\257\206\347\240\201", 0));
        btnOK->setText(QApplication::translate("QDlgLogin", "\347\231\273\345\275\225", 0));
        btnCancel->setText(QApplication::translate("QDlgLogin", "\345\217\226\346\266\210", 0));
    } // retranslateUi

};

namespace Ui {
    class QDlgLogin: public Ui_QDlgLogin {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QDLGLOGIN_H
