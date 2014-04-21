#ifndef QDATAPARSER_H
#define QDATAPARSER_H

#include <QObject>
#include <QComboBox>
#include "dataparse_global.h"
#include "../CommonModule/CommonHeader.h"
#include <QAxObject>
#include <QSqlQueryModel>
#include "../ConfigModule/qconfigurator.h"

class DATAPARSESHARED_EXPORT QDataParser : public QObject
{
    Q_OBJECT
public:
    explicit QDataParser(QObject *parent = 0);
    int  ParseCustomerAllInfo( QByteArray& byJson, ParkSolution::QStringWidgetHash& wgtHash );
    void ParseCommonDataInfo( QByteArray& byJson, ParkSolution::QStringWidgetHash& wgtHash );
    bool ImportData( QString& strFile, QStringList& lstCustomerData );
    bool ExportData( QString& strDir, QSqlQueryModel* pModel );

private:
    void FillComboBox(QJsonArray &jsonArray, QWidget* pWgt );
    int FillEdit( QJsonDocument& docJson, ParkSolution::QStringWidgetHash& wgtHash );
    void FillCustomerEdit( QJsonObject& jsonObject, ParkSolution::QStringWidgetHash& wgtHash );
    void FillVehicleEdit( QJsonObject& jsonObject, ParkSolution::QStringWidgetHash& wgtHash );
    void FillCustomerTable( QJsonDocument& docJson, QTableWidget* pTableWidget );
    void FillServiceTable( QJsonDocument& docJson, QTableWidget* pTableWidget );
    bool GetNeededColumn( QAxObject* pWorksheet,
                          ParkSolution::QStringHash& hashColumn,
                          int nRowStart,
                          int nColStart,
                          int nCols );

    void SetNeededColumnName( QAxObject* pWorksheet, QSqlQueryModel* pModel );

    inline bool IsCustomerName( QString& strColValue );
    inline bool IsCustomerPlate( QString& strColValue );
    void Convert2ExcelValue( QString& strValue, QVariant& varValue );
    void GetExcelTitle( );

private:
    QConfigurator* pConfigurator;
    QStringList lstCutomerNameTitle;
    QStringList lstCutomerPlateTitle;

signals:

public slots:

};

#endif // QDATAPARSER_H
