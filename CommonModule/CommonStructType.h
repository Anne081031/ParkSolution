#ifndef COMMONSTRUCTTYPE_H
#define COMMONSTRUCTTYPE_H

#include <QtCore>
namespace ParkSolution {
    typedef struct __PlateResult {
        QString strAlgorithmType;
        QString strUserID;
        QString strResult;
        QString strLicense;
        QString strColor;
        QString strConfidence;
        QString strPlateType;
        QString strLeft;
        QString strTop;
        QString strRight;
        QString strBottom;
        QString strTimeStamp;
        QString strHeight;
        QString strWidth;
        QString strPitch;
        QString strImageData;

        __PlateResult( )
        {
            strAlgorithmType = "eType";
            strUserID = "nUserID";
            strResult = "pResult";
            strLicense = "license";
            strColor = "nColor";
            strConfidence = "nConfidence";
            strPlateType = "nType";
            strLeft = "left";
            strTop = "top";
            strRight = "right";
            strBottom = "bottom";
            strTimeStamp = "uTimeStamp";
            strHeight = "uHeight";
            strWidth = "uWidth";
            strPitch = "uPitch";
            strImageData = "pData";
        }
    } PlateResult;

    typedef struct __LoginUserInfo {
        QString strUserID;
        QString strUser;
        QString strPwd;

        __LoginUserInfo( )
        {
            strUserID = "UserID";
            strUser = "LoginName";
            strPwd = "Pwd";
        }
    } LoginUserInfo;

    typedef struct __DbConnectInfo {
        QString strHost;
        QString strPort;
        QString strUser;
        QString strPwd;
        QString strSchema;

        __DbConnectInfo( )
        {
            strHost = "Host";
            strPort = "Port";
            strUser = "User";
            strPwd = "Pwd";
            strSchema = "Schema";
        }
    } DbConnectInfo;

    typedef struct __CommonDataType {
        QString strDistrict;
        QString strDistrictID;
        QString strCustomerSource;
        QString strCustomerDepartment;
        QString strAccountExecutive;
        QString strCustomerCategory;
        QString strMembershipClass;

        QString strBrand;
        QString strSeries;
        QString strColor;
        QString strFeature;
        QString strInsurer;
        QString strVehicleState;

        QString strServiceCategory;
        QString strServiceSubCategory;
        QString strSettlementStyle;
        QString strServiceDepartment;
        QString strMaintanceman;

        __CommonDataType( )
        {
            strDistrict = "District";
            strCustomerSource = "CustomerSource";
            strCustomerDepartment = "ServiceDepartment";
            strAccountExecutive = "AccountExecutive";
            strCustomerCategory = "CustomerCategory";
            strMembershipClass = "MembershipClass";

            strBrand = "Brand";
            strSeries = "Series";
            strColor = "Color";
            strFeature = "Feature";
            strInsurer = "Insurer";
            strVehicleState = "VehicleState";

            strServiceCategory = "ServiceCategory";
            strServiceSubCategory = "ServiceSubCategory";
            strSettlementStyle = "SettlementStyle";
            strServiceDepartment = "ServiceDepartment";
            strMaintanceman = "Maintanceman";
        }
    } CommonDataType;

    typedef struct __TabCommonDataInfo {
        QString strValueID;
        QString strValue;
        QString DataType;

        __TabCommonDataInfo( )
        {
            strValueID = "ValueID";
            strValue = "Value";
            DataType = "DataType";
        }
    } TabCommonDataInfo;

    typedef struct __TabVehicleInfo {
        QString strPlateID;
        QString strCustomerID;
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
        QString strVehicleID;

        __TabVehicleInfo( )
        {
            strPlateID = "PlateID";
            strCustomerID = "CustomerID";
            strBrand = "Brand";
            strSeries = "Series";
            strColor = "Color";
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
            strVehicleID = "VehicleID";
        }
    } TabVehicleInfo;

