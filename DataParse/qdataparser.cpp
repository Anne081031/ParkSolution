#include "qdataparser.h"
#include <QJsonParseError>
#include <QDebug>
#include <QMessageBox>
#include <QLineEdit>
#include <QSqlRecord>
#include <QSqlField>

QDataParser::QDataParser(QObject *parent) :
    QObject(parent)
{
    pConfigurator = QConfigurator::CreateConfigurator( );
    GetExcelTitle( );
}

void QDataParser::GetExcelTitle( )
{
    pConfigurator->GetCustomerNameTitle( lstCutomerNameTitle );
    pConfigurator->GetCustomerPlateTitle( lstCutomerPlateTitle );
}

bool QDataParser::IsCustomerName( QString& strColValue )
{
    return lstCutomerNameTitle.contains( strColValue );
}

bool QDataParser::IsCustomerPlate( QString& strColValue )
{
    return lstCutomerPlateTitle.contains( strColValue );
}

bool QDataParser::GetNeededColumn( QAxObject *pWorksheet,
                                   ParkSolution::QStringHash &hashColumn,
                                   int nRowStart,
                                   int nColStart,
                                   int nCols )
{
    bool bRet = false;

    if ( NULL == pWorksheet ) {
        return bRet;
    }

    ParkSolution::TabCustomerInfo customerInfo;
    ParkSolution::TabVehicleInfo vehicleInfo;
    QString strColValue;
    QAxObject* pCell;

    for ( int i = nRowStart; i < nRowStart + 1; i++ ) {
        for ( int j = nColStart; j < nColStart + nCols; j++ ) {
            pCell = pWorksheet->querySubObject( "Cells( int, int )", i, j );
            strColValue = pCell->dynamicCall( "Value2( )" ).toString( );
            qDebug( ) << strColValue << endl;

            if ( IsCustomerName( strColValue ) ) {
                hashColumn.insert( customerInfo.strName, QString::number( j ) );
            } else if ( IsCustomerPlate( strColValue ) ) {
                hashColumn.insert( vehicleInfo.strPlateID, QString::number( j ) );
            }
        }
    }

    return ( 2== hashColumn.count( ) );
}

bool QDataParser::ImportData( QString& strFile, QStringList& lstCustomerData )
{
    bool bRet = false;

    QAxObject* pExcel = new QAxObject( "Excel.Application" );
    if ( NULL == pExcel ) {
        qDebug( ) << Q_FUNC_INFO << "not install excel" << endl;
        return bRet;
    }

    if ( strFile.isEmpty( ) ) {
        return bRet;
    }

    QVariant varRet = pExcel->dynamicCall( "SetVisible(bool)", false);

    QAxObject* pWorkbooks = pExcel->querySubObject( "Workbooks" );
    QAxObject* pWorkbook = pWorkbooks->querySubObject( "Open( QString, QVariant )",
                                                       strFile );
    QAxObject* pWorksheet = pWorkbook->querySubObject( "Worksheets( int )", 1 );

    //QAxObject* pWorksheets = pWorkbook->querySubObject("Worksheets");
    //int nSheetCount = pWorksheets->property( "Count" ).toInt( );

    QAxObject* pUsedRange = pWorksheet->querySubObject( "UsedRange" );
    QAxObject* pRows = pUsedRange->querySubObject( "Rows" );
    QAxObject* pColumns = pUsedRange->querySubObject( "Columns" );

    int nRowStart = pUsedRange->property( "Row" ).toInt( );
    int nColStart = pUsedRange->property( "Column" ).toInt( );
    int nCols = pColumns->property( "Count" ).toInt( );
    int nRows = pRows->property( "Count" ).toInt( );
    ParkSolution::QStringHash hashColumns;
    QAxObject* pCell;
    ParkSolution::TabCustomerInfo customerInfo;
    ParkSolution::TabVehicleInfo vehicleInfo;
    QString strCustomerName;
    QString strCustomerPlate;
    QString strXml = "<Customer><Name>%1</Name><Plate>%2</Plate></Customer>";

    bRet = GetNeededColumn( pWorksheet, hashColumns,
                     nRowStart, nColStart, nCols );
    if ( !bRet ) {
        return bRet;
    }

    for ( int i = nRowStart + 1; i < nRowStart + nRows; i++ ) {
        pCell = pWorksheet->querySubObject( "Cells( int, int )", i,
                                            hashColumns[ customerInfo.strName ].toInt( ) );
        strCustomerName = pCell->dynamicCall( "Value2( )" ).toString( );

        pCell = pWorksheet->querySubObject( "Cells( int, int )", i,
                                            hashColumns[ vehicleInfo.strPlateID ].toInt( ) );
        strCustomerPlate = pCell->dynamicCall( "Value2( )" ).toString( );

        lstCustomerData << strXml.arg( strCustomerName, strCustomerPlate );
    }
/*
    for ( int i = nRowStart; i < nRowStart + nRows; i++ ) {
     for ( int j = nColStart; j < nColStart + nCols; j++ ) {
        pCell = pWorksheet->querySubObject( "Cells( int, int )", i, j );
        qDebug() << i << j << pCell->dynamicCall( "Value2( )" ).toString( );
     }
    }
*/
    varRet = pWorkbook->dynamicCall( "Close ( Boolean )", false );

    //同样，设置值，也用dynamimcCall("SetValue(const QVariant&)", QVariant(QString("Help!")))这样才成功的。。

    varRet = pExcel->dynamicCall( "Quit( )" );

    delete pExcel;

    bRet = true;
    return bRet;
}

