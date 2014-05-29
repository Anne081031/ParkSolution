#ifndef COMMONENUMTYPE_H
#define COMMONENUMTYPE_H
namespace ParkSolution {
    typedef enum __DatabaseType {
        MySQL,
        SQLite,
        Oracle,
        MSSQLServer
    } DatabaseType;

    typedef enum __SpType {
        SpVehicleEnter,
        SpQueryServiceData,
        SpQueryCustomerData,
        SpQueryCustomerVehicleData,
        SpQueryCommonDataInfo,
        SpChangeCustomerVehicleDataUI,
        SpChangeCustomerVehicleDataDelete,
        SpChangeServiceRecordUI,
        SpChangeServiceRecordDelete,
        SpImportCustomer,
        SpExportCustomer,
        SpQueryUserInfo,
        SpQueryInOutImage,
        SpQueryCommonDataByType,
        SpChangeCommonDataUI,
        SpChangeCommonDataDelete,
        SpWriteInOutRecord,
        SpQueryInOutRecord,
        SpReportInfo
    } SpType;

    typedef union __SelectResult {
        enum __CustomerCenter {
            ResulServiceRecord,
            ResulCustomerInfo,
            ResulVehicleInfo,
            ResulCustomerVehicleInfo
        } CustomerCenter;
    } SelectResult;

    typedef enum __ThreadEvent {
        ThreadExit
    } ThreadEvent;
}

#endif // COMMONENUMTYPE_H
