#ifndef COMMONDATA_H
#define COMMONDATA_H
#include <QString>
#include <QHash>
#include <QtWidgets/QWidget>
namespace CommonData {
    typedef struct __TabCustomerInfoField {
        QString strCustomerID;
        QString strName;
        QString strCredentialsID;
        QString strAddress;
        QString strDistrict;
        QString strMobilePhone;
        QString strLandline;
        QString strEMail;
        QString strCustomerSource;
        QString strCustomerDepartment;
        QString strAccountExecutive;
        QString strVistFirstTime;
        QString strEntryTime;
        QString strCustomerCategory;
        QString strVistNewlyTime;
        QString strConsumptionAmount;
        QString strMembershipClass;
        QString strMembershipCardSurplus;
        QString strCustomerState;

        QString strPlateID;
        QString strBrand;
        QString strSeries;
        QString strColor;
        QString strFeature;
        QString strBuyDate;
        QString strMaintenanceFirstDate;
        QString strMaintenanceNextDate;
        QString strAannualSurveyDate;
        QString strCommercialInsuranceExpiration;
        QString strMandatoryInsuranceExpiration;
        QString strInsurer;
        QString strVistCount;
        QString strVehicleState;
        QString strMotorID;
        QString strFrameID;
        QString strOdometer;

        QString strServiceID;
        QString strCategory;
        QString strInsuranceAmount;
        QString strClaimAmount;
        QString strSettlementStyle;
        QString strMaintanceStartTime;
        QString strMaintanceEndTime;
        QString strPickupTime;
        QString strSubCategory;
        QString strServiceDepartment;
        QString strMaintanceman;
        QString strServiceConsumptionAmount;

        QString strTableWidget;

        __TabCustomerInfoField( )
        {
            strCustomerID = "CustomerID";
            strName = "Name";
            strCredentialsID = "CredentialsID";
            strAddress = "Address";
            strDistrict = "District";
            strMobilePhone = "MobilePhone";
            strLandline = "Landline";
            strEMail = "EMail";
            strCustomerSource = "CustomerSource";
            strCustomerDepartment = "CustomerDepartment";
            strAccountExecutive = "AccountExecutive";
            strVistFirstTime = "VistFirstTime";
            strEntryTime = "EntryTime";
            strCustomerCategory = "CustomerCategory";
            strVistNewlyTime = "VistNewlyTime";
            strConsumptionAmount = "ConsumptionAmount";
            strMembershipClass = "MembershipClass";
            strMembershipCardSurplus = "MembershipCardSurplus";
            strCustomerState = "CustomerState";

            strPlateID = "PlateID";
            strBrand = "Brand";
            strSeries = "Series";
            strColor = "Color ";
            strFeature = "Feature";
            strBuyDate = "BuyDate";
            strMaintenanceFirstDate = "MaintenanceFirstDate";
            strMaintenanceNextDate = "MaintenanceNextDate";
            strAannualSurveyDate = "AannualSurveyDate";
            strCommercialInsuranceExpiration = "CommercialInsuranceExpiration";
            strMandatoryInsuranceExpiration = "MandatoryInsuranceExpiration";
            strInsurer = "Insurer";
            strVistCount = "VistCount";
            strVehicleState = "VehicleState";
            strMotorID = "MotorID";
            strFrameID = "FrameID";
            strOdometer = "Odometer";

            strServiceID = "ServiceID";
            strCategory = "Category";
            strInsuranceAmount = "InsuranceAmount";
            strClaimAmount = "ClaimAmount";
            strSettlementStyle = "SettlementStyle";
            strMaintanceStartTime = "MaintanceStartTime";
            strMaintanceEndTime = "MaintanceEndTime";
            strPickupTime = "PickupTime";
            strSubCategory = "SubCategory";
            strServiceDepartment = "ServiceDepartment";
            strMaintanceman = "Maintanceman";
            strServiceConsumptionAmount = "ServiceConsumptionAmount";

            strTableWidget = "TableWidget";
        }
    } TabCustomerInfoField;

    typedef QHash< QString, QWidget* >  QStringWidgetHash;