void QDataParser::SetNeededColumnName( QAxObject *pWorksheet, QSqlQueryModel *pModel )
{
   if ( NULL == pWorksheet || NULL == pModel ) {
       return;
   }

   QAxObject* pCell;
   QVariant varRet;
   int nCols = pModel->columnCount( );

   for ( int j = 1; j < 1 + nCols; j++ ) {
       pCell = pWorksheet->querySubObject( "Cells( int, int )", 1, j );
       varRet = pModel->headerData( j - 1, Qt::Horizontal );
       varRet = pCell->dynamicCall( "SetValue( const QVariant& )", varRet );
   }
}

void QDataParser::Convert2ExcelValue( QString& strValue, QVariant& varValue )
{
    if ( QVariant::Date == varValue.type( ) ) {
        strValue = varValue.toDate( ).toString( "yyyy-MM-dd" );
    } else if ( QVariant::DateTime == varValue.type( ) ) {
        strValue = varValue.toDateTime( ).toString( "yyyy-MM-dd HH:mm:ss" );
    } else {
        strValue = varValue.toString( );
    }
}

bool QDataParser::ExportData( QString& strDir, QSqlQueryModel* pModel )
{
    bool bRet = false;
    QAxObject* pExcel = new QAxObject( "Excel.Application" );
    if ( NULL == pExcel ) {
        qDebug( ) << Q_FUNC_INFO << "not install excel" << endl;
        return bRet;
    }

    if ( NULL == pModel ) {
        return bRet;
    }

    if ( strDir.isEmpty( ) ) {
        strDir = qApp->applicationDirPath( );
    }

    QString strFile;
    strFile = strDir + "\\" + QDateTime::currentDateTime( ).toString( "yyyyMMddHHmmss" ) + ".xls";

    QVariant varRet = pExcel->dynamicCall("SetVisible(bool)", false );

    QAxObject* pWorkbooks = pExcel->querySubObject( "WorkBooks" );
    varRet = pWorkbooks->dynamicCall( "Add" );

    QAxObject* pWorkbook = pExcel->querySubObject( "ActiveWorkbook" );
    QAxObject* pWorksheet = pWorkbook->querySubObject( "WorkSheets( int )", 1 );

    //QAxObject* pWorksheets = pWorkbook->querySubObject("WorkSheets");
    //int nSheetCount = pWorksheets->property( "Count" ).toInt( );

    int nCols = pModel->columnCount( );
    int nRows = pModel->rowCount( ) + 1; // Title
    QAxObject* pUsedRange = pWorksheet->querySubObject( "Cells( int, int )", nRows, nCols );
    QAxObject* pCell;
    QSqlRecord sqlRecord;
    QString strValue;

    SetNeededColumnName( pWorksheet, pModel );

    for ( int i = 2; i < 1 + nRows; i++ ) {
        sqlRecord = pModel->record( i - 2 );
        qDebug( ) << "Row" << endl;

        for ( int j = 1; j < 1 + nCols; j++ ) {
            pCell = pWorksheet->querySubObject( "Cells( int, int )", i, j );
            varRet = sqlRecord.value( j - 1 );
            //strValue = varRet.toString( );
            Convert2ExcelValue( strValue, varRet );
            qDebug( ) << strValue << " ";
            varRet = pCell->dynamicCall( "SetValue( const QVariant& )", strValue );
        }
    }

    pWorkbook->dynamicCall("SaveAs( const QString& )", strFile );
    //QMessageBox::information( NULL, "OK", "保存成功！" );
    varRet = pWorkbook->dynamicCall( "Close( )" );
    pWorksheet->clear( );

    varRet = pExcel->dynamicCall( "Quit( )" );

    delete pExcel;

    bRet = true;
    return bRet;
}

