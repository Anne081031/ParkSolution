/********************************************************************************
** Form generated from reading UI file 'qhoverframe.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QHOVERFRAME_H
#define UI_QHOVERFRAME_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFrame>
#include <QtWidgets/QHeaderView>

QT_BEGIN_NAMESPACE

class Ui_QHoverFrame
{
public:

    void setupUi(QFrame *QHoverFrame)
    {
        if (QHoverFrame->objectName().isEmpty())
            QHoverFrame->setObjectName(QStringLiteral("QHoverFrame"));
        QHoverFrame->resize(400, 131);
        QHoverFrame->setMaximumSize(QSize(400, 131));
        QHoverFrame->setStyleSheet(QStringLiteral("background-color: rgb(85, 170, 127);"));
        QHoverFrame->setFrameShape(QFrame::StyledPanel);
        QHoverFrame->setFrameShadow(QFrame::Raised);

        retranslateUi(QHoverFrame);

        QMetaObject::connectSlotsByName(QHoverFrame);
    } // setupUi

    void retranslateUi(QFrame *QHoverFrame)
    {
        QHoverFrame->setWindowTitle(QApplication::translate("QHoverFrame", "\346\234\200\350\277\221\346\234\252\346\237\245\347\234\213\345\256\242\346\210\267", 0));
    } // retranslateUi

};

namespace Ui {
    class QHoverFrame: public Ui_QHoverFrame {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QHOVERFRAME_H
