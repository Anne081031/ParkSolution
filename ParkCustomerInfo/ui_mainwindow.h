/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.3.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDateEdit>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QTableView>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *actCommonData;
    QAction *actExit;
    QWidget *centralWidget;
    QWidget *horizontalLayoutWidget;
    QHBoxLayout *horizontalLayout;
    QTabWidget *tabWidget;
    QWidget *tabNewCustomer;
    QWidget *gridLayoutWidget;
    QGridLayout *gridLayout1;
    QWidget *widget1;
    QTableView *tableView1;
    QWidget *tabUpdatingCustomer;
    QWidget *gridLayoutWidget_2;
    QGridLayout *gridLayout2;
    QWidget *widget2;
    QTableView *tableView2;
    QWidget *tabAllCustomers;
    QWidget *gridLayoutWidget_3;
    QGridLayout *gridLayout3;
    QWidget *widget3;
    QTableView *tableView3;
    QWidget *formLayoutWidget;
    QFormLayout *formLayout11;
    QLabel *label;
    QComboBox *cbxIncoming;
    QWidget *formLayoutWidget_2;
    QFormLayout *formLayout12;
    QLabel *label_2;
    QDateEdit *dtIncomingStart;
    QWidget *formLayoutWidget_3;
    QFormLayout *formLayout13;
    QLabel *label_3;
    QDateEdit *dtIncomingEnd;
    QWidget *formLayoutWidget_4;
    QFormLayout *formLayout14;
    QLabel *label_4;
    QLineEdit *edtIncomingOther;
    QWidget *formLayoutWidget_5;
    QFormLayout *formLayout22;
    QLabel *label_5;
    QDateEdit *dtUpdatingStart;
    QWidget *formLayoutWidget_6;
    QFormLayout *formLayout21;
    QLabel *label_6;
    QComboBox *cbxUpdating;
    QWidget *formLayoutWidget_7;
    QFormLayout *formLayout24;
    QLabel *label_7;
    QLineEdit *edtUpdatingOther;
    QWidget *formLayoutWidget_8;
    QFormLayout *formLayout23;
    QLabel *label_8;
    QDateEdit *dtUpdatingEnd;
    QWidget *formLayoutWidget_9;
    QFormLayout *formLayout31;
    QLabel *label_11;
    QComboBox *cbxAll;
    QWidget *formLayoutWidget_10;
    QFormLayout *formLayout34;
    QLabel *label_12;
    QLineEdit *edtAllOther;
    QWidget *formLayoutWidget_11;
    QFormLayout *formLayout32;
    QLabel *label_13;
    QDateEdit *dtAllStart;
    QWidget *formLayoutWidget_12;
    QFormLayout *formLayout33;
    QLabel *label_14;
    QDateEdit *dtAllEnd;
    QWidget *widget11;
    QWidget *widget12;
    QWidget *widget13;
    QWidget *widget14;
    QWidget *widget24;
    QWidget *widget23;
    QWidget *widget22;
    QWidget *widget21;
    QWidget *widget34;
    QWidget *widget33;
    QWidget *widget31;
    QWidget *widget32;
    QWidget *widget15;
    QWidget *widget16;
    QWidget *widget25;
    QWidget *widget26;
    QWidget *widget35;
    QWidget *widget36;
    QLabel *lblStatusTip;
    QLabel *lblStatusRecordCount;
    QLabel *lblSeperator0;
    QLabel *lblSeperator1;
    QLabel *lblStatusSum;
    QLabel *lblLeft;
    QWidget *widget;
    QWidget *verticalLayoutWidget_2;
    QVBoxLayout *verticalLayout_2;
    QLabel *lblTop;
    QWidget *widget_2;
    QWidget *layoutWidget;
    QVBoxLayout *verticalLayout;
    QWidget *widget_3;
    QPushButton *btnQuery;
    QWidget *widget_5;
    QWidget *widget_4;
    QWidget *verticalLayoutWidget_3;
    QVBoxLayout *verticalLayout_3;
    QPushButton *btnEdit;
    QPushButton *btnIgnore;
    QPushButton *btnDelete;
    QPushButton *btnNew;
    QPushButton *btnExport;
    QPushButton *btnImport;
    QMenuBar *menuBar;
    QMenu *menu;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(860, 475);
        MainWindow->setContextMenuPolicy(Qt::NoContextMenu);
        actCommonData = new QAction(MainWindow);
        actCommonData->setObjectName(QStringLiteral("actCommonData"));
        actExit = new QAction(MainWindow);
        actExit->setObjectName(QStringLiteral("actExit"));
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        centralWidget->setContextMenuPolicy(Qt::NoContextMenu);
        horizontalLayoutWidget = new QWidget(centralWidget);
        horizontalLayoutWidget->setObjectName(QStringLiteral("horizontalLayoutWidget"));
        horizontalLayoutWidget->setGeometry(QRect(20, 10, 381, 272));
        horizontalLayout = new QHBoxLayout(horizontalLayoutWidget);
        horizontalLayout->setSpacing(6);
        horizontalLayout->setContentsMargins(11, 11, 11, 11);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        tabWidget = new QTabWidget(horizontalLayoutWidget);
        tabWidget->setObjectName(QStringLiteral("tabWidget"));
        QFont font;
        font.setPointSize(9);
        font.setBold(false);
        font.setWeight(50);
        tabWidget->setFont(font);
        tabWidget->setLayoutDirection(Qt::LeftToRight);
        tabWidget->setTabPosition(QTabWidget::North);
        tabWidget->setTabShape(QTabWidget::Triangular);
        tabWidget->setElideMode(Qt::ElideNone);
        tabWidget->setUsesScrollButtons(true);
        tabWidget->setDocumentMode(false);
        tabWidget->setTabsClosable(false);
        tabWidget->setMovable(false);
        tabNewCustomer = new QWidget();
        tabNewCustomer->setObjectName(QStringLiteral("tabNewCustomer"));
        gridLayoutWidget = new QWidget(tabNewCustomer);
        gridLayoutWidget->setObjectName(QStringLiteral("gridLayoutWidget"));
        gridLayoutWidget->setGeometry(QRect(190, 50, 41, 21));
        gridLayout1 = new QGridLayout(gridLayoutWidget);
        gridLayout1->setSpacing(6);
        gridLayout1->setContentsMargins(11, 11, 11, 11);
        gridLayout1->setObjectName(QStringLiteral("gridLayout1"));
        gridLayout1->setContentsMargins(0, 0, 0, 0);
        widget1 = new QWidget(tabNewCustomer);
        widget1->setObjectName(QStringLiteral("widget1"));
        widget1->setGeometry(QRect(180, 80, 141, 41));
        tableView1 = new QTableView(tabNewCustomer);
        tableView1->setObjectName(QStringLiteral("tableView1"));
        tableView1->setGeometry(QRect(20, 40, 111, 61));
        tableView1->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
        tableView1->setSelectionMode(QAbstractItemView::SingleSelection);
        tableView1->setSelectionBehavior(QAbstractItemView::SelectRows);
        tableView1->setSortingEnabled(false);
        tableView1->verticalHeader()->setVisible(false);
        tabWidget->addTab(tabNewCustomer, QString());
        tabUpdatingCustomer = new QWidget();
        tabUpdatingCustomer->setObjectName(QStringLiteral("tabUpdatingCustomer"));
        gridLayoutWidget_2 = new QWidget(tabUpdatingCustomer);
        gridLayoutWidget_2->setObjectName(QStringLiteral("gridLayoutWidget_2"));
        gridLayoutWidget_2->setGeometry(QRect(120, 120, 41, 21));
        gridLayout2 = new QGridLayout(gridLayoutWidget_2);
        gridLayout2->setSpacing(6);
        gridLayout2->setContentsMargins(11, 11, 11, 11);
        gridLayout2->setObjectName(QStringLiteral("gridLayout2"));
        gridLayout2->setContentsMargins(0, 0, 0, 0);
        widget2 = new QWidget(tabUpdatingCustomer);
        widget2->setObjectName(QStringLiteral("widget2"));
        widget2->setGeometry(QRect(20, 30, 141, 41));
        tableView2 = new QTableView(tabUpdatingCustomer);
        tableView2->setObjectName(QStringLiteral("tableView2"));
        tableView2->setGeometry(QRect(210, 70, 111, 61));
        tableView2->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
        tableView2->setSelectionMode(QAbstractItemView::SingleSelection);
        tableView2->setSelectionBehavior(QAbstractItemView::SelectRows);
        tableView2->setSortingEnabled(false);
        tableView2->verticalHeader()->setVisible(false);
        tabWidget->addTab(tabUpdatingCustomer, QString());
        tabAllCustomers = new QWidget();
        tabAllCustomers->setObjectName(QStringLiteral("tabAllCustomers"));
        gridLayoutWidget_3 = new QWidget(tabAllCustomers);
        gridLayoutWidget_3->setObjectName(QStringLiteral("gridLayoutWidget_3"));
        gridLayoutWidget_3->setGeometry(QRect(60, 40, 41, 21));
        gridLayout3 = new QGridLayout(gridLayoutWidget_3);
        gridLayout3->setSpacing(6);
        gridLayout3->setContentsMargins(11, 11, 11, 11);
        gridLayout3->setObjectName(QStringLiteral("gridLayout3"));
        gridLayout3->setContentsMargins(0, 0, 0, 0);
        widget3 = new QWidget(tabAllCustomers);
        widget3->setObjectName(QStringLiteral("widget3"));
        widget3->setGeometry(QRect(120, 100, 141, 41));
        tableView3 = new QTableView(tabAllCustomers);
        tableView3->setObjectName(QStringLiteral("tableView3"));
        tableView3->setGeometry(QRect(190, 20, 111, 61));
        tableView3->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
        tableView3->setSelectionMode(QAbstractItemView::SingleSelection);
        tableView3->setSelectionBehavior(QAbstractItemView::SelectRows);
        tableView3->setSortingEnabled(false);
        tableView3->verticalHeader()->setVisible(false);
        tabWidget->addTab(tabAllCustomers, QString());

        horizontalLayout->addWidget(tabWidget);

        formLayoutWidget = new QWidget(centralWidget);
        formLayoutWidget->setObjectName(QStringLiteral("formLayoutWidget"));
        formLayoutWidget->setGeometry(QRect(40, 240, 157, 31));
        formLayout11 = new QFormLayout(formLayoutWidget);
        formLayout11->setSpacing(6);
        formLayout11->setContentsMargins(11, 11, 11, 11);
        formLayout11->setObjectName(QStringLiteral("formLayout11"));
        formLayout11->setContentsMargins(0, 0, 0, 0);
        label = new QLabel(formLayoutWidget);
        label->setObjectName(QStringLiteral("label"));

        formLayout11->setWidget(0, QFormLayout::LabelRole, label);

        cbxIncoming = new QComboBox(formLayoutWidget);
        cbxIncoming->setObjectName(QStringLiteral("cbxIncoming"));

        formLayout11->setWidget(0, QFormLayout::FieldRole, cbxIncoming);

        formLayoutWidget_2 = new QWidget(centralWidget);
        formLayoutWidget_2->setObjectName(QStringLiteral("formLayoutWidget_2"));
        formLayoutWidget_2->setGeometry(QRect(210, 240, 231, 31));
        formLayout12 = new QFormLayout(formLayoutWidget_2);
        formLayout12->setSpacing(6);
        formLayout12->setContentsMargins(11, 11, 11, 11);
        formLayout12->setObjectName(QStringLiteral("formLayout12"));
        formLayout12->setContentsMargins(0, 0, 0, 0);
        label_2 = new QLabel(formLayoutWidget_2);
        label_2->setObjectName(QStringLiteral("label_2"));

        formLayout12->setWidget(0, QFormLayout::LabelRole, label_2);

        dtIncomingStart = new QDateEdit(formLayoutWidget_2);
        dtIncomingStart->setObjectName(QStringLiteral("dtIncomingStart"));

        formLayout12->setWidget(0, QFormLayout::FieldRole, dtIncomingStart);

        formLayoutWidget_3 = new QWidget(centralWidget);
        formLayoutWidget_3->setObjectName(QStringLiteral("formLayoutWidget_3"));
        formLayoutWidget_3->setGeometry(QRect(370, 240, 231, 31));
        formLayout13 = new QFormLayout(formLayoutWidget_3);
        formLayout13->setSpacing(6);
        formLayout13->setContentsMargins(11, 11, 11, 11);
        formLayout13->setObjectName(QStringLiteral("formLayout13"));
        formLayout13->setContentsMargins(0, 0, 0, 0);
        label_3 = new QLabel(formLayoutWidget_3);
        label_3->setObjectName(QStringLiteral("label_3"));

        formLayout13->setWidget(0, QFormLayout::LabelRole, label_3);

        dtIncomingEnd = new QDateEdit(formLayoutWidget_3);
        dtIncomingEnd->setObjectName(QStringLiteral("dtIncomingEnd"));

        formLayout13->setWidget(0, QFormLayout::FieldRole, dtIncomingEnd);

        formLayoutWidget_4 = new QWidget(centralWidget);
        formLayoutWidget_4->setObjectName(QStringLiteral("formLayoutWidget_4"));
        formLayoutWidget_4->setGeometry(QRect(540, 240, 141, 31));
        formLayout14 = new QFormLayout(formLayoutWidget_4);
        formLayout14->setSpacing(6);
        formLayout14->setContentsMargins(11, 11, 11, 11);
        formLayout14->setObjectName(QStringLiteral("formLayout14"));
        formLayout14->setContentsMargins(0, 0, 0, 0);
        label_4 = new QLabel(formLayoutWidget_4);
        label_4->setObjectName(QStringLiteral("label_4"));

        formLayout14->setWidget(0, QFormLayout::LabelRole, label_4);

        edtIncomingOther = new QLineEdit(formLayoutWidget_4);
        edtIncomingOther->setObjectName(QStringLiteral("edtIncomingOther"));

        formLayout14->setWidget(0, QFormLayout::FieldRole, edtIncomingOther);

        formLayoutWidget_5 = new QWidget(centralWidget);
        formLayoutWidget_5->setObjectName(QStringLiteral("formLayoutWidget_5"));
        formLayoutWidget_5->setGeometry(QRect(210, 280, 231, 31));
        formLayout22 = new QFormLayout(formLayoutWidget_5);
        formLayout22->setSpacing(6);
        formLayout22->setContentsMargins(11, 11, 11, 11);
        formLayout22->setObjectName(QStringLiteral("formLayout22"));
        formLayout22->setContentsMargins(0, 0, 0, 0);
        label_5 = new QLabel(formLayoutWidget_5);
        label_5->setObjectName(QStringLiteral("label_5"));

        formLayout22->setWidget(0, QFormLayout::LabelRole, label_5);

        dtUpdatingStart = new QDateEdit(formLayoutWidget_5);
        dtUpdatingStart->setObjectName(QStringLiteral("dtUpdatingStart"));

        formLayout22->setWidget(0, QFormLayout::FieldRole, dtUpdatingStart);

        formLayoutWidget_6 = new QWidget(centralWidget);
        formLayoutWidget_6->setObjectName(QStringLiteral("formLayoutWidget_6"));
        formLayoutWidget_6->setGeometry(QRect(40, 280, 177, 31));
        formLayout21 = new QFormLayout(formLayoutWidget_6);
        formLayout21->setSpacing(6);
        formLayout21->setContentsMargins(11, 11, 11, 11);
        formLayout21->setObjectName(QStringLiteral("formLayout21"));
        formLayout21->setContentsMargins(0, 0, 0, 0);
        label_6 = new QLabel(formLayoutWidget_6);
        label_6->setObjectName(QStringLiteral("label_6"));

        formLayout21->setWidget(0, QFormLayout::LabelRole, label_6);

        cbxUpdating = new QComboBox(formLayoutWidget_6);
        cbxUpdating->setObjectName(QStringLiteral("cbxUpdating"));

        formLayout21->setWidget(0, QFormLayout::FieldRole, cbxUpdating);

        formLayoutWidget_7 = new QWidget(centralWidget);
        formLayoutWidget_7->setObjectName(QStringLiteral("formLayoutWidget_7"));
        formLayoutWidget_7->setGeometry(QRect(540, 280, 141, 31));
        formLayout24 = new QFormLayout(formLayoutWidget_7);
        formLayout24->setSpacing(6);
        formLayout24->setContentsMargins(11, 11, 11, 11);
        formLayout24->setObjectName(QStringLiteral("formLayout24"));
        formLayout24->setContentsMargins(0, 0, 0, 0);
        label_7 = new QLabel(formLayoutWidget_7);
        label_7->setObjectName(QStringLiteral("label_7"));

        formLayout24->setWidget(0, QFormLayout::LabelRole, label_7);

        edtUpdatingOther = new QLineEdit(formLayoutWidget_7);
        edtUpdatingOther->setObjectName(QStringLiteral("edtUpdatingOther"));

        formLayout24->setWidget(0, QFormLayout::FieldRole, edtUpdatingOther);

        formLayoutWidget_8 = new QWidget(centralWidget);
        formLayoutWidget_8->setObjectName(QStringLiteral("formLayoutWidget_8"));
        formLayoutWidget_8->setGeometry(QRect(370, 280, 231, 31));
        formLayout23 = new QFormLayout(formLayoutWidget_8);
        formLayout23->setSpacing(6);
        formLayout23->setContentsMargins(11, 11, 11, 11);
        formLayout23->setObjectName(QStringLiteral("formLayout23"));
        formLayout23->setContentsMargins(0, 0, 0, 0);
        label_8 = new QLabel(formLayoutWidget_8);
        label_8->setObjectName(QStringLiteral("label_8"));

        formLayout23->setWidget(0, QFormLayout::LabelRole, label_8);

        dtUpdatingEnd = new QDateEdit(formLayoutWidget_8);
        dtUpdatingEnd->setObjectName(QStringLiteral("dtUpdatingEnd"));

        formLayout23->setWidget(0, QFormLayout::FieldRole, dtUpdatingEnd);

        formLayoutWidget_9 = new QWidget(centralWidget);
        formLayoutWidget_9->setObjectName(QStringLiteral("formLayoutWidget_9"));
        formLayoutWidget_9->setGeometry(QRect(40, 330, 177, 31));
        formLayout31 = new QFormLayout(formLayoutWidget_9);
        formLayout31->setSpacing(6);
        formLayout31->setContentsMargins(11, 11, 11, 11);
        formLayout31->setObjectName(QStringLiteral("formLayout31"));
        formLayout31->setContentsMargins(0, 0, 0, 0);
        label_11 = new QLabel(formLayoutWidget_9);
        label_11->setObjectName(QStringLiteral("label_11"));

        formLayout31->setWidget(0, QFormLayout::LabelRole, label_11);

        cbxAll = new QComboBox(formLayoutWidget_9);
        cbxAll->setObjectName(QStringLiteral("cbxAll"));

        formLayout31->setWidget(0, QFormLayout::FieldRole, cbxAll);

        formLayoutWidget_10 = new QWidget(centralWidget);
        formLayoutWidget_10->setObjectName(QStringLiteral("formLayoutWidget_10"));
        formLayoutWidget_10->setGeometry(QRect(540, 330, 141, 31));
        formLayout34 = new QFormLayout(formLayoutWidget_10);
        formLayout34->setSpacing(6);
        formLayout34->setContentsMargins(11, 11, 11, 11);
        formLayout34->setObjectName(QStringLiteral("formLayout34"));
        formLayout34->setContentsMargins(0, 0, 0, 0);
        label_12 = new QLabel(formLayoutWidget_10);
        label_12->setObjectName(QStringLiteral("label_12"));

        formLayout34->setWidget(0, QFormLayout::LabelRole, label_12);

        edtAllOther = new QLineEdit(formLayoutWidget_10);
        edtAllOther->setObjectName(QStringLiteral("edtAllOther"));

        formLayout34->setWidget(0, QFormLayout::FieldRole, edtAllOther);

        formLayoutWidget_11 = new QWidget(centralWidget);
        formLayoutWidget_11->setObjectName(QStringLiteral("formLayoutWidget_11"));
        formLayoutWidget_11->setGeometry(QRect(210, 330, 231, 31));
        formLayout32 = new QFormLayout(formLayoutWidget_11);
        formLayout32->setSpacing(6);
        formLayout32->setContentsMargins(11, 11, 11, 11);
        formLayout32->setObjectName(QStringLiteral("formLayout32"));
        formLayout32->setContentsMargins(0, 0, 0, 0);
        label_13 = new QLabel(formLayoutWidget_11);
        label_13->setObjectName(QStringLiteral("label_13"));

        formLayout32->setWidget(0, QFormLayout::LabelRole, label_13);

        dtAllStart = new QDateEdit(formLayoutWidget_11);
        dtAllStart->setObjectName(QStringLiteral("dtAllStart"));

        formLayout32->setWidget(0, QFormLayout::FieldRole, dtAllStart);

        formLayoutWidget_12 = new QWidget(centralWidget);
        formLayoutWidget_12->setObjectName(QStringLiteral("formLayoutWidget_12"));
        formLayoutWidget_12->setGeometry(QRect(370, 330, 231, 31));
        formLayout33 = new QFormLayout(formLayoutWidget_12);
        formLayout33->setSpacing(6);
        formLayout33->setContentsMargins(11, 11, 11, 11);
        formLayout33->setObjectName(QStringLiteral("formLayout33"));
        formLayout33->setContentsMargins(0, 0, 0, 0);
        label_14 = new QLabel(formLayoutWidget_12);
        label_14->setObjectName(QStringLiteral("label_14"));

        formLayout33->setWidget(0, QFormLayout::LabelRole, label_14);

        dtAllEnd = new QDateEdit(formLayoutWidget_12);
        dtAllEnd->setObjectName(QStringLiteral("dtAllEnd"));

        formLayout33->setWidget(0, QFormLayout::FieldRole, dtAllEnd);

        widget11 = new QWidget(centralWidget);
        widget11->setObjectName(QStringLiteral("widget11"));
        widget11->setGeometry(QRect(430, 20, 31, 21));
        widget12 = new QWidget(centralWidget);
        widget12->setObjectName(QStringLiteral("widget12"));
        widget12->setGeometry(QRect(480, 20, 31, 21));
        widget13 = new QWidget(centralWidget);
        widget13->setObjectName(QStringLiteral("widget13"));
        widget13->setGeometry(QRect(520, 20, 31, 21));
        widget14 = new QWidget(centralWidget);
        widget14->setObjectName(QStringLiteral("widget14"));
        widget14->setGeometry(QRect(570, 20, 31, 21));
        widget24 = new QWidget(centralWidget);
        widget24->setObjectName(QStringLiteral("widget24"));
        widget24->setGeometry(QRect(570, 60, 31, 21));
        widget23 = new QWidget(centralWidget);
        widget23->setObjectName(QStringLiteral("widget23"));
        widget23->setGeometry(QRect(520, 60, 31, 21));
        widget22 = new QWidget(centralWidget);
        widget22->setObjectName(QStringLiteral("widget22"));
        widget22->setGeometry(QRect(480, 60, 31, 21));
        widget21 = new QWidget(centralWidget);
        widget21->setObjectName(QStringLiteral("widget21"));
        widget21->setGeometry(QRect(430, 60, 31, 21));
        widget34 = new QWidget(centralWidget);
        widget34->setObjectName(QStringLiteral("widget34"));
        widget34->setGeometry(QRect(570, 100, 31, 21));
        widget33 = new QWidget(centralWidget);
        widget33->setObjectName(QStringLiteral("widget33"));
        widget33->setGeometry(QRect(520, 100, 31, 21));
        widget31 = new QWidget(centralWidget);
        widget31->setObjectName(QStringLiteral("widget31"));
        widget31->setGeometry(QRect(430, 100, 31, 21));
        widget32 = new QWidget(centralWidget);
        widget32->setObjectName(QStringLiteral("widget32"));
        widget32->setGeometry(QRect(480, 100, 31, 21));
        widget15 = new QWidget(centralWidget);
        widget15->setObjectName(QStringLiteral("widget15"));
        widget15->setGeometry(QRect(620, 20, 31, 21));
        widget16 = new QWidget(centralWidget);
        widget16->setObjectName(QStringLiteral("widget16"));
        widget16->setGeometry(QRect(670, 20, 31, 21));
        widget25 = new QWidget(centralWidget);
        widget25->setObjectName(QStringLiteral("widget25"));
        widget25->setGeometry(QRect(620, 60, 31, 21));
        widget26 = new QWidget(centralWidget);
        widget26->setObjectName(QStringLiteral("widget26"));
        widget26->setGeometry(QRect(670, 60, 31, 21));
        widget35 = new QWidget(centralWidget);
        widget35->setObjectName(QStringLiteral("widget35"));
        widget35->setGeometry(QRect(620, 100, 31, 21));
        widget36 = new QWidget(centralWidget);
        widget36->setObjectName(QStringLiteral("widget36"));
        widget36->setGeometry(QRect(670, 100, 31, 21));
        lblStatusTip = new QLabel(centralWidget);
        lblStatusTip->setObjectName(QStringLiteral("lblStatusTip"));
        lblStatusTip->setGeometry(QRect(30, 380, 131, 31));
        QFont font1;
        font1.setPointSize(14);
        font1.setBold(true);
        font1.setWeight(75);
        lblStatusTip->setFont(font1);
        lblStatusTip->setStyleSheet(QStringLiteral("color: rgb(0, 170, 255);"));
        lblStatusTip->setFrameShape(QFrame::NoFrame);
        lblStatusTip->setFrameShadow(QFrame::Plain);
        lblStatusTip->setAlignment(Qt::AlignCenter);
        lblStatusRecordCount = new QLabel(centralWidget);
        lblStatusRecordCount->setObjectName(QStringLiteral("lblStatusRecordCount"));
        lblStatusRecordCount->setGeometry(QRect(200, 380, 121, 31));
        lblStatusRecordCount->setFont(font1);
        lblStatusRecordCount->setStyleSheet(QStringLiteral("color: rgb(0, 170, 255);"));
        lblStatusRecordCount->setFrameShape(QFrame::NoFrame);
        lblStatusRecordCount->setFrameShadow(QFrame::Plain);
        lblStatusRecordCount->setAlignment(Qt::AlignCenter);
        lblSeperator0 = new QLabel(centralWidget);
        lblSeperator0->setObjectName(QStringLiteral("lblSeperator0"));
        lblSeperator0->setGeometry(QRect(330, 390, 54, 12));
        lblSeperator0->setFont(font1);
        lblSeperator1 = new QLabel(centralWidget);
        lblSeperator1->setObjectName(QStringLiteral("lblSeperator1"));
        lblSeperator1->setGeometry(QRect(400, 390, 54, 12));
        lblSeperator1->setFont(font1);
        lblStatusSum = new QLabel(centralWidget);
        lblStatusSum->setObjectName(QStringLiteral("lblStatusSum"));
        lblStatusSum->setGeometry(QRect(510, 380, 121, 31));
        lblStatusSum->setFont(font1);
        lblStatusSum->setStyleSheet(QStringLiteral("color: rgb(0, 170, 255);"));
        lblStatusSum->setFrameShape(QFrame::NoFrame);
        lblStatusSum->setFrameShadow(QFrame::Plain);
        lblStatusSum->setAlignment(Qt::AlignCenter);
        lblLeft = new QLabel(centralWidget);
        lblLeft->setObjectName(QStringLiteral("lblLeft"));
        lblLeft->setGeometry(QRect(520, 190, 3, 0));
        lblLeft->setMinimumSize(QSize(3, 0));
        lblLeft->setMaximumSize(QSize(3, 0));
        widget = new QWidget(centralWidget);
        widget->setObjectName(QStringLiteral("widget"));
        widget->setGeometry(QRect(370, 400, 120, 21));
        verticalLayoutWidget_2 = new QWidget(centralWidget);
        verticalLayoutWidget_2->setObjectName(QStringLiteral("verticalLayoutWidget_2"));
        verticalLayoutWidget_2->setGeometry(QRect(520, 420, 31, 21));
        verticalLayout_2 = new QVBoxLayout(verticalLayoutWidget_2);
        verticalLayout_2->setSpacing(6);
        verticalLayout_2->setContentsMargins(11, 11, 11, 11);
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        verticalLayout_2->setContentsMargins(0, 0, 0, 0);
        lblTop = new QLabel(centralWidget);
        lblTop->setObjectName(QStringLiteral("lblTop"));
        lblTop->setGeometry(QRect(240, 420, 54, 3));
        lblTop->setMinimumSize(QSize(0, 3));
        lblTop->setMaximumSize(QSize(16777215, 3));
        widget_2 = new QWidget(centralWidget);
        widget_2->setObjectName(QStringLiteral("widget_2"));
        widget_2->setGeometry(QRect(770, 0, 80, 431));
        widget_2->setMinimumSize(QSize(80, 0));
        widget_2->setMaximumSize(QSize(80, 16777215));
        layoutWidget = new QWidget(widget_2);
        layoutWidget->setObjectName(QStringLiteral("layoutWidget"));
        layoutWidget->setGeometry(QRect(3, 10, 91, 411));
        verticalLayout = new QVBoxLayout(layoutWidget);
        verticalLayout->setSpacing(6);
        verticalLayout->setContentsMargins(11, 11, 11, 11);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        widget_3 = new QWidget(layoutWidget);
        widget_3->setObjectName(QStringLiteral("widget_3"));
        widget_3->setMinimumSize(QSize(0, 0));
        widget_3->setMaximumSize(QSize(16777215, 200));
        btnQuery = new QPushButton(widget_3);
        btnQuery->setObjectName(QStringLiteral("btnQuery"));
        btnQuery->setGeometry(QRect(0, 42, 75, 20));

        verticalLayout->addWidget(widget_3);

        widget_5 = new QWidget(layoutWidget);
        widget_5->setObjectName(QStringLiteral("widget_5"));

        verticalLayout->addWidget(widget_5);

        widget_4 = new QWidget(layoutWidget);
        widget_4->setObjectName(QStringLiteral("widget_4"));
        widget_4->setMinimumSize(QSize(0, 0));
        widget_4->setMaximumSize(QSize(16777215, 230));
        verticalLayoutWidget_3 = new QWidget(widget_4);
        verticalLayoutWidget_3->setObjectName(QStringLiteral("verticalLayoutWidget_3"));
        verticalLayoutWidget_3->setGeometry(QRect(0, 30, 81, 191));
        verticalLayout_3 = new QVBoxLayout(verticalLayoutWidget_3);
        verticalLayout_3->setSpacing(6);
        verticalLayout_3->setContentsMargins(11, 11, 11, 11);
        verticalLayout_3->setObjectName(QStringLiteral("verticalLayout_3"));
        verticalLayout_3->setContentsMargins(0, 0, 0, 0);
        btnEdit = new QPushButton(verticalLayoutWidget_3);
        btnEdit->setObjectName(QStringLiteral("btnEdit"));

        verticalLayout_3->addWidget(btnEdit);

        btnIgnore = new QPushButton(verticalLayoutWidget_3);
        btnIgnore->setObjectName(QStringLiteral("btnIgnore"));

        verticalLayout_3->addWidget(btnIgnore);

        btnDelete = new QPushButton(verticalLayoutWidget_3);
        btnDelete->setObjectName(QStringLiteral("btnDelete"));

        verticalLayout_3->addWidget(btnDelete);

        btnNew = new QPushButton(verticalLayoutWidget_3);
        btnNew->setObjectName(QStringLiteral("btnNew"));

        verticalLayout_3->addWidget(btnNew);

        btnExport = new QPushButton(verticalLayoutWidget_3);
        btnExport->setObjectName(QStringLiteral("btnExport"));

        verticalLayout_3->addWidget(btnExport);

        btnImport = new QPushButton(verticalLayoutWidget_3);
        btnImport->setObjectName(QStringLiteral("btnImport"));

        verticalLayout_3->addWidget(btnImport);


        verticalLayout->addWidget(widget_4);

        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 860, 19));
        menu = new QMenu(menuBar);
        menu->setObjectName(QStringLiteral("menu"));
        MainWindow->setMenuBar(menuBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        statusBar->setStyleSheet(QStringLiteral(""));
        MainWindow->setStatusBar(statusBar);

        menuBar->addAction(menu->menuAction());
        menu->addAction(actCommonData);
        menu->addSeparator();
        menu->addAction(actExit);

        retranslateUi(MainWindow);

        tabWidget->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "\345\256\242\346\210\267\350\265\204\346\226\231\347\256\241\347\220\206", 0));