void QDataParser::ParseCommonDataInfo( QByteArray &byJson, ParkSolution::QStringWidgetHash &wgtHash )
{
    QJsonParseError jsonError;
    QJsonDocument docJson = QJsonDocument::fromJson( byJson, &jsonError );

    if ( QJsonParseError::NoError != jsonError.error ) {
        qDebug( ) << Q_FUNC_INFO << jsonError.errorString( ) << endl;
        return;
    }

    if ( docJson.isNull( ) || docJson.isEmpty( ) || !docJson.isObject( ) ) {
        return;
    }

    //{"Brand":[{"ValueID":"1","Value":"大众"}],"District":[{"ValueID":"3","Value":"成华区"}]}
    QJsonObject jsonObject = docJson.object( );
    if ( jsonObject.isEmpty( ) ) {
        return;
    }
    //QJsonArray
    //QJsonObject
    //QJsonValue

    ParkSolution::CommonDataType dataType;
    ParkSolution::TabCustomerInfo customerInfo;

    QJsonArray jsonArray = jsonObject.value( dataType.strDistrict ).toArray( );
    FillComboBox( jsonArray, wgtHash[ customerInfo.strDistrict ] );

    jsonArray = jsonObject.value( dataType.strCustomerCategory ).toArray( );
    FillComboBox( jsonArray, wgtHash[ customerInfo.strCustomerCategory ] );

    jsonArray = jsonObject.value( dataType.strCustomerDepartment ).toArray( );
    FillComboBox( jsonArray, wgtHash[ customerInfo.strCustomerDepartment ] );

    jsonArray = jsonObject.value( dataType.strAccountExecutive ).toArray( );
    FillComboBox( jsonArray, wgtHash[ customerInfo.strAccountExecutive ] );

    jsonArray = jsonObject.value( dataType.strCustomerSource ).toArray( );
    FillComboBox( jsonArray, wgtHash[ customerInfo.strCustomerSource ] );

    jsonArray = jsonObject.value( dataType.strMembershipClass ).toArray( );
    FillComboBox( jsonArray, wgtHash[ customerInfo.strMembershipClass ] );

    ParkSolution::TabVehicleInfo vehicleInfo;
    jsonArray = jsonObject.value( dataType.strBrand ).toArray( );
    FillComboBox( jsonArray, wgtHash[ vehicleInfo.strBrand ] );

    jsonArray = jsonObject.value( dataType.strSeries ).toArray( );
    FillComboBox( jsonArray, wgtHash[ vehicleInfo.strSeries ] );

    jsonArray = jsonObject.value( dataType.strColor ).toArray( );
    FillComboBox( jsonArray, wgtHash[ vehicleInfo.strColor ] );

    jsonArray = jsonObject.value( dataType.strInsurer ).toArray( );
    FillComboBox( jsonArray, wgtHash[ vehicleInfo.strInsurer ] );

    jsonArray = jsonObject.value( dataType.strFeature ).toArray( );
    FillComboBox( jsonArray, wgtHash[ vehicleInfo.strFeature ] );

    jsonArray = jsonObject.value( dataType.strVehicleState ).toArray( );
    FillComboBox( jsonArray, wgtHash[ vehicleInfo.strVehicleState ] );

    ParkSolution::TabServiceRecord serviceRecord;
    jsonArray = jsonObject.value( dataType.strServiceCategory ).toArray( );
    FillComboBox( jsonArray, wgtHash[ serviceRecord.strCategory ] );

    jsonArray = jsonObject.value( dataType.strServiceSubCategory ).toArray( );
    FillComboBox( jsonArray, wgtHash[ serviceRecord.strSubCategory ] );

    jsonArray = jsonObject.value( dataType.strServiceDepartment ).toArray( );
    FillComboBox( jsonArray, wgtHash[ serviceRecord.strDepartment ] );

    jsonArray = jsonObject.value( dataType.strMaintanceman ).toArray( );
    FillComboBox( jsonArray, wgtHash[ serviceRecord.strMaintanceman ] );

    jsonArray = jsonObject.value( dataType.strSettlementStyle ).toArray( );
    FillComboBox( jsonArray, wgtHash[ serviceRecord.strSettlementStyle ] );
}

