/********************************************************************************
** Form generated from reading UI file 'qdlgqueryinfo.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QDLGQUERYINFO_H
#define UI_QDLGQUERYINFO_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
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

class Ui_QDlgQueryInfo
{
public:
    QWidget *gridLayoutWidget;
    QGridLayout *mainGridLayout;
    QWidget *formLayoutWidget_11;
    QFormLayout *formLayout7;
    QLabel *label_7;
    QLineEdit *edtPlateID;
    QLabel *label_8;
    QLineEdit *edtMotorID;
    QLabel *label_21;
    QLineEdit *edtBrand;
    QLabel *label_22;
    QLineEdit *edtSeries;
    QLabel *label_23;
    QLineEdit *edtBuyDate;
    QLabel *label_24;
    QLineEdit *edtOdometer;
    QWidget *formLayoutWidget_9;
    QFormLayout *formLayout5;
    QLabel *label_9;
    QLineEdit *edtMobilePhone;
    QLabel *label_10;
    QLineEdit *edtLandline;
    QLabel *label_11;
    QLineEdit *edtEMail;
    QLabel *label_12;
    QLineEdit *edtAddress;
    QLabel *label_13;
    QLineEdit *edtDistrict;
    QLabel *label_14;
    QLineEdit *edtCredentialsID;
    QWidget *formLayoutWidget_12;
    QFormLayout *formLayout8;
    QLabel *label_25;
    QLineEdit *edtColor;
    QLabel *label_26;
    QLineEdit *edtAannualSurveyDate;
    QLabel *label_27;
    QLineEdit *edtCommercialInsuranceExpiration;
    QLabel *label_28;
    QLineEdit *edtMandatoryInsuranceExpiration;
    QLabel *label_29;
    QLineEdit *edtVistCount;
    QLabel *label_30;
    QLineEdit *edtInsurer;
    QWidget *formLayoutWidget_8;
    QFormLayout *formLayout4;
    QLabel *label;
    QLineEdit *edtCustomerID;
    QLabel *label_2;
    QLineEdit *edtName;
    QLabel *label_3;
    QLineEdit *edtCustomerCategory;
    QLabel *label_4;
    QLineEdit *edtDepartment;
    QLabel *label_5;
    QLineEdit *edtAccountExecutive;
    QLabel *label_6;
    QLineEdit *edtCustomerSource;
    QWidget *formLayoutWidget_10;
    QFormLayout *formLayout6;
    QLabel *label_15;
    QLineEdit *edtVistFirstTime;
    QLabel *label_16;
    QLineEdit *edtEntryTime;
    QLabel *label_17;
    QLineEdit *edtVistNewlyTime;
    QLabel *label_18;
    QLineEdit *edtMembershipClass;
    QLabel *label_19;
    QLineEdit *edtMembershipCardSurplus;
    QLabel *label_20;
    QLineEdit *edtConsumptionAmount;
    QWidget *formLayoutWidget_13;
    QFormLayout *formLayout9;
    QLabel *label_31;
    QLineEdit *edtFeature;
    QLabel *label_32;
    QLineEdit *edtMaintenanceFirstDate;
    QLabel *label_33;
    QLineEdit *edtMaintenanceNextDate;
    QLabel *label_34;
    QLineEdit *edtState;
    QWidget *formLayoutWidget_6;
    QFormLayout *formLayout2;
    QLabel *lblVehicleBasic;
    QFrame *lineVehicle;
    QWidget *formLayoutWidget_7;
    QFormLayout *formLayout3;
    QLabel *lblServiceRecord;
    QFrame *lineService;
    QWidget *formLayoutWidget_5;
    QFormLayout *formLayout1;
    QLabel *lblCustomerBasic;
    QFrame *lineCustomer;
    QWidget *widget1;
    QWidget *widget2;
    QWidget *widget3;
    QWidget *widget4;
    QWidget *widget5;
    QWidget *widget6;
    QWidget *widget7;
    QWidget *widget8;
    QWidget *widget9;
    QLabel *lblDetail;
    QWidget *widget10;
    QPushButton *pushButton;
    QWidget *gridLayoutWidget_2;
    QGridLayout *gridLayout;
    QLabel *lblSpace;
    QTableView *tabServiceRecord;

    void setupUi(QDialog *QDlgQueryInfo)
    {
        if (QDlgQueryInfo->objectName().isEmpty())
            QDlgQueryInfo->setObjectName(QStringLiteral("QDlgQueryInfo"));
        QDlgQueryInfo->resize(880, 618);
        QDlgQueryInfo->setMinimumSize(QSize(880, 618));
        QDlgQueryInfo->setMaximumSize(QSize(880, 618));
        gridLayoutWidget = new QWidget(QDlgQueryInfo);
        gridLayoutWidget->setObjectName(QStringLiteral("gridLayoutWidget"));
        gridLayoutWidget->setGeometry(QRect(60, 0, 21, 21));
        mainGridLayout = new QGridLayout(gridLayoutWidget);
        mainGridLayout->setObjectName(QStringLiteral("mainGridLayout"));
        mainGridLayout->setContentsMargins(0, 0, 0, 0);
        formLayoutWidget_11 = new QWidget(QDlgQueryInfo);
        formLayoutWidget_11->setObjectName(QStringLiteral("formLayoutWidget_11"));
        formLayoutWidget_11->setGeometry(QRect(10, 240, 261, 161));
        formLayout7 = new QFormLayout(formLayoutWidget_11);
        formLayout7->setObjectName(QStringLiteral("formLayout7"));
        formLayout7->setFieldGrowthPolicy(QFormLayout::AllNonFixedFieldsGrow);
        formLayout7->setContentsMargins(0, 0, 0, 0);
        label_7 = new QLabel(formLayoutWidget_11);
        label_7->setObjectName(QStringLiteral("label_7"));

        formLayout7->setWidget(0, QFormLayout::LabelRole, label_7);

        edtPlateID = new QLineEdit(formLayoutWidget_11);
        edtPlateID->setObjectName(QStringLiteral("edtPlateID"));
        edtPlateID->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtPlateID->setReadOnly(true);

        formLayout7->setWidget(0, QFormLayout::FieldRole, edtPlateID);

        label_8 = new QLabel(formLayoutWidget_11);
        label_8->setObjectName(QStringLiteral("label_8"));

        formLayout7->setWidget(1, QFormLayout::LabelRole, label_8);

        edtMotorID = new QLineEdit(formLayoutWidget_11);
        edtMotorID->setObjectName(QStringLiteral("edtMotorID"));
        edtMotorID->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtMotorID->setReadOnly(true);

        formLayout7->setWidget(1, QFormLayout::FieldRole, edtMotorID);

        label_21 = new QLabel(formLayoutWidget_11);
        label_21->setObjectName(QStringLiteral("label_21"));

        formLayout7->setWidget(2, QFormLayout::LabelRole, label_21);

        edtBrand = new QLineEdit(formLayoutWidget_11);
        edtBrand->setObjectName(QStringLiteral("edtBrand"));
        edtBrand->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtBrand->setReadOnly(true);

        formLayout7->setWidget(2, QFormLayout::FieldRole, edtBrand);

        label_22 = new QLabel(formLayoutWidget_11);
        label_22->setObjectName(QStringLiteral("label_22"));

        formLayout7->setWidget(3, QFormLayout::LabelRole, label_22);

        edtSeries = new QLineEdit(formLayoutWidget_11);
        edtSeries->setObjectName(QStringLiteral("edtSeries"));
        edtSeries->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtSeries->setReadOnly(true);

        formLayout7->setWidget(3, QFormLayout::FieldRole, edtSeries);

        label_23 = new QLabel(formLayoutWidget_11);
        label_23->setObjectName(QStringLiteral("label_23"));

        formLayout7->setWidget(4, QFormLayout::LabelRole, label_23);

        edtBuyDate = new QLineEdit(formLayoutWidget_11);
        edtBuyDate->setObjectName(QStringLiteral("edtBuyDate"));
        edtBuyDate->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtBuyDate->setReadOnly(true);

        formLayout7->setWidget(4, QFormLayout::FieldRole, edtBuyDate);

        label_24 = new QLabel(formLayoutWidget_11);
        label_24->setObjectName(QStringLiteral("label_24"));

        formLayout7->setWidget(5, QFormLayout::LabelRole, label_24);

        edtOdometer = new QLineEdit(formLayoutWidget_11);
        edtOdometer->setObjectName(QStringLiteral("edtOdometer"));
        edtOdometer->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtOdometer->setReadOnly(true);

        formLayout7->setWidget(5, QFormLayout::FieldRole, edtOdometer);

        formLayoutWidget_9 = new QWidget(QDlgQueryInfo);
        formLayoutWidget_9->setObjectName(QStringLiteral("formLayoutWidget_9"));
        formLayoutWidget_9->setGeometry(QRect(286, 50, 261, 161));
        formLayout5 = new QFormLayout(formLayoutWidget_9);
        formLayout5->setObjectName(QStringLiteral("formLayout5"));
        formLayout5->setFieldGrowthPolicy(QFormLayout::AllNonFixedFieldsGrow);
        formLayout5->setContentsMargins(0, 0, 0, 0);
        label_9 = new QLabel(formLayoutWidget_9);
        label_9->setObjectName(QStringLiteral("label_9"));

        formLayout5->setWidget(0, QFormLayout::LabelRole, label_9);

        edtMobilePhone = new QLineEdit(formLayoutWidget_9);
        edtMobilePhone->setObjectName(QStringLiteral("edtMobilePhone"));
        edtMobilePhone->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtMobilePhone->setReadOnly(true);

        formLayout5->setWidget(0, QFormLayout::FieldRole, edtMobilePhone);

        label_10 = new QLabel(formLayoutWidget_9);
        label_10->setObjectName(QStringLiteral("label_10"));

        formLayout5->setWidget(1, QFormLayout::LabelRole, label_10);

        edtLandline = new QLineEdit(formLayoutWidget_9);
        edtLandline->setObjectName(QStringLiteral("edtLandline"));
        edtLandline->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtLandline->setReadOnly(true);

        formLayout5->setWidget(1, QFormLayout::FieldRole, edtLandline);

        label_11 = new QLabel(formLayoutWidget_9);
        label_11->setObjectName(QStringLiteral("label_11"));

        formLayout5->setWidget(2, QFormLayout::LabelRole, label_11);

        edtEMail = new QLineEdit(formLayoutWidget_9);
        edtEMail->setObjectName(QStringLiteral("edtEMail"));
        edtEMail->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtEMail->setReadOnly(true);

        formLayout5->setWidget(2, QFormLayout::FieldRole, edtEMail);

        label_12 = new QLabel(formLayoutWidget_9);
        label_12->setObjectName(QStringLiteral("label_12"));

        formLayout5->setWidget(3, QFormLayout::LabelRole, label_12);

        edtAddress = new QLineEdit(formLayoutWidget_9);
        edtAddress->setObjectName(QStringLiteral("edtAddress"));
        edtAddress->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtAddress->setReadOnly(true);

        formLayout5->setWidget(3, QFormLayout::FieldRole, edtAddress);

        label_13 = new QLabel(formLayoutWidget_9);
        label_13->setObjectName(QStringLiteral("label_13"));

        formLayout5->setWidget(4, QFormLayout::LabelRole, label_13);

        edtDistrict = new QLineEdit(formLayoutWidget_9);
        edtDistrict->setObjectName(QStringLiteral("edtDistrict"));
        edtDistrict->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtDistrict->setReadOnly(true);

        formLayout5->setWidget(4, QFormLayout::FieldRole, edtDistrict);

        label_14 = new QLabel(formLayoutWidget_9);
        label_14->setObjectName(QStringLiteral("label_14"));

        formLayout5->setWidget(5, QFormLayout::LabelRole, label_14);

        edtCredentialsID = new QLineEdit(formLayoutWidget_9);
        edtCredentialsID->setObjectName(QStringLiteral("edtCredentialsID"));
        edtCredentialsID->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtCredentialsID->setReadOnly(true);

        formLayout5->setWidget(5, QFormLayout::FieldRole, edtCredentialsID);

        formLayoutWidget_12 = new QWidget(QDlgQueryInfo);
        formLayoutWidget_12->setObjectName(QStringLiteral("formLayoutWidget_12"));
        formLayoutWidget_12->setGeometry(QRect(285, 240, 261, 161));
        formLayout8 = new QFormLayout(formLayoutWidget_12);
        formLayout8->setObjectName(QStringLiteral("formLayout8"));
        formLayout8->setFieldGrowthPolicy(QFormLayout::AllNonFixedFieldsGrow);
        formLayout8->setContentsMargins(0, 0, 0, 0);
        label_25 = new QLabel(formLayoutWidget_12);
        label_25->setObjectName(QStringLiteral("label_25"));

        formLayout8->setWidget(0, QFormLayout::LabelRole, label_25);

        edtColor = new QLineEdit(formLayoutWidget_12);
        edtColor->setObjectName(QStringLiteral("edtColor"));
        edtColor->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtColor->setReadOnly(true);

        formLayout8->setWidget(0, QFormLayout::FieldRole, edtColor);

        label_26 = new QLabel(formLayoutWidget_12);
        label_26->setObjectName(QStringLiteral("label_26"));

        formLayout8->setWidget(1, QFormLayout::LabelRole, label_26);

        edtAannualSurveyDate = new QLineEdit(formLayoutWidget_12);
        edtAannualSurveyDate->setObjectName(QStringLiteral("edtAannualSurveyDate"));
        edtAannualSurveyDate->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtAannualSurveyDate->setReadOnly(true);

        formLayout8->setWidget(1, QFormLayout::FieldRole, edtAannualSurveyDate);

        label_27 = new QLabel(formLayoutWidget_12);
        label_27->setObjectName(QStringLiteral("label_27"));

        formLayout8->setWidget(2, QFormLayout::LabelRole, label_27);

        edtCommercialInsuranceExpiration = new QLineEdit(formLayoutWidget_12);
        edtCommercialInsuranceExpiration->setObjectName(QStringLiteral("edtCommercialInsuranceExpiration"));
        edtCommercialInsuranceExpiration->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtCommercialInsuranceExpiration->setReadOnly(true);

        formLayout8->setWidget(2, QFormLayout::FieldRole, edtCommercialInsuranceExpiration);

        label_28 = new QLabel(formLayoutWidget_12);
        label_28->setObjectName(QStringLiteral("label_28"));

        formLayout8->setWidget(3, QFormLayout::LabelRole, label_28);

        edtMandatoryInsuranceExpiration = new QLineEdit(formLayoutWidget_12);
        edtMandatoryInsuranceExpiration->setObjectName(QStringLiteral("edtMandatoryInsuranceExpiration"));
        edtMandatoryInsuranceExpiration->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtMandatoryInsuranceExpiration->setReadOnly(true);

        formLayout8->setWidget(3, QFormLayout::FieldRole, edtMandatoryInsuranceExpiration);

        label_29 = new QLabel(formLayoutWidget_12);
        label_29->setObjectName(QStringLiteral("label_29"));

        formLayout8->setWidget(4, QFormLayout::LabelRole, label_29);

        edtVistCount = new QLineEdit(formLayoutWidget_12);
        edtVistCount->setObjectName(QStringLiteral("edtVistCount"));
        edtVistCount->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtVistCount->setReadOnly(true);

        formLayout8->setWidget(4, QFormLayout::FieldRole, edtVistCount);

        label_30 = new QLabel(formLayoutWidget_12);
        label_30->setObjectName(QStringLiteral("label_30"));

        formLayout8->setWidget(5, QFormLayout::LabelRole, label_30);

        edtInsurer = new QLineEdit(formLayoutWidget_12);
        edtInsurer->setObjectName(QStringLiteral("edtInsurer"));
        edtInsurer->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtInsurer->setReadOnly(true);

        formLayout8->setWidget(5, QFormLayout::FieldRole, edtInsurer);

        formLayoutWidget_8 = new QWidget(QDlgQueryInfo);
        formLayoutWidget_8->setObjectName(QStringLiteral("formLayoutWidget_8"));
        formLayoutWidget_8->setGeometry(QRect(10, 50, 261, 161));
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

        formLayout4->setWidget(0, QFormLayout::FieldRole, edtCustomerID);

        label_2 = new QLabel(formLayoutWidget_8);
        label_2->setObjectName(QStringLiteral("label_2"));

        formLayout4->setWidget(1, QFormLayout::LabelRole, label_2);

        edtName = new QLineEdit(formLayoutWidget_8);
        edtName->setObjectName(QStringLiteral("edtName"));
        edtName->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtName->setReadOnly(true);

        formLayout4->setWidget(1, QFormLayout::FieldRole, edtName);

        label_3 = new QLabel(formLayoutWidget_8);
        label_3->setObjectName(QStringLiteral("label_3"));

        formLayout4->setWidget(2, QFormLayout::LabelRole, label_3);

        edtCustomerCategory = new QLineEdit(formLayoutWidget_8);
        edtCustomerCategory->setObjectName(QStringLiteral("edtCustomerCategory"));
        edtCustomerCategory->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtCustomerCategory->setReadOnly(true);

        formLayout4->setWidget(2, QFormLayout::FieldRole, edtCustomerCategory);

        label_4 = new QLabel(formLayoutWidget_8);
        label_4->setObjectName(QStringLiteral("label_4"));

        formLayout4->setWidget(3, QFormLayout::LabelRole, label_4);

        edtDepartment = new QLineEdit(formLayoutWidget_8);
        edtDepartment->setObjectName(QStringLiteral("edtDepartment"));
        edtDepartment->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtDepartment->setReadOnly(true);

        formLayout4->setWidget(3, QFormLayout::FieldRole, edtDepartment);

        label_5 = new QLabel(formLayoutWidget_8);
        label_5->setObjectName(QStringLiteral("label_5"));

        formLayout4->setWidget(4, QFormLayout::LabelRole, label_5);

        edtAccountExecutive = new QLineEdit(formLayoutWidget_8);
        edtAccountExecutive->setObjectName(QStringLiteral("edtAccountExecutive"));
        edtAccountExecutive->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtAccountExecutive->setReadOnly(true);

        formLayout4->setWidget(4, QFormLayout::FieldRole, edtAccountExecutive);

        label_6 = new QLabel(formLayoutWidget_8);
        label_6->setObjectName(QStringLiteral("label_6"));

        formLayout4->setWidget(5, QFormLayout::LabelRole, label_6);

        edtCustomerSource = new QLineEdit(formLayoutWidget_8);
        edtCustomerSource->setObjectName(QStringLiteral("edtCustomerSource"));
        edtCustomerSource->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtCustomerSource->setReadOnly(true);

        formLayout4->setWidget(5, QFormLayout::FieldRole, edtCustomerSource);

        formLayoutWidget_10 = new QWidget(QDlgQueryInfo);
        formLayoutWidget_10->setObjectName(QStringLiteral("formLayoutWidget_10"));
        formLayoutWidget_10->setGeometry(QRect(560, 50, 310, 161));
        formLayout6 = new QFormLayout(formLayoutWidget_10);
        formLayout6->setObjectName(QStringLiteral("formLayout6"));
        formLayout6->setFieldGrowthPolicy(QFormLayout::AllNonFixedFieldsGrow);
        formLayout6->setContentsMargins(0, 0, 0, 0);
        label_15 = new QLabel(formLayoutWidget_10);
        label_15->setObjectName(QStringLiteral("label_15"));

        formLayout6->setWidget(0, QFormLayout::LabelRole, label_15);

        edtVistFirstTime = new QLineEdit(formLayoutWidget_10);
        edtVistFirstTime->setObjectName(QStringLiteral("edtVistFirstTime"));
        edtVistFirstTime->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtVistFirstTime->setReadOnly(true);

        formLayout6->setWidget(0, QFormLayout::FieldRole, edtVistFirstTime);

        label_16 = new QLabel(formLayoutWidget_10);
        label_16->setObjectName(QStringLiteral("label_16"));

        formLayout6->setWidget(1, QFormLayout::LabelRole, label_16);

        edtEntryTime = new QLineEdit(formLayoutWidget_10);
        edtEntryTime->setObjectName(QStringLiteral("edtEntryTime"));
        edtEntryTime->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtEntryTime->setReadOnly(true);

        formLayout6->setWidget(1, QFormLayout::FieldRole, edtEntryTime);

        label_17 = new QLabel(formLayoutWidget_10);
        label_17->setObjectName(QStringLiteral("label_17"));

        formLayout6->setWidget(2, QFormLayout::LabelRole, label_17);

        edtVistNewlyTime = new QLineEdit(formLayoutWidget_10);
        edtVistNewlyTime->setObjectName(QStringLiteral("edtVistNewlyTime"));
        edtVistNewlyTime->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtVistNewlyTime->setReadOnly(true);

        formLayout6->setWidget(2, QFormLayout::FieldRole, edtVistNewlyTime);

        label_18 = new QLabel(formLayoutWidget_10);
        label_18->setObjectName(QStringLiteral("label_18"));

        formLayout6->setWidget(3, QFormLayout::LabelRole, label_18);

        edtMembershipClass = new QLineEdit(formLayoutWidget_10);
        edtMembershipClass->setObjectName(QStringLiteral("edtMembershipClass"));
        edtMembershipClass->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtMembershipClass->setReadOnly(true);

        formLayout6->setWidget(3, QFormLayout::FieldRole, edtMembershipClass);

        label_19 = new QLabel(formLayoutWidget_10);
        label_19->setObjectName(QStringLiteral("label_19"));

        formLayout6->setWidget(4, QFormLayout::LabelRole, label_19);

        edtMembershipCardSurplus = new QLineEdit(formLayoutWidget_10);
        edtMembershipCardSurplus->setObjectName(QStringLiteral("edtMembershipCardSurplus"));
        edtMembershipCardSurplus->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtMembershipCardSurplus->setReadOnly(true);

        formLayout6->setWidget(4, QFormLayout::FieldRole, edtMembershipCardSurplus);

        label_20 = new QLabel(formLayoutWidget_10);
        label_20->setObjectName(QStringLiteral("label_20"));

        formLayout6->setWidget(5, QFormLayout::LabelRole, label_20);

        edtConsumptionAmount = new QLineEdit(formLayoutWidget_10);
        edtConsumptionAmount->setObjectName(QStringLiteral("edtConsumptionAmount"));
        edtConsumptionAmount->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtConsumptionAmount->setReadOnly(true);

        formLayout6->setWidget(5, QFormLayout::FieldRole, edtConsumptionAmount);

        formLayoutWidget_13 = new QWidget(QDlgQueryInfo);
        formLayoutWidget_13->setObjectName(QStringLiteral("formLayoutWidget_13"));
        formLayoutWidget_13->setGeometry(QRect(560, 240, 310, 161));
        formLayout9 = new QFormLayout(formLayoutWidget_13);
        formLayout9->setObjectName(QStringLiteral("formLayout9"));
        formLayout9->setFieldGrowthPolicy(QFormLayout::AllNonFixedFieldsGrow);
        formLayout9->setContentsMargins(0, 0, 0, 0);
        label_31 = new QLabel(formLayoutWidget_13);
        label_31->setObjectName(QStringLiteral("label_31"));

        formLayout9->setWidget(0, QFormLayout::LabelRole, label_31);

        edtFeature = new QLineEdit(formLayoutWidget_13);
        edtFeature->setObjectName(QStringLiteral("edtFeature"));
        edtFeature->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtFeature->setReadOnly(true);

        formLayout9->setWidget(0, QFormLayout::FieldRole, edtFeature);

        label_32 = new QLabel(formLayoutWidget_13);
        label_32->setObjectName(QStringLiteral("label_32"));

        formLayout9->setWidget(1, QFormLayout::LabelRole, label_32);

        edtMaintenanceFirstDate = new QLineEdit(formLayoutWidget_13);
        edtMaintenanceFirstDate->setObjectName(QStringLiteral("edtMaintenanceFirstDate"));
        edtMaintenanceFirstDate->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtMaintenanceFirstDate->setReadOnly(true);

        formLayout9->setWidget(1, QFormLayout::FieldRole, edtMaintenanceFirstDate);

        label_33 = new QLabel(formLayoutWidget_13);
        label_33->setObjectName(QStringLiteral("label_33"));

        formLayout9->setWidget(2, QFormLayout::LabelRole, label_33);

        edtMaintenanceNextDate = new QLineEdit(formLayoutWidget_13);
        edtMaintenanceNextDate->setObjectName(QStringLiteral("edtMaintenanceNextDate"));
        edtMaintenanceNextDate->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtMaintenanceNextDate->setReadOnly(true);

        formLayout9->setWidget(2, QFormLayout::FieldRole, edtMaintenanceNextDate);

        label_34 = new QLabel(formLayoutWidget_13);
        label_34->setObjectName(QStringLiteral("label_34"));

        formLayout9->setWidget(3, QFormLayout::LabelRole, label_34);

        edtState = new QLineEdit(formLayoutWidget_13);
        edtState->setObjectName(QStringLiteral("edtState"));
        edtState->setStyleSheet(QStringLiteral("background-color: rgb(229, 229, 229);"));
        edtState->setReadOnly(true);

        formLayout9->setWidget(3, QFormLayout::FieldRole, edtState);

        formLayoutWidget_6 = new QWidget(QDlgQueryInfo);
        formLayoutWidget_6->setObjectName(QStringLiteral("formLayoutWidget_6"));
        formLayoutWidget_6->setGeometry(QRect(10, 220, 860, 16));
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

        formLayoutWidget_7 = new QWidget(QDlgQueryInfo);
        formLayoutWidget_7->setObjectName(QStringLiteral("formLayoutWidget_7"));
        formLayoutWidget_7->setGeometry(QRect(10, 410, 860, 16));
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

        formLayoutWidget_5 = new QWidget(QDlgQueryInfo);
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

        widget1 = new QWidget(QDlgQueryInfo);
        widget1->setObjectName(QStringLiteral("widget1"));
        widget1->setGeometry(QRect(10, 90, 41, 21));
        widget2 = new QWidget(QDlgQueryInfo);
        widget2->setObjectName(QStringLiteral("widget2"));
        widget2->setGeometry(QRect(10, 120, 41, 21));
        widget3 = new QWidget(QDlgQueryInfo);
        widget3->setObjectName(QStringLiteral("widget3"));
        widget3->setGeometry(QRect(10, 150, 41, 21));
        widget4 = new QWidget(QDlgQueryInfo);
        widget4->setObjectName(QStringLiteral("widget4"));
        widget4->setGeometry(QRect(10, 180, 41, 21));
        widget5 = new QWidget(QDlgQueryInfo);
        widget5->setObjectName(QStringLiteral("widget5"));
        widget5->setGeometry(QRect(60, 130, 41, 21));
        widget6 = new QWidget(QDlgQueryInfo);
        widget6->setObjectName(QStringLiteral("widget6"));
        widget6->setGeometry(QRect(100, 130, 41, 21));
        widget7 = new QWidget(QDlgQueryInfo);
        widget7->setObjectName(QStringLiteral("widget7"));
        widget7->setGeometry(QRect(140, 130, 41, 21));
        widget8 = new QWidget(QDlgQueryInfo);
        widget8->setObjectName(QStringLiteral("widget8"));
        widget8->setGeometry(QRect(190, 130, 41, 21));
        widget9 = new QWidget(QDlgQueryInfo);
        widget9->setObjectName(QStringLiteral("widget9"));
        widget9->setGeometry(QRect(230, 130, 41, 21));
        lblDetail = new QLabel(QDlgQueryInfo);
        lblDetail->setObjectName(QStringLiteral("lblDetail"));
        lblDetail->setGeometry(QRect(413, 10, 54, 12));
        lblDetail->setAlignment(Qt::AlignCenter);
        widget10 = new QWidget(QDlgQueryInfo);
        widget10->setObjectName(QStringLiteral("widget10"));
        widget10->setGeometry(QRect(20, 500, 841, 31));
        pushButton = new QPushButton(widget10);
        pushButton->setObjectName(QStringLiteral("pushButton"));
        pushButton->setGeometry(QRect(51, 40, 75, 23));
        gridLayoutWidget_2 = new QWidget(QDlgQueryInfo);
        gridLayoutWidget_2->setObjectName(QStringLiteral("gridLayoutWidget_2"));
        gridLayoutWidget_2->setGeometry(QRect(50, 550, 21, 16));
        gridLayout = new QGridLayout(gridLayoutWidget_2);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        lblSpace = new QLabel(QDlgQueryInfo);
        lblSpace->setObjectName(QStringLiteral("lblSpace"));
        lblSpace->setGeometry(QRect(100, 470, 600, 12));
        tabServiceRecord = new QTableView(QDlgQueryInfo);
        tabServiceRecord->setObjectName(QStringLiteral("tabServiceRecord"));
        tabServiceRecord->setGeometry(QRect(10, 430, 860, 180));
        tabServiceRecord->setSelectionMode(QAbstractItemView::SingleSelection);
        tabServiceRecord->setSelectionBehavior(QAbstractItemView::SelectRows);
        tabServiceRecord->setGridStyle(Qt::SolidLine);
        tabServiceRecord->setSortingEnabled(false);
        tabServiceRecord->verticalHeader()->setVisible(false);
        QWidget::setTabOrder(edtCustomerID, edtName);
        QWidget::setTabOrder(edtName, edtCustomerCategory);
        QWidget::setTabOrder(edtCustomerCategory, edtDepartment);
        QWidget::setTabOrder(edtDepartment, edtAccountExecutive);
        QWidget::setTabOrder(edtAccountExecutive, edtCustomerSource);
        QWidget::setTabOrder(edtCustomerSource, edtMobilePhone);
        QWidget::setTabOrder(edtMobilePhone, edtLandline);
        QWidget::setTabOrder(edtLandline, edtEMail);
        QWidget::setTabOrder(edtEMail, edtAddress);
        QWidget::setTabOrder(edtAddress, edtDistrict);
        QWidget::setTabOrder(edtDistrict, edtCredentialsID);
        QWidget::setTabOrder(edtCredentialsID, edtVistFirstTime);
        QWidget::setTabOrder(edtVistFirstTime, edtEntryTime);
        QWidget::setTabOrder(edtEntryTime, edtVistNewlyTime);
        QWidget::setTabOrder(edtVistNewlyTime, edtMembershipClass);
        QWidget::setTabOrder(edtMembershipClass, edtMembershipCardSurplus);
        QWidget::setTabOrder(edtMembershipCardSurplus, edtConsumptionAmount);
        QWidget::setTabOrder(edtConsumptionAmount, edtPlateID);
        QWidget::setTabOrder(edtPlateID, edtMotorID);
        QWidget::setTabOrder(edtMotorID, edtBrand);
        QWidget::setTabOrder(edtBrand, edtSeries);
        QWidget::setTabOrder(edtSeries, edtBuyDate);
        QWidget::setTabOrder(edtBuyDate, edtOdometer);
        QWidget::setTabOrder(edtOdometer, edtColor);
        QWidget::setTabOrder(edtColor, edtAannualSurveyDate);
        QWidget::setTabOrder(edtAannualSurveyDate, edtCommercialInsuranceExpiration);
        QWidget::setTabOrder(edtCommercialInsuranceExpiration, edtMandatoryInsuranceExpiration);
        QWidget::setTabOrder(edtMandatoryInsuranceExpiration, edtVistCount);
        QWidget::setTabOrder(edtVistCount, edtInsurer);
        QWidget::setTabOrder(edtInsurer, edtFeature);
        QWidget::setTabOrder(edtFeature, edtMaintenanceFirstDate);
        QWidget::setTabOrder(edtMaintenanceFirstDate, edtMaintenanceNextDate);
        QWidget::setTabOrder(edtMaintenanceNextDate, edtState);
        QWidget::setTabOrder(edtState, tabServiceRecord);
        QWidget::setTabOrder(tabServiceRecord, pushButton);

        retranslateUi(QDlgQueryInfo);

        QMetaObject::connectSlotsByName(QDlgQueryInfo);
    } // setupUi

    void retranslateUi(QDialog *QDlgQueryInfo)
    {
        QDlgQueryInfo->setWindowTitle(QApplication::translate("QDlgQueryInfo", "\346\237\245\347\234\213\345\256\242\346\210\267", 0));
        label_7->setText(QApplication::translate("QDlgQueryInfo", "\350\275\246\347\211\214\345\217\267", 0));
        label_8->setText(QApplication::translate("QDlgQueryInfo", "\345\217\221\345\212\250\346\234\272\345\217\267", 0));
        label_21->setText(QApplication::translate("QDlgQueryInfo", "\345\223\201\347\211\214", 0));
        label_22->setText(QApplication::translate("QDlgQueryInfo", "\350\275\246\347\263\273", 0));
        label_23->setText(QApplication::translate("QDlgQueryInfo", "\350\264\255\350\275\246\346\227\245", 0));
        label_24->setText(QApplication::translate("QDlgQueryInfo", "\350\241\214\351\251\266\345\205\254\351\207\214\346\225\260", 0));
        label_9->setText(QApplication::translate("QDlgQueryInfo", "\346\211\213\346\234\272\345\217\267\347\240\201", 0));
        label_10->setText(QApplication::translate("QDlgQueryInfo", "\345\233\272\345\256\232\345\217\267\347\240\201", 0));
        label_11->setText(QApplication::translate("QDlgQueryInfo", "\351\202\256\347\256\261\345\234\260\345\235\200", 0));
        label_12->setText(QApplication::translate("QDlgQueryInfo", "\345\256\242\346\210\267\345\234\260\345\235\200", 0));
        label_13->setText(QApplication::translate("QDlgQueryInfo", "\346\211\200\345\261\236\345\214\272\345\237\237", 0));
        label_14->setText(QApplication::translate("QDlgQueryInfo", "\350\257\201\344\273\266\345\217\267\347\240\201", 0));
        label_25->setText(QApplication::translate("QDlgQueryInfo", "\350\275\246\350\276\206\351\242\234\350\211\262", 0));
        label_26->setText(QApplication::translate("QDlgQueryInfo", "\345\271\264\346\243\200\346\227\245\346\234\237", 0));
        label_27->setText(QApplication::translate("QDlgQueryInfo", "\345\225\206\344\270\232\351\231\251\345\210\260\346\234\237\346\227\245", 0));
        label_28->setText(QApplication::translate("QDlgQueryInfo", "\344\272\244\345\274\272\351\231\251\345\210\260\346\234\237\346\227\245", 0));
        label_29->setText(QApplication::translate("QDlgQueryInfo", "\345\216\206\345\217\262\346\235\245\345\272\227\346\254\241\346\225\260", 0));
        label_30->setText(QApplication::translate("QDlgQueryInfo", "\344\277\235\351\231\251\345\205\254\345\217\270", 0));
        label->setText(QApplication::translate("QDlgQueryInfo", "\345\256\242\346\210\267\347\274\226\345\217\267", 0));
        label_2->setText(QApplication::translate("QDlgQueryInfo", "\345\256\242\346\210\267\345\220\215\347\247\260", 0));
        label_3->setText(QApplication::translate("QDlgQueryInfo", "\345\256\242\346\210\267\347\261\273\345\210\253", 0));
        label_4->setText(QApplication::translate("QDlgQueryInfo", "\351\232\266\345\261\236\351\203\250\351\227\250", 0));
        label_5->setText(QApplication::translate("QDlgQueryInfo", "\345\256\242\346\210\267\344\270\223\345\221\230", 0));
        label_6->setText(QApplication::translate("QDlgQueryInfo", "\345\256\242\346\210\267\346\235\245\346\272\220", 0));
        label_15->setText(QApplication::translate("QDlgQueryInfo", "\345\210\235\346\254\241\346\235\245\350\256\277\346\227\245", 0));
        label_16->setText(QApplication::translate("QDlgQueryInfo", "\345\273\272\346\241\243\346\227\245\346\234\237", 0));
        label_17->setText(QApplication::translate("QDlgQueryInfo", "\346\234\200\350\277\221\344\270\200\346\254\241\345\210\260\345\272\227\346\227\266\351\227\264", 0));
        label_18->setText(QApplication::translate("QDlgQueryInfo", "\344\274\232\345\221\230\345\215\241\347\261\273\345\210\253", 0));
        label_19->setText(QApplication::translate("QDlgQueryInfo", "\344\274\232\345\221\230\345\215\241\344\275\231\351\242\235\346\210\226\346\254\241\346\225\260", 0));
        label_20->setText(QApplication::translate("QDlgQueryInfo", "\345\216\206\345\217\262\346\266\210\350\264\271\351\207\221\351\242\235", 0));
        label_31->setText(QApplication::translate("QDlgQueryInfo", "\350\275\246\350\276\206\347\261\273\345\236\213", 0));
        label_32->setText(QApplication::translate("QDlgQueryInfo", "\351\246\226\344\277\235\346\227\245\346\234\237", 0));
        label_33->setText(QApplication::translate("QDlgQueryInfo", "\344\270\213\346\254\241\344\277\235\345\205\273\346\227\245\346\234\237", 0));
        label_34->setText(QApplication::translate("QDlgQueryInfo", "\350\275\246\350\276\206\346\200\273\344\275\223\347\212\266\345\206\265", 0));
        lblVehicleBasic->setText(QApplication::translate("QDlgQueryInfo", "\350\275\246\350\276\206\345\237\272\346\234\254\344\277\241\346\201\257", 0));
        lblServiceRecord->setText(QApplication::translate("QDlgQueryInfo", "\346\234\215\345\212\241\350\256\260\345\275\225", 0));
        lblCustomerBasic->setText(QApplication::translate("QDlgQueryInfo", "\345\256\242\346\210\267\345\237\272\346\234\254\344\277\241\346\201\257", 0));
        lblDetail->setText(QApplication::translate("QDlgQueryInfo", "\350\257\246\347\273\206\344\277\241\346\201\257", 0));
        pushButton->setText(QApplication::translate("QDlgQueryInfo", "PushButton", 0));
        lblSpace->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class QDlgQueryInfo: public Ui_QDlgQueryInfo {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QDLGQUERYINFO_H
