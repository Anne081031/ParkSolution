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
#include <QtWidgets/QCheckBox>
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
    QComboBox *cbxUser;
    QLineEdit *edtPwd;
    QCheckBox *chkSavePwdUsr;
    QLabel *label_2;
    QLabel *lblTip;
    QWidget *layoutWidget;
    QHBoxLayout *horizontalLayout;
    QPushButton *btnOK;
    QPushButton *btnCancel;

    void setupUi(QDialog *QDlgLogin)
    {
        if (QDlgLogin->objectName().isEmpty())
            QDlgLogin->setObjectName(QStringLiteral("QDlgLogin"));
        QDlgLogin->resize(419, 275);
        QDlgLogin->setAutoFillBackground(false);
        QDlgLogin->setStyleSheet(QStringLiteral(""));
        QDlgLogin->setSizeGripEnabled(false);
        formLayoutWidget = new QWidget(QDlgLogin);
        formLayoutWidget->setObjectName(QStringLiteral("formLayoutWidget"));
        formLayoutWidget->setGeometry(QRect(130, 132, 160, 91));
        formLayout = new QFormLayout(formLayoutWidget);
        formLayout->setObjectName(QStringLiteral("formLayout"));
        formLayout->setContentsMargins(0, 0, 0, 0);
        label = new QLabel(formLayoutWidget);
        label->setObjectName(QStringLiteral("label"));
        label->setStyleSheet(QLatin1String("background-image:url();\n"
"color: rgb(255, 255, 255);"));

        formLayout->setWidget(0, QFormLayout::LabelRole, label);

        cbxUser = new QComboBox(formLayoutWidget);
        cbxUser->setObjectName(QStringLiteral("cbxUser"));
        cbxUser->setStyleSheet(QStringLiteral("background-image:url();"));

        formLayout->setWidget(0, QFormLayout::FieldRole, cbxUser);

        edtPwd = new QLineEdit(formLayoutWidget);
        edtPwd->setObjectName(QStringLiteral("edtPwd"));
        edtPwd->setStyleSheet(QStringLiteral("background-image:url();"));

        formLayout->setWidget(1, QFormLayout::FieldRole, edtPwd);

        chkSavePwdUsr = new QCheckBox(formLayoutWidget);
        chkSavePwdUsr->setObjectName(QStringLiteral("chkSavePwdUsr"));
        chkSavePwdUsr->setStyleSheet(QLatin1String("background-image:url();\n"
"color: rgb(255, 255, 255);"));

        formLayout->setWidget(2, QFormLayout::FieldRole, chkSavePwdUsr);

        label_2 = new QLabel(formLayoutWidget);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setStyleSheet(QLatin1String("background-image:url();\n"
"color: rgb(255, 255, 255);"));

        formLayout->setWidget(1, QFormLayout::LabelRole, label_2);

        lblTip = new QLabel(formLayoutWidget);
        lblTip->setObjectName(QStringLiteral("lblTip"));
        QFont font;
        font.setPointSize(10);
        font.setBold(true);
        font.setWeight(75);
        lblTip->setFont(font);
        lblTip->setStyleSheet(QLatin1String("background-image:url();\n"
"color: rgb(255, 0, 0);"));
        lblTip->setAlignment(Qt::AlignCenter);

        formLayout->setWidget(3, QFormLayout::FieldRole, lblTip);

        layoutWidget = new QWidget(QDlgLogin);
        layoutWidget->setObjectName(QStringLiteral("layoutWidget"));
        layoutWidget->setGeometry(QRect(130, 230, 158, 25));
        horizontalLayout = new QHBoxLayout(layoutWidget);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        btnOK = new QPushButton(layoutWidget);
        btnOK->setObjectName(QStringLiteral("btnOK"));
        btnOK->setMinimumSize(QSize(75, 23));
        btnOK->setStyleSheet(QStringLiteral("background-image:url();"));

        horizontalLayout->addWidget(btnOK);

        btnCancel = new QPushButton(layoutWidget);
        btnCancel->setObjectName(QStringLiteral("btnCancel"));
        btnCancel->setMinimumSize(QSize(75, 23));
        btnCancel->setStyleSheet(QStringLiteral("background-image:url();"));

        horizontalLayout->addWidget(btnCancel);


        retranslateUi(QDlgLogin);

        QMetaObject::connectSlotsByName(QDlgLogin);
    } // setupUi

    void retranslateUi(QDialog *QDlgLogin)
    {
        QDlgLogin->setWindowTitle(QApplication::translate("QDlgLogin", "\347\224\250\346\210\267\347\231\273\345\275\225", 0));
        label->setText(QApplication::translate("QDlgLogin", "\347\224\250\346\210\267", 0));
        chkSavePwdUsr->setText(QApplication::translate("QDlgLogin", "\344\277\235\345\255\230\347\224\250\346\210\267\344\270\216\345\257\206\347\240\201", 0));
        label_2->setText(QApplication::translate("QDlgLogin", "\345\257\206\347\240\201", 0));
        lblTip->setText(QString());
        btnOK->setText(QApplication::translate("QDlgLogin", "\347\231\273\345\275\225", 0));
        btnCancel->setText(QApplication::translate("QDlgLogin", "\345\217\226\346\266\210", 0));
    } // retranslateUi

};

namespace Ui {
    class QDlgLogin: public Ui_QDlgLogin {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QDLGLOGIN_H