void QDataParser::FillComboBox(QJsonArray &jsonArray, QWidget* pWgt )
{
    QComboBox* pCbx = ( QComboBox* ) pWgt;
    if ( jsonArray.isEmpty( ) || NULL == pCbx ) {
        return;
    }

    ParkSolution::TabCommonDataInfo commonData;
    QJsonObject jsonObject;
    QString strText;
    int nValueID = 0;

    pCbx->clear( );

    for ( int nIndex = 0; nIndex < jsonArray.count( ); nIndex++ ) {
        jsonObject = jsonArray.at( nIndex ).toObject( );
        if ( jsonObject.isEmpty( ) ) {
            continue;
        }

        strText = jsonObject.value( commonData.strValue ).toString( );
        nValueID = jsonObject.value( commonData.strValueID ).toInt( );

        if ( strText.isNull( ) || strText.isEmpty( ) ) {
            continue;
        }

        pCbx->addItem( strText, nValueID );
    }
}

int QDataParser::ParseCustomerAllInfo( QByteArray& byJson, ParkSolution::QStringWidgetHash& wgtHash )
{
    QJsonParseError jsonError;
    QJsonDocument docJson = QJsonDocument::fromJson( byJson, &jsonError );

    int nRet = 0;
    if ( QJsonParseError::NoError != jsonError.error ) {
        qDebug( ) << Q_FUNC_INFO << jsonError.errorString( ) << endl;
        return nRet;
    }
    //QJsonArray
    //QJsonObject
    //QJsonValue

    if ( docJson.isNull( ) || docJson.isEmpty( ) || !docJson.isObject( ) ) {
        return nRet;
    }

    return FillEdit( docJson, wgtHash );
}

void QDataParser::FillCustomerEdit( QJsonObject& jsonObject, ParkSolution::QStringWidgetHash& wgtHash )
{
    ParkSolution::TabCustomerInfo tabCustomer;

    QLineEdit* pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strCustomerID ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strCustomerID ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strName ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strName ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strCredentialsID ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strCredentialsID ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strAddress ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strAddress ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strDistrict ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strDistrict ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strMobilePhone ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strMobilePhone ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strLandline ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strLandline ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strEMail ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strEMail ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strCustomerSource ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strCustomerSource ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strCustomerDepartment ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strCustomerDepartment ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strAccountExecutive ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strAccountExecutive ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strVistFirstTime ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strVistFirstTime ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strEntryTime ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strEntryTime ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strCustomerCategory ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strCustomerCategory ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strVistNewlyTime ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strVistNewlyTime ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strConsumptionAmount ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strConsumptionAmount ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strMembershipClass ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strMembershipClass ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabCustomer.strMembershipCardSurplus ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabCustomer.strMembershipCardSurplus ).toString( ) );
    }

    //QString strCustomerState;
}