    typedef struct __SQLStatement {
        QString strDeleteCustomerByID;
        QString strDeleteAllCustomer;

        QString strDeleteVehicleByPlate;
        QString strDeleteAllVehicle;

        QString strDeleteServiceByID;
        QString strDeleteAllService;

        QString strSelectCutomerInfoPlateID;
        QString strSelectCutomerInfoCustomerID;

        QString strSelectNewCustomer;
        QString strSelectUpdatingCustomer;
        QString strSelectAllCustomer;

        QString strUpdateCustomer;
        QString strUpdateVehicle;
        QString strUpdateService;
        QString strUpdateSubService;

        QString strInsertCustomer;
        QString strInsertVehicle;
        QString strInsertService;
        QString strInsertSubService;

        QString strInsertCustomerPattern;
        QString strInsertVehiclePattern;
        QString strInsertServicePattern;
        QString strInsertSubServicePattern;

        __SQLStatement( )
        {
            strDeleteCustomerByID = "Delete From TabCustomerInfo Where CustomerID = %1";
            strDeleteAllCustomer = "Delete From TabCustomerInfo";

            strDeleteVehicleByPlate = "Delete From TabVehicleInfo Where PlateID = '%1'";
            strDeleteAllVehicle = "Delete From TabVehicleInfo";

            strDeleteServiceByID = "Delete From TabServiceRecord Where ServiceID = %1";
            strDeleteAllService = "Delete From TabServiceRecord";

            strSelectCutomerInfoPlateID = "Select * From ViwCustomerAllInfo Where PlateID = '%1'";
            strSelectCutomerInfoCustomerID = "Select * From ViwCustomerAllInfo Where CustomerID = %1";

            strSelectNewCustomer = "Select * from ViwNewCustomer";
            strSelectUpdatingCustomer = "Select * from ViwUpdatingCustomer";
            strSelectAllCustomer = "Select * from TabCustomerInfo";

            strUpdateCustomer = "Update TabCustomerInfo Set Name = '%1',";
            strUpdateVehicle = "Update TabVehicle Set";
            strUpdateService = "Update TabServiceRecord Set";
            strUpdateSubService = "Update TabSubServiceRecord Set";

            strInsertCustomer = "Insert Into TabCustomerInfo( \
                    Name,CredentialsID, Address, District, MobilePhone,\
                    Landline, EMail, CustomerSource, CustomerDepartment, \
                    AccountExecutive, VistFirstTime, EntryTime,\
                    CustomerCategory, VistNewlyTime, ConsumptionAmount,\
                    MembershipClass, MembershipCardSurplus,\
                    CustomerState ) Values ";
            //////////////////////////////////
            strInsertVehicle = "Insert Into TabVehicleInfo( \
                    PlateID, CustomerID, Brand, Series, Color, Feature, \
                    BuyDate, MaintenanceFirstDate, MaintenanceNextDate, \
                    AannualSurveyDate, CommercialInsuranceExpiration, \
                    MandatoryInsuranceExpiration, Insurer, VistCount, \
                    VehicleState, MotorID, Odometer ) Values ";
            ////////////////////////////////
            strInsertService = "Insert Into TabServiceRecord( \
                    PlateID, Category, InsuranceAmount, ClaimAmount, \
                    SettlementStyle, MaintanceStartTime, \
                    MaintanceEndTime, PickupTime ) Values ";
            ////////////////////////////////
            strInsertSubService = "Insert Into TabSubServiceRecord( \
                    ServiceID, SubCategory, ServiceDepartment, \
                    Maintanceman, ServiceConsumptionAmount ) Values ";

            strInsertCustomerPattern = "( '%s', '%s', '%s', %d, \
                                          '%s', '%s', '%s', %d, \
                                          %d, %d,'%s', '%s', \
                                          %d, '%s', %d, %d, %d, %d )"; // sprintf
            ///////////////////////////
            strInsertVehiclePattern = "( '%s', %d, %d, %d, \
                                         %d, %d, '%s', '%s', \
                                         '%s', '%s','%s', '%s', \
                                         %d, %d, %d, '%s', %d )";
            ///////////////////////////////
            strInsertServicePattern = "( '%s', %d, %d, %d, \
                                         %d, %d, '%s', '%s', \
                                         '%s', '%s','%s', '%s' )";
            ///////////////////////////////
            strInsertSubServicePattern = "( %d, %d, '%s', \
                                            %d, %d )";
        }
    } SQLStatement;

    static TabCustomerInfoField customerInfoField;
}

#endif // COMMONDATA_H
