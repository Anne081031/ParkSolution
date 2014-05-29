/********************************************************************************
** Form generated from reading UI file 'qdlgeditnewinfo.ui'
**
** Created by: Qt User Interface Compiler version 5.3.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QDLGEDITNEWINFO_H
#define UI_QDLGEDITNEWINFO_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDateEdit>
#include <QtWidgets/QDateTimeEdit>
#include <QtWidgets/QDialog>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTableView>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_QDlgEditNewInfo
{
public:
    QWidget *widget1;
    QWidget *formLayoutWidget_6;
    QFormLayout *formLayout2;
    QLabel *lblVehicleBasic;
    QFrame *lineVehicle;
    QWidget *formLayoutWidget_7;
    QFormLayout *formLayout3;
    QLabel *lblServiceRecord;
    QFrame *lineService;
    QWidget *gridLayoutWidget;
    QGridLayout *mainGridLayout;
    QWidget *formLayoutWidget_11;
    QFormLayout *formLayout7;
    QLabel *label_7;
    QLineEdit *edtPlateID;
    QLabel *label_8;
    QLineEdit *edtMotorID;
    QLabel *label_21;
    QLabel *label_22;
    QLabel *label_23;
    QLabel *label_24;
    QLineEdit *edtOdometer;
    QComboBox *cbxBrand;
    QComboBox *cbxSeries;
    QDateEdit *dtBuyDate;
    QLabel *lblSpace;
    QWidget *formLayoutWidget_9;
    QFormLayout *formLayout5;
    QLabel *label_9;
    QLineEdit *edtMobilePhone;
    QLabel *label_10;
    QLineEdit *edtLandline;
    QLabel *label_11;
    QLabel *label_12;
    QLabel *label_13;
    QLabel *label_14;
    QLineEdit *edtAddress;
    QLineEdit *edtCredentialsID;
    QComboBox *cbxDistrict;
    QLineEdit *edtEMail;
    QWidget *formLayoutWidget_12;
    QFormLayout *formLayout8;
    QLabel *label_25;
    QLabel *label_26;
    QLabel *label_27;
    QLabel *label_28;
    QLabel *label_29;
    QLineEdit *edtVistCount;
    QLabel *label_30;
    QComboBox *cbxInsurer;
    QDateEdit *dtCommercialInsuranceExpiration;
    QDateEdit *dtMandatoryInsuranceExpiration;
    QDateEdit *dtAannualSurveyDate;
    QComboBox *cbxColor;
    QWidget *widget4;
    QWidget *formLayoutWidget_5;
    QFormLayout *formLayout1;
    QLabel *lblCustomerBasic;
    QFrame *lineCustomer;
    QWidget *widget2;
    QWidget *widget8;
    QWidget *formLayoutWidget_10;
    QFormLayout *formLayout6;
    QLabel *label_15;
    QLabel *label_16;
    QLabel *label_17;
    QLabel *label_18;
    QLabel *label_19;
    QLabel *label_20;
    QDateTimeEdit *dtVistFirstTime;
    QDateTimeEdit *dtEntryTime;
    QDateTimeEdit *dtVistNewlyTime;
    QComboBox *cbxMembershipClass;
    QLineEdit *edtMembershipCardSurplus;
    QLineEdit *edtConsumptionAmount;
    QWidget *widget3;
    QWidget *widget9;
    QWidget *widget6;
    QLabel *lblDetail;
    QWidget *widget5;
    QWidget *formLayoutWidget_13;
    QFormLayout *formLayout9;
    QLabel *label_31;
    QLabel *label_32;
    QLabel *label_33;
    QLabel *label_34;
    QDateEdit *dtMaintenanceNextDate;
    QDateEdit *dtMaintenanceFirstDate;
    QComboBox *cbxFeature;
    QComboBox *cbxState;
    QLineEdit *edtVehicleID;
    QWidget *widget10;
    QPushButton *btnOK;
    QPushButton *btnCancel;
    QWidget *gridLayoutWidget_2;
    QGridLayout *gridLayout;
    QWidget *widget7;
    QTableView *tabServiceRecord;
    QWidget *formLayoutWidget_8;
    QFormLayout *formLayout4;
    QLabel *label;
    QLineEdit *edtCustomerID;
    QLabel *label_2;
    QLineEdit *edtName;
    QLabel *label_3;
    QLabel *label_4;
    QLabel *label_5;
    QLabel *label_6;
    QComboBox *cbxCustomerCategory;
    QComboBox *cbxDepartment;
    QComboBox *cbxAccountExecutive;
    QComboBox *cbxCustomerSource;
    QComboBox *cbxCustomerLevel;
    QLabel *label_35;

    void setupUi(QDialog *QDlgEditNewInfo)
    {
        if (QDlgEditNewInfo->objectName().isEmpty())
            QDlgEditNewInfo->setObjectName(QStringLiteral("QDlgEditNewInfo"));
        QDlgEditNewInfo->resize(880, 618);
        QDlgEditNewInfo->setMinimumSize(QSize(880, 618));
        QDlgEditNewInfo->setMaximumSize(QSize(880, 618));
        widget1 = new QWidget(QDlgEditNewInfo);
        widget1->setObjectName(QStringLiteral("widget1"));
        widget1->setGeometry(QRect(20, 90, 41, 21));
        formLayoutWidget_6 = new QWidget(QDlgEditNewInfo);
        formLayoutWidget_6->setObjectName(QStringLiteral("formLayoutWidget_6"));
        formLayoutWidget_6->setGeometry(QRect(10, 206, 861, 16));
        formLayout2 = new QFormLayout(formLayoutWidget_6);
        formLayout2->setObjectName(QStringLiteral("formLayout2"));
        formLayout2->setContentsMargins(0, 0, 0, 0);
        lblVehicleBasic = new QLabel(formLayoutWidget_6);
        lblVehicleBasic->setObjectName(QStringLiteral("lblVehicleBasic"));

        formLayout2->setWidget(0, QFormLayout::LabelRole, lblVehicleBasic);

        lineVehicle = new QFrame(formLayoutWidget_6);
        lineVehicle->setObjectName(QStringLiteral("lineVehicle"));
        lineVehicle->setFrameShape(QFrame::HLine);
        lineVehicle->setFrameShadow(QFrame::Sunken);

        formLayout2->setWidget(0, QFormLayout::FieldRole, lineVehicle);

        formLayoutWidget_7 = new QWidget(QDlgEditNewInfo);
        formLayoutWidget_7->setObjectName(QStringLiteral("formLayoutWidget_7"));
        formLayoutWidget_7->setGeometry(QRect(10, 380, 861, 16));
        formLayout3 = new QFormLayout(formLayoutWidget_7);
        formLayout3->setObjectName(QStringLiteral("formLayout3"));
        formLayout3->setContentsMargins(0, 0, 0, 0);
        lblServiceRecord = new QLabel(formLayoutWidget_7);
        lblServiceRecord->setObjectName(QStringLiteral("lblServiceRecord"));

        formLayout3->setWidget(0, QFormLayout::LabelRole, lblServiceRecord);

        lineService = new QFrame(formLayoutWidget_7);
        lineService->setObjectName(QStringLiteral("lineService"));
        lineService->setFrameShape(QFrame::HLine);
        lineService->setFrameShadow(QFrame::Sunken);

        formLayout3->setWidget(0, QFormLayout::FieldRole, lineService);

        gridLayoutWidget = new QWidget(QDlgEditNewInfo);
        gridLayoutWidget->setObjectName(QStringLiteral("gridLayoutWidget"));
        gridLayoutWidget->setGeometry(QRect(120, 0, 16, 16));
        mainGridLayout = new QGridLayout(gridLayoutWidget);
        mainGridLayout->setObjectName(QStringLiteral("mainGridLayout"));
        mainGridLayout->setContentsMargins(0, 0, 0, 0);
        formLayoutWidget_11 = new QWidget(QDlgEditNewInfo);
        formLayoutWidget_11->setObjectName(QStringLiteral("formLayoutWidget_11"));
        formLayoutWidget_11->setGeometry(QRect(10, 224, 261, 152));
        formLayout7 = new QFormLayout(formLayoutWidget_11);
        formLayout7->setObjectName(QStringLiteral("formLayout7"));
        formLayout7->setFieldGrowthPolicy(QFormLayout::AllNonFixedFieldsGrow);
        formLayout7->setContentsMargins(0, 0, 0, 0);
        label_7 = new QLabel(formLayoutWidget_11);
        label_7->setObjectName(QStringLiteral("label_7"));

        formLayout7->setWidget(0, QFormLayout::LabelRole, label_7);

        edtPlateID = new QLineEdit(formLayoutWidget_11);
        edtPlateID->setObjectName(QStringLiteral("edtPlateID"));
        edtPlateID->setMaxLength(8);
        edtPlateID->setReadOnly(false);

        formLayout7->setWidget(0, QFormLayout::FieldRole, edtPlateID);

        label_8 = new QLabel(formLayoutWidget_11);
        label_8->setObjectName(QStringLiteral("label_8"));

        formLayout7->setWidget(1, QFormLayout::LabelRole, label_8);

        edtMotorID = new QLineEdit(formLayoutWidget_11);
        edtMotorID->setObjectName(QStringLiteral("edtMotorID"));
        edtMotorID->setMaxLength(45);
        edtMotorID->setReadOnly(false);

        formLayout7->setWidget(1, QFormLayout::FieldRole, edtMotorID);

        label_21 = new QLabel(formLayoutWidget_11);
        label_21->setObjectName(QStringLiteral("label_21"));

        formLayout7->setWidget(2, QFormLayout::LabelRole, label_21);

        label_22 = new QLabel(formLayoutWidget_11);
        label_22->setObjectName(QStringLiteral("label_22"));

        formLayout7->setWidget(3, QFormLayout::LabelRole, label_22);

        label_23 = new QLabel(formLayoutWidget_11);
        label_23->setObjectName(QStringLiteral("label_23"));

        formLayout7->setWidget(4, QFormLayout::LabelRole, label_23);

        label_24 = new QLabel(formLayoutWidget_11);
        label_24->setObjectName(QStringLiteral("label_24"));

        formLayout7->setWidget(5, QFormLayout::LabelRole, label_24);

        edtOdometer = new QLineEdit(formLayoutWidget_11);
        edtOdometer->setObjectName(QStringLiteral("edtOdometer"));
        edtOdometer->setMaxLength(10);
        edtOdometer->setReadOnly(false);

        formLayout7->setWidget(5, QFormLayout::FieldRole, edtOdometer);

        cbxBrand = new QComboBox(formLayoutWidget_11);
        cbxBrand->setObjectName(QStringLiteral("cbxBrand"));

        formLayout7->setWidget(2, QFormLayout::FieldRole, cbxBrand);

        cbxSeries = new QComboBox(formLayoutWidget_11);
        cbxSeries->setObjectName(QStringLiteral("cbxSeries"));

        formLayout7->setWidget(3, QFormLayout::FieldRole, cbxSeries);

        dtBuyDate = new QDateEdit(formLayoutWidget_11);
        dtBuyDate->setObjectName(QStringLiteral("dtBuyDate"));
        dtBuyDate->setCalendarPopup(false);

        formLayout7->setWidget(4, QFormLayout::FieldRole, dtBuyDate);

        lblSpace = new QLabel(QDlgEditNewInfo);
        lblSpace->setObjectName(QStringLiteral("lblSpace"));
        lblSpace->setGeometry(QRect(110, 470, 600, 12));
        formLayoutWidget_9 = new QWidget(QDlgEditNewInfo);
        formLayoutWidget_9->setObjectName(QStringLiteral("formLayoutWidget_9"));
        formLayoutWidget_9->setGeometry(QRect(286, 50, 261, 152));
        formLayout5 = new QFormLayout(formLayoutWidget_9);
        formLayout5->setObjectName(QStringLiteral("formLayout5"));
        formLayout5->setFieldGrowthPolicy(QFormLayout::AllNonFixedFieldsGrow);
        formLayout5->setContentsMargins(0, 0, 0, 0);
        label_9 = new QLabel(formLayoutWidget_9);
        label_9->setObjectName(QStringLiteral("label_9"));

        formLayout5->setWidget(0, QFormLayout::LabelRole, label_9);

        edtMobilePhone = new QLineEdit(formLayoutWidget_9);
        edtMobilePhone->setObjectName(QStringLiteral("edtMobilePhone"));
        edtMobilePhone->setInputMethodHints(Qt::ImhDigitsOnly);
        edtMobilePhone->setMaxLength(11);
        edtMobilePhone->setReadOnly(false);

        formLayout5->setWidget(0, QFormLayout::FieldRole, edtMobilePhone);

        label_10 = new QLabel(formLayoutWidget_9);
        label_10->setObjectName(QStringLiteral("label_10"));

        formLayout5->setWidget(1, QFormLayout::LabelRole, label_10);

        edtLandline = new QLineEdit(formLayoutWidget_9);
        edtLandline->setObjectName(QStringLiteral("edtLandline"));
        edtLandline->setInputMethodHints(Qt::ImhDigitsOnly);
        edtLandline->setMaxLength(11);
        edtLandline->setReadOnly(false);

        formLayout5->setWidget(1, QFormLayout::FieldRole, edtLandline);

        label_11 = new QLabel(formLayoutWidget_9);
        label_11->setObjectName(QStringLiteral("label_11"));

        formLayout5->setWidget(2, QFormLayout::LabelRole, label_11);

        label_12 = new QLabel(formLayoutWidget_9);
        label_12->setObjectName(QStringLiteral("label_12"));

        formLayout5->setWidget(3, QFormLayout::LabelRole, label_12);

        label_13 = new QLabel(formLayoutWidget_9);
        label_13->setObjectName(QStringLiteral("label_13"));

        formLayout5->setWidget(4, QFormLayout::LabelRole, label_13);

        label_14 = new QLabel(formLayoutWidget_9);
        label_14->setObjectName(QStringLiteral("label_14"));

        formLayout5->setWidget(5, QFormLayout::LabelRole, label_14);

        edtAddress = new QLineEdit(formLayoutWidget_9);
        edtAddress->setObjectName(QStringLiteral("edtAddress"));
        edtAddress->setMaxLength(22);

        formLayout5->setWidget(3, QFormLayout::FieldRole, edtAddress);

        edtCredentialsID = new QLineEdit(formLayoutWidget_9);
        edtCredentialsID->setObjectName(QStringLiteral("edtCredentialsID"));
        edtCredentialsID->setMaxLength(45);

        formLayout5->setWidget(5, QFormLayout::FieldRole, edtCredentialsID);

        cbxDistrict = new QComboBox(formLayoutWidget_9);
        cbxDistrict->setObjectName(QStringLiteral("cbxDistrict"));

        formLayout5->setWidget(4, QFormLayout::FieldRole, cbxDistrict);

        edtEMail = new QLineEdit(formLayoutWidget_9);
        edtEMail->setObjectName(QStringLiteral("edtEMail"));
        edtEMail->setMaxLength(22);

        formLayout5->setWidget(2, QFormLayout::FieldRole, edtEMail);

        formLayoutWidget_12 = new QWidget(QDlgEditNewInfo);
        formLayoutWidget_12->setObjectName(QStringLiteral("formLayoutWidget_12"));
        formLayoutWidget_12->setGeometry(QRect(287, 224, 261, 152));
        formLayout8 = new QFormLayout(formLayoutWidget_12);
        formLayout8->setObjectName(QStringLiteral("formLayout8"));
        formLayout8->setFieldGrowthPolicy(QFormLayout::AllNonFixedFieldsGrow);
        formLayout8->setContentsMargins(0, 0, 0, 0);
        label_25 = new QLabel(formLayoutWidget_12);
        label_25->setObjectName(QStringLiteral("label_25"));

        formLayout8->setWidget(0, QFormLayout::LabelRole, label_25);

        label_26 = new QLabel(formLayoutWidget_12);
        label_26->setObjectName(QStringLiteral("label_26"));

        formLayout8->setWidget(1, QFormLayout::LabelRole, label_26);

        label_27 = new QLabel(formLayoutWidget_12);
        label_27->setObjectName(QStringLiteral("label_27"));

        formLayout8->setWidget(2, QFormLayout::LabelRole, label_27);

        label_28 = new QLabel(formLayoutWidget_12);
        label_28->setObjectName(QStringLiteral("label_28"));

        formLayout8->setWidget(3, QFormLayout::LabelRole, label_28);

        label_29 = new QLabel(formLayoutWidget_12);
        label_29->setObjectName(QStringLiteral("label_29"));

        formLayout8->setWidget(4, QFormLayout::LabelRole, label_29);

        edtVistCount = new QLineEdit(formLayoutWidget_12);
        edtVistCount->setObjectName(QStringLiteral("edtVistCount"));
        edtVistCount->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtVistCount->setMaxLength(10);
        edtVistCount->setReadOnly(true);

        formLayout8->setWidget(4, QFormLayout::FieldRole, edtVistCount);

        label_30 = new QLabel(formLayoutWidget_12);
        label_30->setObjectName(QStringLiteral("label_30"));

        formLayout8->setWidget(5, QFormLayout::LabelRole, label_30);

        cbxInsurer = new QComboBox(formLayoutWidget_12);
        cbxInsurer->setObjectName(QStringLiteral("cbxInsurer"));

        formLayout8->setWidget(5, QFormLayout::FieldRole, cbxInsurer);

        dtCommercialInsuranceExpiration = new QDateEdit(formLayoutWidget_12);
        dtCommercialInsuranceExpiration->setObjectName(QStringLiteral("dtCommercialInsuranceExpiration"));
        dtCommercialInsuranceExpiration->setCalendarPopup(false);

        formLayout8->setWidget(2, QFormLayout::FieldRole, dtCommercialInsuranceExpiration);

        dtMandatoryInsuranceExpiration = new QDateEdit(formLayoutWidget_12);
        dtMandatoryInsuranceExpiration->setObjectName(QStringLiteral("dtMandatoryInsuranceExpiration"));
        dtMandatoryInsuranceExpiration->setCalendarPopup(false);

        formLayout8->setWidget(3, QFormLayout::FieldRole, dtMandatoryInsuranceExpiration);

        dtAannualSurveyDate = new QDateEdit(formLayoutWidget_12);
        dtAannualSurveyDate->setObjectName(QStringLiteral("dtAannualSurveyDate"));

        formLayout8->setWidget(1, QFormLayout::FieldRole, dtAannualSurveyDate);

        cbxColor = new QComboBox(formLayoutWidget_12);
        cbxColor->setObjectName(QStringLiteral("cbxColor"));

        formLayout8->setWidget(0, QFormLayout::FieldRole, cbxColor);

        widget4 = new QWidget(QDlgEditNewInfo);
        widget4->setObjectName(QStringLiteral("widget4"));
        widget4->setGeometry(QRect(20, 180, 41, 21));
        formLayoutWidget_5 = new QWidget(QDlgEditNewInfo);
        formLayoutWidget_5->setObjectName(QStringLiteral("formLayoutWidget_5"));
        formLayoutWidget_5->setGeometry(QRect(10, 30, 861, 16));
        formLayout1 = new QFormLayout(formLayoutWidget_5);
        formLayout1->setObjectName(QStringLiteral("formLayout1"));
        formLayout1->setContentsMargins(0, 0, 0, 0);
        lblCustomerBasic = new QLabel(formLayoutWidget_5);
        lblCustomerBasic->setObjectName(QStringLiteral("lblCustomerBasic"));

        formLayout1->setWidget(0, QFormLayout::LabelRole, lblCustomerBasic);

        lineCustomer = new QFrame(formLayoutWidget_5);
        lineCustomer->setObjectName(QStringLiteral("lineCustomer"));
        lineCustomer->setFrameShape(QFrame::HLine);
        lineCustomer->setFrameShadow(QFrame::Sunken);

        formLayout1->setWidget(0, QFormLayout::FieldRole, lineCustomer);

        widget2 = new QWidget(QDlgEditNewInfo);
        widget2->setObjectName(QStringLiteral("widget2"));
        widget2->setGeometry(QRect(20, 120, 41, 21));
        widget8 = new QWidget(QDlgEditNewInfo);
        widget8->setObjectName(QStringLiteral("widget8"));
        widget8->setGeometry(QRect(200, 130, 41, 21));
        formLayoutWidget_10 = new QWidget(QDlgEditNewInfo);
        formLayoutWidget_10->setObjectName(QStringLiteral("formLayoutWidget_10"));
        formLayoutWidget_10->setGeometry(QRect(560, 50, 310, 152));
        formLayout6 = new QFormLayout(formLayoutWidget_10);
        formLayout6->setObjectName(QStringLiteral("formLayout6"));
        formLayout6->setFieldGrowthPolicy(QFormLayout::AllNonFixedFieldsGrow);
        formLayout6->setContentsMargins(0, 0, 0, 0);
        label_15 = new QLabel(formLayoutWidget_10);
        label_15->setObjectName(QStringLiteral("label_15"));

        formLayout6->setWidget(0, QFormLayout::LabelRole, label_15);

        label_16 = new QLabel(formLayoutWidget_10);
        label_16->setObjectName(QStringLiteral("label_16"));

        formLayout6->setWidget(1, QFormLayout::LabelRole, label_16);

        label_17 = new QLabel(formLayoutWidget_10);
        label_17->setObjectName(QStringLiteral("label_17"));

        formLayout6->setWidget(2, QFormLayout::LabelRole, label_17);

        label_18 = new QLabel(formLayoutWidget_10);
        label_18->setObjectName(QStringLiteral("label_18"));

        formLayout6->setWidget(3, QFormLayout::LabelRole, label_18);

        label_19 = new QLabel(formLayoutWidget_10);
        label_19->setObjectName(QStringLiteral("label_19"));

        formLayout6->setWidget(4, QFormLayout::LabelRole, label_19);

        label_20 = new QLabel(formLayoutWidget_10);
        label_20->setObjectName(QStringLiteral("label_20"));

        formLayout6->setWidget(5, QFormLayout::LabelRole, label_20);

        dtVistFirstTime = new QDateTimeEdit(formLayoutWidget_10);
        dtVistFirstTime->setObjectName(QStringLiteral("dtVistFirstTime"));
        dtVistFirstTime->setCalendarPopup(false);

        formLayout6->setWidget(0, QFormLayout::FieldRole, dtVistFirstTime);

        dtEntryTime = new QDateTimeEdit(formLayoutWidget_10);
        dtEntryTime->setObjectName(QStringLiteral("dtEntryTime"));
        dtEntryTime->setCalendarPopup(false);

        formLayout6->setWidget(1, QFormLayout::FieldRole, dtEntryTime);

        dtVistNewlyTime = new QDateTimeEdit(formLayoutWidget_10);
        dtVistNewlyTime->setObjectName(QStringLiteral("dtVistNewlyTime"));

        formLayout6->setWidget(2, QFormLayout::FieldRole, dtVistNewlyTime);

        cbxMembershipClass = new QComboBox(formLayoutWidget_10);
        cbxMembershipClass->setObjectName(QStringLiteral("cbxMembershipClass"));

        formLayout6->setWidget(3, QFormLayout::FieldRole, cbxMembershipClass);

        edtMembershipCardSurplus = new QLineEdit(formLayoutWidget_10);
        edtMembershipCardSurplus->setObjectName(QStringLiteral("edtMembershipCardSurplus"));
        edtMembershipCardSurplus->setStyleSheet(QStringLiteral(""));
        edtMembershipCardSurplus->setMaxLength(10);
        edtMembershipCardSurplus->setReadOnly(false);

        formLayout6->setWidget(4, QFormLayout::FieldRole, edtMembershipCardSurplus);

        edtConsumptionAmount = new QLineEdit(formLayoutWidget_10);
        edtConsumptionAmount->setObjectName(QStringLiteral("edtConsumptionAmount"));
        edtConsumptionAmount->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtConsumptionAmount->setMaxLength(10);
        edtConsumptionAmount->setReadOnly(true);

        formLayout6->setWidget(5, QFormLayout::FieldRole, edtConsumptionAmount);

        widget3 = new QWidget(QDlgEditNewInfo);
        widget3->setObjectName(QStringLiteral("widget3"));
        widget3->setGeometry(QRect(20, 150, 41, 21));
        widget9 = new QWidget(QDlgEditNewInfo);
        widget9->setObjectName(QStringLiteral("widget9"));
        widget9->setGeometry(QRect(240, 130, 41, 21));
        widget6 = new QWidget(QDlgEditNewInfo);
        widget6->setObjectName(QStringLiteral("widget6"));
        widget6->setGeometry(QRect(110, 130, 41, 21));
        lblDetail = new QLabel(QDlgEditNewInfo);
        lblDetail->setObjectName(QStringLiteral("lblDetail"));
        lblDetail->setGeometry(QRect(413, 10, 54, 12));
        lblDetail->setAlignment(Qt::AlignCenter);
        widget5 = new QWidget(QDlgEditNewInfo);
        widget5->setObjectName(QStringLiteral("widget5"));
        widget5->setGeometry(QRect(70, 130, 41, 21));
        formLayoutWidget_13 = new QWidget(QDlgEditNewInfo);
        formLayoutWidget_13->setObjectName(QStringLiteral("formLayoutWidget_13"));
        formLayoutWidget_13->setGeometry(QRect(560, 225, 311, 141));
        formLayout9 = new QFormLayout(formLayoutWidget_13);
        formLayout9->setObjectName(QStringLiteral("formLayout9"));
        formLayout9->setFieldGrowthPolicy(QFormLayout::AllNonFixedFieldsGrow);
        formLayout9->setContentsMargins(0, 0, 0, 0);
        label_31 = new QLabel(formLayoutWidget_13);
        label_31->setObjectName(QStringLiteral("label_31"));

        formLayout9->setWidget(0, QFormLayout::LabelRole, label_31);

        label_32 = new QLabel(formLayoutWidget_13);
        label_32->setObjectName(QStringLiteral("label_32"));

        formLayout9->setWidget(1, QFormLayout::LabelRole, label_32);

        label_33 = new QLabel(formLayoutWidget_13);
        label_33->setObjectName(QStringLiteral("label_33"));

        formLayout9->setWidget(2, QFormLayout::LabelRole, label_33);

        label_34 = new QLabel(formLayoutWidget_13);
        label_34->setObjectName(QStringLiteral("label_34"));

        formLayout9->setWidget(3, QFormLayout::LabelRole, label_34);

        dtMaintenanceNextDate = new QDateEdit(formLayoutWidget_13);
        dtMaintenanceNextDate->setObjectName(QStringLiteral("dtMaintenanceNextDate"));
        dtMaintenanceNextDate->setCalendarPopup(false);

        formLayout9->setWidget(2, QFormLayout::FieldRole, dtMaintenanceNextDate);

        dtMaintenanceFirstDate = new QDateEdit(formLayoutWidget_13);
        dtMaintenanceFirstDate->setObjectName(QStringLiteral("dtMaintenanceFirstDate"));

        formLayout9->setWidget(1, QFormLayout::FieldRole, dtMaintenanceFirstDate);

        cbxFeature = new QComboBox(formLayoutWidget_13);
        cbxFeature->setObjectName(QStringLiteral("cbxFeature"));

        formLayout9->setWidget(0, QFormLayout::FieldRole, cbxFeature);

        cbxState = new QComboBox(formLayoutWidget_13);
        cbxState->setObjectName(QStringLiteral("cbxState"));

        formLayout9->setWidget(3, QFormLayout::FieldRole, cbxState);

        edtVehicleID = new QLineEdit(formLayoutWidget_13);
        edtVehicleID->setObjectName(QStringLiteral("edtVehicleID"));
        edtVehicleID->setMaxLength(8);
        edtVehicleID->setReadOnly(false);

        formLayout9->setWidget(4, QFormLayout::FieldRole, edtVehicleID);

        widget10 = new QWidget(QDlgEditNewInfo);
        widget10->setObjectName(QStringLiteral("widget10"));
        widget10->setGeometry(QRect(30, 590, 841, 31));
        btnOK = new QPushButton(widget10);
        btnOK->setObjectName(QStringLiteral("btnOK"));
        btnOK->setGeometry(QRect(675, 0, 75, 23));
        btnCancel = new QPushButton(widget10);
        btnCancel->setObjectName(QStringLiteral("btnCancel"));
        btnCancel->setGeometry(QRect(765, 0, 75, 23));
        gridLayoutWidget_2 = new QWidget(widget10);
        gridLayoutWidget_2->setObjectName(QStringLiteral("gridLayoutWidget_2"));
        gridLayoutWidget_2->setGeometry(QRect(30, 10, 21, 16));
        gridLayout = new QGridLayout(gridLayoutWidget_2);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        widget7 = new QWidget(QDlgEditNewInfo);
        widget7->setObjectName(QStringLiteral("widget7"));
        widget7->setGeometry(QRect(150, 130, 41, 21));
        tabServiceRecord = new QTableView(QDlgEditNewInfo);
        tabServiceRecord->setObjectName(QStringLiteral("tabServiceRecord"));
        tabServiceRecord->setGeometry(QRect(10, 400, 861, 181));
        tabServiceRecord->setContextMenuPolicy(Qt::CustomContextMenu);
        tabServiceRecord->setSelectionMode(QAbstractItemView::SingleSelection);
        tabServiceRecord->setSelectionBehavior(QAbstractItemView::SelectRows);
        tabServiceRecord->verticalHeader()->setVisible(false);
        formLayoutWidget_8 = new QWidget(QDlgEditNewInfo);
        formLayoutWidget_8->setObjectName(QStringLiteral("formLayoutWidget_8"));
        formLayoutWidget_8->setGeometry(QRect(10, 50, 261, 152));
        formLayout4 = new QFormLayout(formLayoutWidget_8);
        formLayout4->setObjectName(QStringLiteral("formLayout4"));
        formLayout4->setFieldGrowthPolicy(QFormLayout::AllNonFixedFieldsGrow);
        formLayout4->setContentsMargins(0, 0, 0, 0);
        label = new QLabel(formLayoutWidget_8);
        label->setObjectName(QStringLiteral("label"));

        formLayout4->setWidget(0, QFormLayout::LabelRole, label);

        edtCustomerID = new QLineEdit(formLayoutWidget_8);
        edtCustomerID->setObjectName(QStringLiteral("edtCustomerID"));
        edtCustomerID->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtCustomerID->setReadOnly(true);
        edtCustomerID->setClearButtonEnabled(false);

        formLayout4->setWidget(0, QFormLayout::FieldRole, edtCustomerID);

        label_2 = new QLabel(formLayoutWidget_8);
        label_2->setObjectName(QStringLiteral("label_2"));

        formLayout4->setWidget(1, QFormLayout::LabelRole, label_2);

        edtName = new QLineEdit(formLayoutWidget_8);
        edtName->setObjectName(QStringLiteral("edtName"));
        edtName->setMaxLength(22);
        edtName->setReadOnly(false);

        formLayout4->setWidget(1, QFormLayout::FieldRole, edtName);

        label_3 = new QLabel(formLayoutWidget_8);
        label_3->setObjectName(QStringLiteral("label_3"));

        formLayout4->setWidget(2, QFormLayout::LabelRole, label_3);

        label_4 = new QLabel(formLayoutWidget_8);
        label_4->setObjectName(QStringLiteral("label_4"));

        formLayout4->setWidget(3, QFormLayout::LabelRole, label_4);

        label_5 = new QLabel(formLayoutWidget_8);
        label_5->setObjectName(QStringLiteral("label_5"));

        formLayout4->setWidget(4, QFormLayout::LabelRole, label_5);

        label_6 = new QLabel(formLayoutWidget_8);
        label_6->setObjectName(QStringLiteral("label_6"));

        formLayout4->setWidget(5, QFormLayout::LabelRole, label_6);

        cbxCustomerCategory = new QComboBox(formLayoutWidget_8);
        cbxCustomerCategory->setObjectName(QStringLiteral("cbxCustomerCategory"));

        formLayout4->setWidget(2, QFormLayout::FieldRole, cbxCustomerCategory);

        cbxDepartment = new QComboBox(formLayoutWidget_8);
        cbxDepartment->setObjectName(QStringLiteral("cbxDepartment"));

        formLayout4->setWidget(3, QFormLayout::FieldRole, cbxDepartment);

        cbxAccountExecutive = new QComboBox(formLayoutWidget_8);
        cbxAccountExecutive->setObjectName(QStringLiteral("cbxAccountExecutive"));

        formLayout4->setWidget(4, QFormLayout::FieldRole, cbxAccountExecutive);

        cbxCustomerSource = new QComboBox(formLayoutWidget_8);
        cbxCustomerSource->setObjectName(QStringLiteral("cbxCustomerSource"));

        formLayout4->setWidget(5, QFormLayout::FieldRole, cbxCustomerSource);

        cbxCustomerLevel = new QComboBox(QDlgEditNewInfo);
        cbxCustomerLevel->setObjectName(QStringLiteral("cbxCustomerLevel"));
        cbxCustomerLevel->setGeometry(QRect(660, 6, 206, 20));
        label_35 = new QLabel(QDlgEditNewInfo);
        label_35->setObjectName(QStringLiteral("label_35"));
        label_35->setGeometry(QRect(558, 6, 60, 20));
        QWidget::setTabOrder(edtCustomerID, edtName);
        QWidget::setTabOrder(edtName, cbxCustomerCategory);
        QWidget::setTabOrder(cbxCustomerCategory, cbxDepartment);
        QWidget::setTabOrder(cbxDepartment, cbxAccountExecutive);
        QWidget::setTabOrder(cbxAccountExecutive, cbxCustomerSource);
        QWidget::setTabOrder(cbxCustomerSource, edtMobilePhone);
        QWidget::setTabOrder(edtMobilePhone, edtLandline);
        QWidget::setTabOrder(edtLandline, edtAddress);
        QWidget::setTabOrder(edtAddress, cbxDistrict);
        QWidget::setTabOrder(cbxDistrict, edtCredentialsID);
        QWidget::setTabOrder(edtCredentialsID, dtVistFirstTime);
        QWidget::setTabOrder(dtVistFirstTime, dtEntryTime);
        QWidget::setTabOrder(dtEntryTime, dtVistNewlyTime);
        QWidget::setTabOrder(dtVistNewlyTime, cbxMembershipClass);
        QWidget::setTabOrder(cbxMembershipClass, edtMembershipCardSurplus);
        QWidget::setTabOrder(edtMembershipCardSurplus, edtConsumptionAmount);
        QWidget::setTabOrder(edtConsumptionAmount, edtPlateID);
        QWidget::setTabOrder(edtPlateID, edtMotorID);
        QWidget::setTabOrder(edtMotorID, cbxBrand);
        QWidget::setTabOrder(cbxBrand, cbxSeries);
        QWidget::setTabOrder(cbxSeries, dtBuyDate);
        QWidget::setTabOrder(dtBuyDate, edtOdometer);
        QWidget::setTabOrder(edtOdometer, cbxColor);
        QWidget::setTabOrder(cbxColor, dtAannualSurveyDate);
        QWidget::setTabOrder(dtAannualSurveyDate, dtCommercialInsuranceExpiration);
        QWidget::setTabOrder(dtCommercialInsuranceExpiration, dtMandatoryInsuranceExpiration);
        QWidget::setTabOrder(dtMandatoryInsuranceExpiration, edtVistCount);
        QWidget::setTabOrder(edtVistCount, cbxInsurer);
        QWidget::setTabOrder(cbxInsurer, cbxFeature);
        QWidget::setTabOrder(cbxFeature, tabServiceRecord);
        QWidget::setTabOrder(tabServiceRecord, dtMaintenanceFirstDate);
        QWidget::setTabOrder(dtMaintenanceFirstDate, dtMaintenanceNextDate);
        QWidget::setTabOrder(dtMaintenanceNextDate, cbxState);

        retranslateUi(QDlgEditNewInfo);

        QMetaObject::connectSlotsByName(QDlgEditNewInfo);
    } // setupUi

    void retranslateUi(QDialog *QDlgEditNewInfo)
    {
        QDlgEditNewInfo->setWindowTitle(QApplication::translate("QDlgEditNewInfo", "Dialog", 0));
#ifndef QT_NO_WHATSTHIS
        QDlgEditNewInfo->setWhatsThis(QApplication::translate("QDlgEditNewInfo", "\345\256\242\346\210\267", 0));
#endif // QT_NO_WHATSTHIS
        lblVehicleBasic->setText(QApplication::translate("QDlgEditNewInfo", "\350\275\246\350\276\206\345\237\272\346\234\254\344\277\241\346\201\257", 0));
        lblServiceRecord->setText(QApplication::translate("QDlgEditNewInfo", "\346\234\215\345\212\241\350\256\260\345\275\225", 0));
        label_7->setText(QApplication::translate("QDlgEditNewInfo", "\350\275\246\347\211\214\345\217\267", 0));
        label_8->setText(QApplication::translate("QDlgEditNewInfo", "\345\217\221\345\212\250\346\234\272\345\217\267", 0));
        label_21->setText(QApplication::translate("QDlgEditNewInfo", "\345\223\201\347\211\214", 0));
        label_22->setText(QApplication::translate("QDlgEditNewInfo", "\350\275\246\347\263\273", 0));
        label_23->setText(QApplication::translate("QDlgEditNewInfo", "\350\264\255\350\275\246\346\227\245", 0));
        label_24->setText(QApplication::translate("QDlgEditNewInfo", "\350\241\214\351\251\266\345\205\254\351\207\214\346\225\260", 0));
        edtOdometer->setInputMask(QString());
        dtBuyDate->setDisplayFormat(QApplication::translate("QDlgEditNewInfo", "yyyy-MM-dd", 0));
        lblSpace->setText(QString());
        label_9->setText(QApplication::translate("QDlgEditNewInfo", "\346\211\213\346\234\272\345\217\267\347\240\201", 0));
        edtMobilePhone->setInputMask(QApplication::translate("QDlgEditNewInfo", "99999999999", 0));
        edtMobilePhone->setText(QString());
        label_10->setText(QApplication::translate("QDlgEditNewInfo", "\345\233\272\345\256\232\345\217\267\347\240\201", 0));
        edtLandline->setInputMask(QApplication::translate("QDlgEditNewInfo", "99999999999", 0));
        label_11->setText(QApplication::translate("QDlgEditNewInfo", "\351\202\256\347\256\261\345\234\260\345\235\200", 0));
        label_12->setText(QApplication::translate("QDlgEditNewInfo", "\345\256\242\346\210\267\345\234\260\345\235\200", 0));
        label_13->setText(QApplication::translate("QDlgEditNewInfo", "\346\211\200\345\261\236\345\214\272\345\237\237", 0));
        label_14->setText(QApplication::translate("QDlgEditNewInfo", "\350\257\201\344\273\266\345\217\267\347\240\201", 0));
        label_25->setText(QApplication::translate("QDlgEditNewInfo", "\350\275\246\350\276\206\351\242\234\350\211\262", 0));
        label_26->setText(QApplication::translate("QDlgEditNewInfo", "\345\271\264\346\243\200\346\227\245\346\234\237", 0));
        label_27->setText(QApplication::translate("QDlgEditNewInfo", "\345\225\206\344\270\232\351\231\251\345\210\260\346\234\237\346\227\245", 0));
        label_28->setText(QApplication::translate("QDlgEditNewInfo", "\344\272\244\345\274\272\351\231\251\345\210\260\346\234\237\346\227\245", 0));
        label_29->setText(QApplication::translate("QDlgEditNewInfo", "\345\216\206\345\217\262\346\235\245\345\272\227\346\254\241\346\225\260", 0));
        edtVistCount->setInputMask(QString());
        label_30->setText(QApplication::translate("QDlgEditNewInfo", "\344\277\235\351\231\251\345\205\254\345\217\270", 0));
        dtCommercialInsuranceExpiration->setDisplayFormat(QApplication::translate("QDlgEditNewInfo", "yyyy-MM-dd", 0));
        dtMandatoryInsuranceExpiration->setDisplayFormat(QApplication::translate("QDlgEditNewInfo", "yyyy-MM-dd", 0));
        dtAannualSurveyDate->setDisplayFormat(QApplication::translate("QDlgEditNewInfo", "yyyy-MM-dd", 0));
        lblCustomerBasic->setText(QApplication::translate("QDlgEditNewInfo", "\345\256\242\346\210\267\345\237\272\346\234\254\344\277\241\346\201\257", 0));
        label_15->setText(QApplication::translate("QDlgEditNewInfo", "\345\210\235\346\254\241\346\235\245\350\256\277\346\227\245", 0));
        label_16->setText(QApplication::translate("QDlgEditNewInfo", "\345\273\272\346\241\243\346\227\245\346\234\237", 0));
        label_17->setText(QApplication::translate("QDlgEditNewInfo", "\346\234\200\350\277\221\344\270\200\346\254\241\345\210\260\345\272\227\346\227\266\351\227\264", 0));
        label_18->setText(QApplication::translate("QDlgEditNewInfo", "\344\274\232\345\221\230\345\215\241\347\261\273\345\210\253", 0));
        label_19->setText(QApplication::translate("QDlgEditNewInfo", "\344\274\232\345\221\230\345\215\241\344\275\231\351\242\235", 0));
        label_20->setText(QApplication::translate("QDlgEditNewInfo", "\345\216\206\345\217\262\346\266\210\350\264\271\351\207\221\351\242\235", 0));
        dtVistFirstTime->setDisplayFormat(QApplication::translate("QDlgEditNewInfo", "yyyy-MM-dd HH:mm:ss", 0));
        dtEntryTime->setDisplayFormat(QApplication::translate("QDlgEditNewInfo", "yyyy-MM-dd HH:mm:ss", 0));
        dtVistNewlyTime->setDisplayFormat(QApplication::translate("QDlgEditNewInfo", "yyyy-MM-dd HH:mm:ss", 0));
        lblDetail->setText(QApplication::translate("QDlgEditNewInfo", "\350\257\246\347\273\206\344\277\241\346\201\257", 0));
        label_31->setText(QApplication::translate("QDlgEditNewInfo", "\350\275\246\350\276\206\347\261\273\345\236\213", 0));
        label_32->setText(QApplication::translate("QDlgEditNewInfo", "\351\246\226\344\277\235\346\227\245\346\234\237", 0));
        label_33->setText(QApplication::translate("QDlgEditNewInfo", "\344\270\213\346\254\241\344\277\235\345\205\273\346\227\245\346\234\237", 0));
        label_34->setText(QApplication::translate("QDlgEditNewInfo", "\350\275\246\350\276\206\346\200\273\344\275\223\347\212\266\345\206\265", 0));
        dtMaintenanceNextDate->setDisplayFormat(QApplication::translate("QDlgEditNewInfo", "yyyy-MM-dd", 0));
        dtMaintenanceFirstDate->setDisplayFormat(QApplication::translate("QDlgEditNewInfo", "yyyy-MM-dd", 0));
        btnOK->setText(QApplication::translate("QDlgEditNewInfo", "\344\277\235\345\255\230", 0));
        btnCancel->setText(QApplication::translate("QDlgEditNewInfo", "\345\205\263\351\227\255", 0));
        label->setText(QApplication::translate("QDlgEditNewInfo", "\345\256\242\346\210\267\347\274\226\345\217\267", 0));
        edtCustomerID->setInputMask(QString());
        label_2->setText(QApplication::translate("QDlgEditNewInfo", "\345\256\242\346\210\267\345\220\215\347\247\260", 0));
        label_3->setText(QApplication::translate("QDlgEditNewInfo", "\345\256\242\346\210\267\347\261\273\345\210\253", 0));
        label_4->setText(QApplication::translate("QDlgEditNewInfo", "\351\232\266\345\261\236\351\203\250\351\227\250", 0));
        label_5->setText(QApplication::translate("QDlgEditNewInfo", "\345\256\242\346\210\267\344\270\223\345\221\230", 0));
        label_6->setText(QApplication::translate("QDlgEditNewInfo", "\345\256\242\346\210\267\346\235\245\346\272\220", 0));
        label_35->setText(QApplication::translate("QDlgEditNewInfo", "\345\256\242\346\210\267\347\272\247\345\210\253", 0));
    } // retranslateUi

};

namespace Ui {
    class QDlgEditNewInfo: public Ui_QDlgEditNewInfo {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QDLGEDITNEWINFO_H