void QDataParser::FillVehicleEdit( QJsonObject& jsonObject, ParkSolution::QStringWidgetHash& wgtHash )
{
    ParkSolution::TabVehicleInfo tabVehicle;

    QLineEdit* pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strPlateID ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strPlateID ).toString( ) );
    }

    //pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strCustomerID ];

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strBrand ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strBrand ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strSeries ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strSeries ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strColor ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strColor ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strFeature ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strFeature).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strBuyDate ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strBuyDate ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strMaintenanceFirstDate ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strMaintenanceFirstDate ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strMaintenanceNextDate ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strMaintenanceNextDate ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strAannualSurveyDate ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strAannualSurveyDate ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strCommercialInsuranceExpiration ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strCommercialInsuranceExpiration ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strMandatoryInsuranceExpiration ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strMandatoryInsuranceExpiration ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strInsurer ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strInsurer ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strVistCount ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strVistCount ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strVehicleState ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strVehicleState ).toString( ) );
    }

    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strMotorID ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strMotorID ).toString( ) );
    }

    //pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strFrameID ];
    pEdit = ( QLineEdit* ) wgtHash[ tabVehicle.strOdometer ];
    if ( NULL != pEdit ) {
        pEdit->setText( jsonObject.value( tabVehicle.strOdometer ).toString( ) );
    }
}

int QDataParser::FillEdit( QJsonDocument& docJson, ParkSolution::QStringWidgetHash& wgtHash )
{
    int nRet = 0;
    if ( !docJson.isObject( ) ) {
        return nRet;
    }

    QJsonObject jsonObject = docJson.object( );
    int nFlag = jsonObject.value( "Flag" ).toInt( );
    QString strMessage = jsonObject.value( "Message" ).toString( );

    nRet = nFlag;
    qDebug( ) << Q_FUNC_INFO << strMessage << endl;
    if ( 2 != nFlag ) { // 3 DoubleClick
        return nRet;
    }

    QJsonValue jsonValue = jsonObject.value( "List" );

    if ( jsonValue.isNull( ) || !jsonValue.isArray( ) ) {
        return nRet;
    }

    QJsonArray jsonArray = jsonValue.toArray( );
    if ( jsonArray.isEmpty( ) ) {
        return nRet;
    }

    jsonValue = jsonArray.at( 0 );
    if ( jsonValue.isNull( ) || !jsonValue.isObject( ) ) {
        return nRet;
    }

    QJsonObject jsonListObject =jsonValue.toObject( );
    jsonValue = jsonListObject.value( "CustomerInfo" );
    if ( jsonValue.isNull( ) || !jsonValue.isObject( ) ) {
        return nRet;
    }

    jsonObject = jsonValue.toObject( );
    FillCustomerEdit( jsonObject, wgtHash );


    jsonValue = jsonListObject.value( "VehicleInfo" );
    if ( jsonValue.isNull( ) || !jsonValue.isArray( ) ) {
        return nRet;
    }

    jsonArray = jsonValue.toArray( );
    if ( jsonArray.isEmpty( ) ) {
        return nRet;
    }

    jsonValue = jsonArray.at( 0 );
    if ( jsonValue.isNull( ) || !jsonValue.isObject( ) ) {
        return nRet;
    }

    jsonObject = jsonValue.toObject( );
    FillVehicleEdit( jsonObject, wgtHash );

    return nRet;
}

void QDataParser::FillCustomerTable( QJsonDocument& docJson, QTableWidget* pTableWidget )
{

}

void QDataParser::FillServiceTable( QJsonDocument& docJson, QTableWidget* pTableWidget )
{

}