#ifndef QT_NO_WHATSTHIS
        MainWindow->setWhatsThis(QApplication::translate("MainWindow", "\345\256\242\346\210\267\350\265\204\346\226\231\347\256\241\347\220\206", 0));
#endif // QT_NO_WHATSTHIS
        actCommonData->setText(QApplication::translate("MainWindow", "\351\200\232\347\224\250\346\225\260\346\215\256", 0));
        actExit->setText(QApplication::translate("MainWindow", "\351\200\200\345\207\272\347\263\273\347\273\237", 0));
        tabWidget->setTabText(tabWidget->indexOf(tabNewCustomer), QApplication::translate("MainWindow", "\345\276\205\345\275\225\345\205\245\346\226\260\345\256\242\346\210\267", 0));
        tabWidget->setTabText(tabWidget->indexOf(tabUpdatingCustomer), QApplication::translate("MainWindow", "\345\276\205\346\233\264\346\226\260\350\200\201\345\256\242\346\210\267", 0));
        tabWidget->setTabText(tabWidget->indexOf(tabAllCustomers), QApplication::translate("MainWindow", "\345\205\250\351\203\250\345\256\242\346\210\267", 0));
        label->setText(QApplication::translate("MainWindow", "\346\227\245\346\234\237\347\261\273\345\210\253", 0));
        cbxIncoming->clear();
        cbxIncoming->insertItems(0, QStringList()
         << QApplication::translate("MainWindow", "\345\205\250\351\203\250", 0)
         << QApplication::translate("MainWindow", "\350\277\233\345\205\245\346\227\266\351\227\264", 0)
        );
        label_2->setText(QApplication::translate("MainWindow", "\345\274\200\345\247\213\346\227\266\351\227\264", 0));
        label_3->setText(QApplication::translate("MainWindow", "\347\273\223\346\235\237\346\227\266\351\227\264", 0));
        label_4->setText(QApplication::translate("MainWindow", "\345\205\266\345\256\203", 0));