    typedef struct __TabServiceRecord {
        QString strServiceID;
        QString strPlateID;
        QString strCategoryID;
        QString strCategory;
        QString strInsuranceAmount;
        QString strClaimAmount;
        QString strSettlementStyleID;
        QString strSettlementStyle;
        QString strMaintanceStartTime;
        QString strMaintanceEndTime;
        QString strPickupTime;
        QString strSubCategoryID;
        QString strSubCategory;
        QString strDepartmentID;
        QString strDepartment;
        QString strMaintancemanID;
        QString strMaintanceman;
        QString strConsumptionAmount;
        __TabServiceRecord( )
        {
            strServiceID = "ServiceID";
            strPlateID = "PlateID";
            strCategoryID = "CategoryID";
            strCategory = "Category";
            strInsuranceAmount = "InsuranceAmount";
            strClaimAmount = "ClaimAmount";
            strSettlementStyleID = "SettlementStyleID";
            strSettlementStyle = "SettlementStyle";
            strMaintanceStartTime = "MaintanceStartTime";
            strMaintanceEndTime = "MaintanceEndTime";
            strPickupTime = "PickupTime";
            strSubCategoryID = "SubCategoryID";
            strSubCategory = "SubCategory";
            strDepartmentID = "ServiceDepartmentID";
            strDepartment = "ServiceDepartment";
            strMaintancemanID = "MaintancemanID";
            strMaintanceman = "Maintanceman";
            strConsumptionAmount = "ServiceConsumptionAmount";
        }
    } TabServiceRecord;

    typedef struct __TabInOutRecordInfo {
        QString strRecordID;
        QString strEnterTime;
        QString strLeaveTime;
        QString strEnterPlate;
        QString strLeavePlate;
        QString strState;
        QString strEnterImage;
        QString strLeaveImage;
        QString strEnterImagePath;
        QString strLeaveImagePath;
        QString strAddedTime;
        QString strStoreStyle;

        __TabInOutRecordInfo( )
        {
            strRecordID = "RecordID";
            strEnterTime = "EnterTime";
            strLeaveTime = "LeaveTime";
            strEnterPlate = "EnterPlate";
            strLeavePlate = "LeavePlate";
            strState = "State";
            strEnterImage = "EnterImage";
            strLeaveImage = "LeaveImage";
            strEnterImagePath = "EnterImagePath";
            strLeaveImagePath = "eaveImagePath";
            strAddedTime = "AddedTime";
            strStoreStyle = "StoreStyle";
        }
    } TabInOutRecordInfo;

    typedef struct __TabCustomerInfo {
        QString strCustomerID;
        QString strName;
        QString strCredentialsID;
        QString strAddress;
        QString strDistrict;
        QString strDistrictID;
        QString strMobilePhone;
        QString strLandline;
        QString strEMail;
        QString strCustomerSource;
        QString strCustomerSourceID;
        QString strCustomerDepartment;
        QString strCustomerDepartmentID;
        QString strAccountExecutive;
        QString strAccountExecutiveID;
        QString strVistFirstTime;
        QString strEntryTime;
        QString strCustomerCategory;
        QString strCustomerCategoryID;
        QString strVistNewlyTime;
        QString strConsumptionAmount;
        QString strMembershipClass;
        QString strMembershipClassID;
        QString strMembershipCardSurplus;
        QString strCustomerState;

        __TabCustomerInfo( )
        {
            strCustomerID = "CustomerID";
            strName = "Name";
            strCredentialsID = "CredentialsID";
            strAddress = "Address";
            strDistrict = "District";
            strDistrictID = "DistrictID";
            strMobilePhone = "MobilePhone";
            strLandline = "Landline";
            strEMail = "EMail";
            strCustomerSource = "CustomerSource";
            strCustomerSourceID = "CustomerSourceID";
            strCustomerDepartment = "CustomerDepartment";
            strCustomerDepartmentID = "CustomerDepartmentID";
            strAccountExecutive = "AccountExecutive";
            strAccountExecutiveID = "AccountExecutiveID";
            strVistFirstTime = "VistFirstTime";
            strEntryTime = "EntryTime";
            strCustomerCategory = "CustomerCategory";
            strCustomerCategoryID = "CustomerCategoryID";
            strVistNewlyTime = "VistNewlyTime";
            strConsumptionAmount = "ConsumptionAmount";
            strMembershipClass = "MembershipClass";
            strMembershipClassID = "MembershipClassID";
            strMembershipCardSurplus = "MembershipCardSurplus";
            strCustomerState = "CustomerState";
        }
    } TabCustomerInfo;

