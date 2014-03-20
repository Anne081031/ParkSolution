/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTableView>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QToolButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *actionOpen;
    QWidget *centralWidget;
    QWidget *gridLayoutWidget;
    QGridLayout *mainGridLayout;
    QFrame *frmBigPicture;
    QFrame *frmSmallPicture0;
    QFrame *frmSmallPicture1;
    QFrame *frmSmallPicture2;
    QFrame *frmSmallPicture3;
    QWidget *wgtLeftPanel;
    QWidget *wgtRightPanel;
    QWidget *gridLayoutWidget_2;
    QGridLayout *gridLayoutLeftPanel;
    QWidget *widget0;
    QWidget *formLayoutWidget;
    QFormLayout *formLayout0;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *label_4;
    QLineEdit *lineEdit;
    QLineEdit *lineEdit_2;
    QLineEdit *lineEdit_3;
    QLineEdit *lineEdit_4;
    QWidget *widget1;
    QWidget *formLayoutWidget_2;
    QFormLayout *formLayout1;
    QLabel *label_5;
    QLabel *label_6;
    QLabel *label_7;
    QLabel *label_8;
    QLineEdit *lineEdit_5;
    QLineEdit *lineEdit_6;
    QLineEdit *lineEdit_7;
    QLineEdit *lineEdit_8;
    QWidget *widget2;
    QWidget *formLayoutWidget_3;
    QFormLayout *formLayout2;
    QLabel *label_9;
    QLabel *label_10;
    QLabel *label_11;
    QLabel *label_12;
    QLineEdit *lineEdit_9;
    QLineEdit *lineEdit_10;
    QLineEdit *lineEdit_11;
    QLineEdit *lineEdit_12;
    QWidget *widget3;
    QWidget *formLayoutWidget_4;
    QFormLayout *formLayout3;
    QLabel *label_13;
    QLabel *label_14;
    QLabel *label_15;
    QLabel *label_16;
    QLineEdit *lineEdit_13;
    QLineEdit *lineEdit_14;
    QLineEdit *lineEdit_16;
    QLineEdit *edtEMail;
    QWidget *gridLayoutWidget_3;
    QGridLayout *gridLayoutRightPanel;
    QLabel *lblCustomerDetail;
    QLabel *label_19;
    QLabel *label_20;
    QWidget *formLayoutWidget_5;
    QFormLayout *formLayout;
    QLabel *label_18;
    QFrame *line;
    QTableView *tabServiceRecord;
    QToolButton *toolButton;
    QMenuBar *menuBar;
    QMenu *menuFile;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(932, 459);
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(MainWindow->sizePolicy().hasHeightForWidth());
        MainWindow->setSizePolicy(sizePolicy);
        actionOpen = new QAction(MainWindow);
        actionOpen->setObjectName(QStringLiteral("actionOpen"));
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        sizePolicy.setHeightForWidth(centralWidget->sizePolicy().hasHeightForWidth());
        centralWidget->setSizePolicy(sizePolicy);
        gridLayoutWidget = new QWidget(centralWidget);
        gridLayoutWidget->setObjectName(QStringLiteral("gridLayoutWidget"));
        gridLayoutWidget->setGeometry(QRect(10, 0, 21, 21));
        mainGridLayout = new QGridLayout(gridLayoutWidget);
        mainGridLayout->setSpacing(6);
        mainGridLayout->setContentsMargins(11, 11, 11, 11);
        mainGridLayout->setObjectName(QStringLiteral("mainGridLayout"));
        mainGridLayout->setContentsMargins(0, 0, 0, 0);
        frmBigPicture = new QFrame(centralWidget);
        frmBigPicture->setObjectName(QStringLiteral("frmBigPicture"));
        frmBigPicture->setGeometry(QRect(290, 90, 120, 80));
        frmBigPicture->setFrameShape(QFrame::WinPanel);
        frmBigPicture->setFrameShadow(QFrame::Raised);
        frmSmallPicture0 = new QFrame(centralWidget);
        frmSmallPicture0->setObjectName(QStringLiteral("frmSmallPicture0"));
        frmSmallPicture0->setGeometry(QRect(160, 190, 120, 80));
        frmSmallPicture0->setFrameShape(QFrame::WinPanel);
        frmSmallPicture0->setFrameShadow(QFrame::Raised);
        frmSmallPicture1 = new QFrame(centralWidget);
        frmSmallPicture1->setObjectName(QStringLiteral("frmSmallPicture1"));
        frmSmallPicture1->setGeometry(QRect(310, 200, 120, 80));
        frmSmallPicture1->setFrameShape(QFrame::WinPanel);
        frmSmallPicture1->setFrameShadow(QFrame::Raised);
        frmSmallPicture2 = new QFrame(centralWidget);
        frmSmallPicture2->setObjectName(QStringLiteral("frmSmallPicture2"));
        frmSmallPicture2->setGeometry(QRect(370, 150, 120, 80));
        frmSmallPicture2->setFrameShape(QFrame::WinPanel);
        frmSmallPicture2->setFrameShadow(QFrame::Raised);
        frmSmallPicture3 = new QFrame(centralWidget);
        frmSmallPicture3->setObjectName(QStringLiteral("frmSmallPicture3"));
        frmSmallPicture3->setGeometry(QRect(340, 200, 120, 80));
        frmSmallPicture3->setFrameShape(QFrame::WinPanel);
        frmSmallPicture3->setFrameShadow(QFrame::Raised);
        wgtLeftPanel = new QWidget(centralWidget);
        wgtLeftPanel->setObjectName(QStringLiteral("wgtLeftPanel"));
        wgtLeftPanel->setGeometry(QRect(40, 20, 231, 161));
        sizePolicy.setHeightForWidth(wgtLeftPanel->sizePolicy().hasHeightForWidth());
        wgtLeftPanel->setSizePolicy(sizePolicy);
        wgtLeftPanel->setStyleSheet(QStringLiteral("background-color: rgb(170, 255, 127);"));
        wgtRightPanel = new QWidget(centralWidget);
        wgtRightPanel->setObjectName(QStringLiteral("wgtRightPanel"));
        wgtRightPanel->setGeometry(QRect(680, 20, 231, 241));
        sizePolicy.setHeightForWidth(wgtRightPanel->sizePolicy().hasHeightForWidth());
        wgtRightPanel->setSizePolicy(sizePolicy);
        gridLayoutWidget_2 = new QWidget(centralWidget);
        gridLayoutWidget_2->setObjectName(QStringLiteral("gridLayoutWidget_2"));
        gridLayoutWidget_2->setGeometry(QRect(10, 190, 131, 91));
        gridLayoutLeftPanel = new QGridLayout(gridLayoutWidget_2);
        gridLayoutLeftPanel->setSpacing(6);
        gridLayoutLeftPanel->setContentsMargins(11, 11, 11, 11);
        gridLayoutLeftPanel->setObjectName(QStringLiteral("gridLayoutLeftPanel"));
        gridLayoutLeftPanel->setContentsMargins(0, 0, 0, 0);
        widget0 = new QWidget(centralWidget);
        widget0->setObjectName(QStringLiteral("widget0"));
        widget0->setGeometry(QRect(10, 290, 120, 80));
        formLayoutWidget = new QWidget(widget0);
        formLayoutWidget->setObjectName(QStringLiteral("formLayoutWidget"));
        formLayoutWidget->setGeometry(QRect(20, 20, 160, 101));
        formLayout0 = new QFormLayout(formLayoutWidget);
        formLayout0->setSpacing(6);
        formLayout0->setContentsMargins(11, 11, 11, 11);
        formLayout0->setObjectName(QStringLiteral("formLayout0"));
        formLayout0->setContentsMargins(0, 0, 0, 0);
        label = new QLabel(formLayoutWidget);
        label->setObjectName(QStringLiteral("label"));

        formLayout0->setWidget(0, QFormLayout::LabelRole, label);

        label_2 = new QLabel(formLayoutWidget);
        label_2->setObjectName(QStringLiteral("label_2"));

        formLayout0->setWidget(1, QFormLayout::LabelRole, label_2);

        label_3 = new QLabel(formLayoutWidget);
        label_3->setObjectName(QStringLiteral("label_3"));

        formLayout0->setWidget(2, QFormLayout::LabelRole, label_3);

        label_4 = new QLabel(formLayoutWidget);
        label_4->setObjectName(QStringLiteral("label_4"));

        formLayout0->setWidget(3, QFormLayout::LabelRole, label_4);

        lineEdit = new QLineEdit(formLayoutWidget);
        lineEdit->setObjectName(QStringLiteral("lineEdit"));

        formLayout0->setWidget(0, QFormLayout::FieldRole, lineEdit);

        lineEdit_2 = new QLineEdit(formLayoutWidget);
        lineEdit_2->setObjectName(QStringLiteral("lineEdit_2"));

        formLayout0->setWidget(1, QFormLayout::FieldRole, lineEdit_2);

        lineEdit_3 = new QLineEdit(formLayoutWidget);
        lineEdit_3->setObjectName(QStringLiteral("lineEdit_3"));

        formLayout0->setWidget(2, QFormLayout::FieldRole, lineEdit_3);

        lineEdit_4 = new QLineEdit(formLayoutWidget);
        lineEdit_4->setObjectName(QStringLiteral("lineEdit_4"));

        formLayout0->setWidget(3, QFormLayout::FieldRole, lineEdit_4);

        widget1 = new QWidget(centralWidget);
        widget1->setObjectName(QStringLiteral("widget1"));
        widget1->setGeometry(QRect(160, 290, 120, 80));
        formLayoutWidget_2 = new QWidget(widget1);
        formLayoutWidget_2->setObjectName(QStringLiteral("formLayoutWidget_2"));
        formLayoutWidget_2->setGeometry(QRect(10, 0, 160, 101));
        formLayout1 = new QFormLayout(formLayoutWidget_2);
        formLayout1->setSpacing(6);
        formLayout1->setContentsMargins(11, 11, 11, 11);
        formLayout1->setObjectName(QStringLiteral("formLayout1"));
        formLayout1->setContentsMargins(0, 0, 0, 0);
        label_5 = new QLabel(formLayoutWidget_2);
        label_5->setObjectName(QStringLiteral("label_5"));

        formLayout1->setWidget(0, QFormLayout::LabelRole, label_5);

        label_6 = new QLabel(formLayoutWidget_2);
        label_6->setObjectName(QStringLiteral("label_6"));

        formLayout1->setWidget(1, QFormLayout::LabelRole, label_6);

        label_7 = new QLabel(formLayoutWidget_2);
        label_7->setObjectName(QStringLiteral("label_7"));

        formLayout1->setWidget(2, QFormLayout::LabelRole, label_7);

        label_8 = new QLabel(formLayoutWidget_2);
        label_8->setObjectName(QStringLiteral("label_8"));

        formLayout1->setWidget(3, QFormLayout::LabelRole, label_8);

        lineEdit_5 = new QLineEdit(formLayoutWidget_2);
        lineEdit_5->setObjectName(QStringLiteral("lineEdit_5"));

        formLayout1->setWidget(0, QFormLayout::FieldRole, lineEdit_5);

        lineEdit_6 = new QLineEdit(formLayoutWidget_2);
        lineEdit_6->setObjectName(QStringLiteral("lineEdit_6"));

        formLayout1->setWidget(1, QFormLayout::FieldRole, lineEdit_6);

        lineEdit_7 = new QLineEdit(formLayoutWidget_2);
        lineEdit_7->setObjectName(QStringLiteral("lineEdit_7"));

        formLayout1->setWidget(2, QFormLayout::FieldRole, lineEdit_7);

        lineEdit_8 = new QLineEdit(formLayoutWidget_2);
        lineEdit_8->setObjectName(QStringLiteral("lineEdit_8"));

        formLayout1->setWidget(3, QFormLayout::FieldRole, lineEdit_8);

        widget2 = new QWidget(centralWidget);
        widget2->setObjectName(QStringLiteral("widget2"));
        widget2->setGeometry(QRect(310, 300, 120, 80));
        formLayoutWidget_3 = new QWidget(widget2);
        formLayoutWidget_3->setObjectName(QStringLiteral("formLayoutWidget_3"));
        formLayoutWidget_3->setGeometry(QRect(20, 0, 160, 101));
        formLayout2 = new QFormLayout(formLayoutWidget_3);
        formLayout2->setSpacing(6);
        formLayout2->setContentsMargins(11, 11, 11, 11);
        formLayout2->setObjectName(QStringLiteral("formLayout2"));
        formLayout2->setContentsMargins(0, 0, 0, 0);
        label_9 = new QLabel(formLayoutWidget_3);
        label_9->setObjectName(QStringLiteral("label_9"));

        formLayout2->setWidget(0, QFormLayout::LabelRole, label_9);

        label_10 = new QLabel(formLayoutWidget_3);
        label_10->setObjectName(QStringLiteral("label_10"));

        formLayout2->setWidget(1, QFormLayout::LabelRole, label_10);

        label_11 = new QLabel(formLayoutWidget_3);
        label_11->setObjectName(QStringLiteral("label_11"));

        formLayout2->setWidget(2, QFormLayout::LabelRole, label_11);

        label_12 = new QLabel(formLayoutWidget_3);
        label_12->setObjectName(QStringLiteral("label_12"));

        formLayout2->setWidget(3, QFormLayout::LabelRole, label_12);

        lineEdit_9 = new QLineEdit(formLayoutWidget_3);
        lineEdit_9->setObjectName(QStringLiteral("lineEdit_9"));

        formLayout2->setWidget(0, QFormLayout::FieldRole, lineEdit_9);

        lineEdit_10 = new QLineEdit(formLayoutWidget_3);
        lineEdit_10->setObjectName(QStringLiteral("lineEdit_10"));

        formLayout2->setWidget(1, QFormLayout::FieldRole, lineEdit_10);

        lineEdit_11 = new QLineEdit(formLayoutWidget_3);
        lineEdit_11->setObjectName(QStringLiteral("lineEdit_11"));

        formLayout2->setWidget(2, QFormLayout::FieldRole, lineEdit_11);

        lineEdit_12 = new QLineEdit(formLayoutWidget_3);
        lineEdit_12->setObjectName(QStringLiteral("lineEdit_12"));

        formLayout2->setWidget(3, QFormLayout::FieldRole, lineEdit_12);

        widget3 = new QWidget(centralWidget);
        widget3->setObjectName(QStringLiteral("widget3"));
        widget3->setGeometry(QRect(500, 300, 120, 80));
        formLayoutWidget_4 = new QWidget(widget3);
        formLayoutWidget_4->setObjectName(QStringLiteral("formLayoutWidget_4"));
        formLayoutWidget_4->setGeometry(QRect(20, 10, 160, 101));
        formLayout3 = new QFormLayout(formLayoutWidget_4);
        formLayout3->setSpacing(6);
        formLayout3->setContentsMargins(11, 11, 11, 11);
        formLayout3->setObjectName(QStringLiteral("formLayout3"));
        formLayout3->setContentsMargins(0, 0, 0, 0);
        label_13 = new QLabel(formLayoutWidget_4);
        label_13->setObjectName(QStringLiteral("label_13"));

        formLayout3->setWidget(0, QFormLayout::LabelRole, label_13);

        label_14 = new QLabel(formLayoutWidget_4);
        label_14->setObjectName(QStringLiteral("label_14"));

        formLayout3->setWidget(1, QFormLayout::LabelRole, label_14);

        label_15 = new QLabel(formLayoutWidget_4);
        label_15->setObjectName(QStringLiteral("label_15"));

        formLayout3->setWidget(2, QFormLayout::LabelRole, label_15);

        label_16 = new QLabel(formLayoutWidget_4);
        label_16->setObjectName(QStringLiteral("label_16"));

        formLayout3->setWidget(3, QFormLayout::LabelRole, label_16);

        lineEdit_13 = new QLineEdit(formLayoutWidget_4);
        lineEdit_13->setObjectName(QStringLiteral("lineEdit_13"));

        formLayout3->setWidget(0, QFormLayout::FieldRole, lineEdit_13);

        lineEdit_14 = new QLineEdit(formLayoutWidget_4);
        lineEdit_14->setObjectName(QStringLiteral("lineEdit_14"));

        formLayout3->setWidget(1, QFormLayout::FieldRole, lineEdit_14);

        lineEdit_16 = new QLineEdit(formLayoutWidget_4);
        lineEdit_16->setObjectName(QStringLiteral("lineEdit_16"));

        formLayout3->setWidget(3, QFormLayout::FieldRole, lineEdit_16);

        edtEMail = new QLineEdit(formLayoutWidget_4);
        edtEMail->setObjectName(QStringLiteral("edtEMail"));

        formLayout3->setWidget(2, QFormLayout::FieldRole, edtEMail);

        gridLayoutWidget_3 = new QWidget(centralWidget);
        gridLayoutWidget_3->setObjectName(QStringLiteral("gridLayoutWidget_3"));
        gridLayoutWidget_3->setGeometry(QRect(500, 60, 131, 91));
        gridLayoutRightPanel = new QGridLayout(gridLayoutWidget_3);
        gridLayoutRightPanel->setSpacing(6);
        gridLayoutRightPanel->setContentsMargins(11, 11, 11, 11);
        gridLayoutRightPanel->setObjectName(QStringLiteral("gridLayoutRightPanel"));
        gridLayoutRightPanel->setContentsMargins(0, 0, 0, 0);
        lblCustomerDetail = new QLabel(centralWidget);
        lblCustomerDetail->setObjectName(QStringLiteral("lblCustomerDetail"));
        lblCustomerDetail->setGeometry(QRect(520, 180, 101, 16));
        lblCustomerDetail->setAlignment(Qt::AlignCenter);
        label_19 = new QLabel(centralWidget);
        label_19->setObjectName(QStringLiteral("label_19"));
        label_19->setGeometry(QRect(520, 230, 54, 12));
        label_20 = new QLabel(centralWidget);
        label_20->setObjectName(QStringLiteral("label_20"));
        label_20->setGeometry(QRect(520, 260, 54, 12));
        formLayoutWidget_5 = new QWidget(centralWidget);
        formLayoutWidget_5->setObjectName(QStringLiteral("formLayoutWidget_5"));
        formLayoutWidget_5->setGeometry(QRect(670, 300, 160, 80));
        formLayout = new QFormLayout(formLayoutWidget_5);
        formLayout->setSpacing(6);
        formLayout->setContentsMargins(11, 11, 11, 11);
        formLayout->setObjectName(QStringLiteral("formLayout"));
        formLayout->setContentsMargins(0, 0, 0, 0);
        label_18 = new QLabel(formLayoutWidget_5);
        label_18->setObjectName(QStringLiteral("label_18"));

        formLayout->setWidget(0, QFormLayout::LabelRole, label_18);

        line = new QFrame(formLayoutWidget_5);
        line->setObjectName(QStringLiteral("line"));
        line->setLayoutDirection(Qt::LeftToRight);
        line->setAutoFillBackground(false);
        line->setFrameShadow(QFrame::Raised);
        line->setMidLineWidth(10);
        line->setFrameShape(QFrame::HLine);

        formLayout->setWidget(0, QFormLayout::FieldRole, line);

        tabServiceRecord = new QTableView(centralWidget);
        tabServiceRecord->setObjectName(QStringLiteral("tabServiceRecord"));
        tabServiceRecord->setGeometry(QRect(870, 320, 256, 192));
        toolButton = new QToolButton(centralWidget);
        toolButton->setObjectName(QStringLiteral("toolButton"));
        toolButton->setGeometry(QRect(370, 40, 20, 20));
        toolButton->setMinimumSize(QSize(20, 20));
        toolButton->setMaximumSize(QSize(20, 20));
        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 932, 19));
        menuFile = new QMenu(menuBar);
        menuFile->setObjectName(QStringLiteral("menuFile"));
        MainWindow->setMenuBar(menuBar);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        MainWindow->setStatusBar(statusBar);

        menuBar->addAction(menuFile->menuAction());
        menuFile->addAction(actionOpen);
        mainToolBar->addSeparator();

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "\350\207\252\351\200\202\345\272\224\347\252\227\344\275\223\345\210\233\345\273\272", 0));
        actionOpen->setText(QApplication::translate("MainWindow", "Open", 0));
        label->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_2->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_3->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_4->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_5->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_6->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_7->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_8->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_9->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_10->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_11->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_12->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_13->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_14->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_15->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_16->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        lblCustomerDetail->setText(QApplication::translate("MainWindow", "\345\256\242\346\210\267\350\257\246\347\273\206\344\277\241\346\201\257", 0));
        label_19->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_20->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        label_18->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        toolButton->setText(QApplication::translate("MainWindow", "...", 0));
        menuFile->setTitle(QApplication::translate("MainWindow", "File", 0));
#ifndef QT_NO_STATUSTIP
        statusBar->setStatusTip(QApplication::translate("MainWindow", "Test", 0));
#endif // QT_NO_STATUSTIP
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