#ifndef QT_NO_TOOLTIP
        edtIncomingOther->setToolTip(QApplication::translate("MainWindow", "\345\217\257\344\273\245\350\276\223\345\205\245\345\256\242\346\210\267\345\220\215\346\210\226\350\200\205\350\275\246\347\211\214\345\217\267\343\200\202", 0));
#endif // QT_NO_TOOLTIP
        label_5->setText(QApplication::translate("MainWindow", "\345\274\200\345\247\213\346\227\266\351\227\264", 0));
        label_6->setText(QApplication::translate("MainWindow", "\346\227\245\346\234\237\347\261\273\345\210\253", 0));
        cbxUpdating->clear();
        cbxUpdating->insertItems(0, QStringList()
         << QApplication::translate("MainWindow", "\345\205\250\351\203\250", 0)
         << QApplication::translate("MainWindow", "\345\210\235\346\254\241\346\235\245\350\256\277\346\227\245", 0)
         << QApplication::translate("MainWindow", "\345\273\272\346\241\243\346\227\245\346\234\237", 0)
         << QApplication::translate("MainWindow", "\346\234\200\350\277\221\344\270\200\346\254\241\345\210\260\345\272\227\346\227\266\351\227\264", 0)
        );
        label_7->setText(QApplication::translate("MainWindow", "\345\205\266\345\256\203", 0));