    //static const TabCustomerInfo sCustomerInfo;

    typedef struct __SpName {
        QString strSpVehicleEnter;
        QString strSpQueryServiceData;
        QString strSpQueryCustomerData;
        QString strSpQueryCustomerVehicleData;
        QString strSpQueryCommonDataInfo;
        QString strSpChangeCustomerVehicleData;
        QString strSpIgnoreOrDeleteCustomer;
        QString strSpChangeServiceRecord;
        QString strSpImportCustomer;
        QString strSpExportCustomer;
        QString strSpQueryUserInfo;
        QString strSpQueryInOutImage;
        QString strSpChangeCommonData;
        QString strSpQueryCommonDataByType;
        QString strSpWriteInOutRecord;

        __SpName( )
        {
            strSpVehicleEnter = "VehicleEnter";
            strSpQueryServiceData = "QueryServiceData";
            strSpQueryCustomerData = "QueryCustomerData";
            strSpQueryCustomerVehicleData = "QueryCustomerVehicleData";
            strSpQueryCommonDataInfo = "QueryCommonDataInfo";
            strSpChangeCustomerVehicleData = "ChangeCustomerVehicleData";
            strSpIgnoreOrDeleteCustomer = "IgnoreOrDeleteCustomer";
            strSpChangeServiceRecord = "ChangeServiceRecord";
            strSpImportCustomer = "ImportCustomer";
            strSpExportCustomer = "ExportCustomer";
            strSpQueryUserInfo = "QueryUserInfo";
            strSpQueryInOutImage = "SpQueryInOutImage";
            strSpChangeCommonData = "ChangeCommonData";
            strSpQueryCommonDataByType = "QueryCommonDataByType";
            strSpWriteInOutRecord = "WriteInOutRecord";
        }
    } SpName;