#ifndef QT_NO_TOOLTIP
        edtUpdatingOther->setToolTip(QApplication::translate("MainWindow", "\345\217\257\344\273\245\350\276\223\345\205\245\345\256\242\346\210\267\345\220\215\346\210\226\350\200\205\350\275\246\347\211\214\345\217\267\343\200\202", 0));
#endif // QT_NO_TOOLTIP
        label_8->setText(QApplication::translate("MainWindow", "\347\273\223\346\235\237\346\227\266\351\227\264", 0));
        label_11->setText(QApplication::translate("MainWindow", "\346\227\245\346\234\237\347\261\273\345\210\253", 0));
        cbxAll->clear();
        cbxAll->insertItems(0, QStringList()
         << QApplication::translate("MainWindow", "\345\205\250\351\203\250", 0)
         << QApplication::translate("MainWindow", "\345\210\235\346\254\241\346\235\245\350\256\277\346\227\245", 0)
         << QApplication::translate("MainWindow", "\345\273\272\346\241\243\346\227\245\346\234\237", 0)
         << QApplication::translate("MainWindow", "\346\234\200\350\277\221\344\270\200\346\254\241\345\210\260\345\272\227\346\227\266\351\227\264", 0)
        );
        label_12->setText(QApplication::translate("MainWindow", "\345\205\266\345\256\203", 0));