    typedef struct __SpXmlPattern {
        QString strXmlVehicle;
        QString strXmlQueryServiceData;
        QString strXmlQueryCustomerData;
        QString strXmlQueryCustomerVehicleData;
        QString strXmlQueryCommonDataInfo;
        QString strXmlChangeCustomerVehicleDataUI;
        QString strXmlChangeCustomerVehicleDataDelete;
        QString strXmlChangeServiceRecordUI;
        QString strXmlChangeServiceRecordDelete;
        QString strXmlImportCustomer;
        QString strXmlExportCustomer;
        QString strXmlQueryUserInfo;
        QString strXmlQueryInOutImage;
        QString strXmlChangeCommonDataUI;
        QString strXmlChangeCommonDataDelete;
        QString strXmlQueryCommonDataByType;
        QString strXmlWriteInOutRecord;

        __SpXmlPattern( )
        {
            strXmlVehicle = "<Data><Flag>%1</Flag><CustomerID>%2</CustomerID><Plate>%3</Plate><Time>%4</Time><DoubleClick>%5</DoubleClick></Data>";
            strXmlQueryServiceData = "<Data><Flag>%1</Flag><CustomerID>%2</CustomerID><Plate>%3</Plate><Limit>%4</Limit></Data>";
            strXmlQueryCustomerData = "<Data><Flag>%1</Flag><Limit>%2</Limit><Where>%3</Where></Data>";
            strXmlQueryCustomerVehicleData = "<Data><Flag>%1</Flag><CustomerID>%2</CustomerID><Plate>%3</Plate></Data>";
            strXmlQueryCommonDataInfo = "<Data><DataType>%1</DataType></Data>";

            //CustomerState CustomerID VehicleID
            strXmlChangeCustomerVehicleDataUI = "<Data><Flag>%1</Flag>\
                    <Customer><CustomerID>%2</CustomerID><Name>%3</Name>\
                    <CredentialsID>%4</CredentialsID><Address>%5</Address>\
                    <District>%6</District><MobilePhone>%7</MobilePhone>\
                    <Landline>%8</Landline><EMail>%9</EMail>\
                    <CustomerSource>%10</CustomerSource>\
                    <CustomerDepartment>%11</CustomerDepartment>\
                    <AccountExecutive>%12</AccountExecutive>\
                    <VistFirstTime>%13</VistFirstTime>\
                    <EntryTime>%14</EntryTime>\
                    <CustomerCategory>%15</CustomerCategory>\
                    <VistNewlyTime>%16</VistNewlyTime>\
                    <ConsumptionAmount>%17</ConsumptionAmount>\
                    <MembershipClass>%18</MembershipClass>\
                    <MembershipCardSurplus>%19</MembershipCardSurplus>\
                    </Customer><Vehicle><PlateID>%20</PlateID><Brand>%21</Brand>\
                    <Series>%22</Series><Color>%23</Color>\
                    <Feature>%24</Feature><BuyDate>%25</BuyDate>\
                    <MaintenanceFirstDate>%26</MaintenanceFirstDate>\
                    <MaintenanceNextDate>%27</MaintenanceNextDate>\
                    <AannualSurveyDate>%28</AannualSurveyDate>\
                    <CommercialInsuranceExpiration>%29</CommercialInsuranceExpiration>\
                    <MandatoryInsuranceExpiration>%30</MandatoryInsuranceExpiration>\
                    <Insurer>%31</Insurer><VistCount>%32</VistCount>\
                    <VehicleState>%33</VehicleState><MotorID>%34</MotorID>\
                    <Odometer>%35</Odometer><VehicleID>%36</VehicleID>\
                    </Vehicle></Data>";
            strXmlChangeCustomerVehicleDataDelete = "<Data><Flag>%1</Flag><Customer><CustomerID>%2</CustomerID></Customer></Data>";
            strXmlChangeServiceRecordUI = "<Data><Flag>%1</Flag><ServiceID>%2</ServiceID>\
                    <PlateID>%3</PlateID><SubCategory>%4</SubCategory>\
                    <Category>%5</Category><InsuranceAmount>%6</InsuranceAmount>\
                    <ClaimAmount>%7</ClaimAmount><SettlementStyle>%8</SettlementStyle>\
                    <MaintanceStartTime>%9</MaintanceStartTime>\
                    <MaintanceEndTime>%10</MaintanceEndTime>\
                    <PickupTime>%11</PickupTime>\
                    <ServiceDepartment>%12</ServiceDepartment>\
                    <Maintanceman>%13</Maintanceman>\
                    <ServiceConsumptionAmount>%14</ServiceConsumptionAmount></Data>";
            strXmlChangeServiceRecordDelete = "<Data><Flag>%1</Flag><ServiceID>%2</ServiceID></Data>";
            strXmlImportCustomer = "<Data><Flag>%1</Flag>%2</Data>";
            strXmlExportCustomer = "<Data><Where>%1</Where></Data>";
            strXmlQueryUserInfo = "<Data><UserType>%1</UserType></Data>";
            strXmlQueryInOutImage = "<Data><Flag>%1</Flag><Plate>%2</Plate><VistNewlyTime>%3</VistNewlyTime></Data>";
            strXmlChangeCommonDataUI = "<Data><Flag>%1</Flag><DataType>%2</DataType><ValueID>%3</ValueID><Value>%4</Value></Data>";
            strXmlChangeCommonDataDelete = "<Data><Flag>%1</Flag><DataType>%2</DataType><ValueID>%3</ValueID><Value>%4</Value></Data>";
            strXmlQueryCommonDataByType = "<Data><DataType>%1</DataType></Data>";
            strXmlWriteInOutRecord = "<Data><Flag>%1</Flag><Plate>%2</Plate><DateTime>%3</DateTime><Image>%4</Image><UUID>%5</UUID></Data>";
        }
    } SpXmlPattern;
}
#endif // COMMONSTRUCTTYPE_H