#ifndef QT_NO_TOOLTIP
        edtAllOther->setToolTip(QApplication::translate("MainWindow", "\345\217\257\344\273\245\350\276\223\345\205\245\345\256\242\346\210\267\345\220\215\346\210\226\350\200\205\350\275\246\347\211\214\345\217\267\343\200\202", 0));
#endif // QT_NO_TOOLTIP
        label_13->setText(QApplication::translate("MainWindow", "\345\274\200\345\247\213\346\227\266\351\227\264", 0));
        label_14->setText(QApplication::translate("MainWindow", "\347\273\223\346\235\237\346\227\266\351\227\264", 0));
        lblStatusTip->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        lblStatusRecordCount->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        lblSeperator0->setText(QString());
        lblSeperator1->setText(QString());
        lblStatusSum->setText(QApplication::translate("MainWindow", "TextLabel", 0));
        lblLeft->setText(QString());
        lblTop->setText(QString());
        btnQuery->setText(QApplication::translate("MainWindow", "\346\237\245\350\257\242", 0));
        btnEdit->setText(QApplication::translate("MainWindow", "\347\274\226\350\276\221", 0));
        btnIgnore->setText(QApplication::translate("MainWindow", "\345\277\275\347\225\245", 0));
        btnDelete->setText(QApplication::translate("MainWindow", "\345\210\240\351\231\244", 0));
        btnNew->setText(QApplication::translate("MainWindow", "\346\226\260\345\242\236", 0));
        btnExport->setText(QApplication::translate("MainWindow", "\345\257\274\345\207\272", 0));
        btnImport->setText(QApplication::translate("MainWindow", "\345\257\274\345\205\245", 0));
        menu->setTitle(QApplication::translate("MainWindow", "\347\263\273\347\273\237\347\256\241\347\220\206", 0));
#ifndef QT_NO_STATUSTIP
        statusBar->setStatusTip(QString());
#endif // QT_NO_STATUSTIP
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
