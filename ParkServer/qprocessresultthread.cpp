#include "qprocessresultthread.h"
#include "../CommonModule/qcommonfunction.h"

QProcessResultThread* QProcessResultThread::pThreadInstance = NULL;

QProcessResultThread::QProcessResultThread(QObject *parent) :
    QBaseThread( "QProcessResultThread", parent)
{
    pAnalogCamera = NULL;
    bSmsStartup = false;
    pSmsThread = NULL;
}

QProcessResultThread* QProcessResultThread::CreateInstance( QObject* pParent )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QProcessResultThread( pParent );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QProcessResultThread::ThreadUninitialize( )
{

}

bool QProcessResultThread::ThreadInitialize()
{
    bool bRet = QBaseThread::ThreadInitialize( );

    pConfigurator = QConfigurator::CreateConfigurator( );
    pConfigurator->GetDeleteImageFile( bDeleteImage );
    pConfigurator->GetSmsStartup( bSmsStartup );

    QCommonFunction::GetAppCaptureImagePath( strImagePath );

    pSerializeThread = QSerializeThread::CreateInstance( );
    pFtpThread = QFtpThread::CreateInstance( );
    pDatabaseThread = QDatabaseThread::CreateInstance( );

    connect( pSerializeThread, SIGNAL( PlateSerializeData( QString, QString, QByteArray ) ),
                   this, SLOT( HandlePlateSerializeData( QString, QString, QByteArray ) ) );

    //pZmqServerThread = QZmqServerThread::CreateInstance( );

    return bRet;
}

void QProcessResultThread::SetAnalogCameraThread( QAnalogCameraThread *pAnalog )
{
    pAnalogCamera = pAnalog;
}

void QProcessResultThread::CaptureImage( QString& strFile, const QString& strPlate, int nChannel )
{
    QString strDtDigital;
    QCommonFunction::GetCurrentDateTimeDigital( strDtDigital );
    strFile += QString( "%1%2_%3.jpg" ).arg( strImagePath, strPlate, strDtDigital );

    pAnalogCamera->CaptureStaticImage( strFile, nChannel );
}

void QProcessResultThread::PostPlateImage( )
{
    QProcessResultEvent* pEvent = QProcessResultEvent::CreateProcessResultEvent( QProcessResultEvent::PlateImage );
    PostEvent( pEvent );
}

void QProcessResultThread::PostDatabaseResultEvent( int nSpType, const QByteArray& byJson )
{
    QProcessResultEvent* pEvent = QProcessResultEvent::CreateProcessResultEvent( QProcessResultEvent::DatabaseResult );
    pEvent->SetDbSpType( nSpType );
    pEvent->SetDbJson( byJson );

    PostEvent( pEvent );
}

void QProcessResultThread::PostPlateResultEvent( const QString& strPlate, const QString& strDateTime,  int nChannel, bool bEnter )
{
    QProcessResultEvent* pEvent = QProcessResultEvent::CreateProcessResultEvent( QProcessResultEvent::PlateReslut );
    pEvent->SetPlate( strPlate );
    pEvent->SetDateTime( strDateTime );
    pEvent->SetImageChannel( nChannel );
    pEvent->SetEnterFlag( bEnter );

    PostEvent( pEvent );
}

void QProcessResultThread::run( )
{
    ThreadInitialize( );
    exec( );
}

void QProcessResultThread::customEvent( QEvent* pEvent )
{
    QProcessResultEvent* pResultEvent = ( QProcessResultEvent* ) pEvent;\
    QProcessResultEvent::ProcessResultEvent eEvent = ( QProcessResultEvent::ProcessResultEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QProcessResultEvent::DatabaseResult :
        ProcessDatabaseResultEvent( pResultEvent );
        break;

    case QProcessResultEvent::PlateReslut :
        ProcessPlateResultEvent( pResultEvent );
        break;

    case QProcessResultEvent::PlateImage :
        ProcessPlateImageEvent( pResultEvent );
        break;
    }
}

void QProcessResultThread::CreateVehicleJson( QByteArray &byJson, const QString &strPlate,
                                             const QString &strDateTime, const QString &strBase64 )
{
    QJsonData jsonData;

    QJsonData::QDataHash dataHashCommon;
    QJsonData::QDataHash dataHashAux;
    QJsonData::QDataHash dataHashBody;

     // Common Head
    QString strValue = QString::number( QJsonData::VehicleAccess );
    dataHashCommon.insert( QJsonData::MessageType, strValue );

    // Aux Head

    // Body
    dataHashBody.insert( QJsonData::VehiclePlate, strPlate );
    dataHashBody.insert( QJsonData::VehicleTime, strDateTime );
    dataHashBody.insert( QJsonData::VehicleImage, strBase64 );

    jsonData.GetJsonData( byJson, QJsonData::VehicleAccess, dataHashCommon, dataHashAux, dataHashBody );

    return;
    dataHashCommon.clear( );
    dataHashAux.clear( );
    dataHashBody.clear( );

    jsonData.ParseJsonData( byJson, dataHashCommon, dataHashAux, dataHashBody );
}

void QProcessResultThread::ProcessPlateImageEvent(QProcessResultEvent *pEvent)
{
    QByteArray byData;
    QString strPlate = "川A12345";

    QString strDateTime;
    QCommonFunction::GetCurrentDateTime( strDateTime );

    QString strFile = "mvc.jpg";
    QString strBase64;
    QCommonFunction::GetImageBase64( strBase64, strFile );

    CreateVehicleJson( byData, strPlate, strDateTime, strBase64 );
    pZmqServerThread->PostPublishDataEvent( byData );
}

void QProcessResultThread::ProcessDatabaseResultEvent( QProcessResultEvent* pEvent  )
{
    bool bSuccess;
    QString strUUID;

    ParseSpResult( pEvent->GetDbJson( ), bSuccess, strUUID );
    pSerializeThread->PostGetPlateDataEvent( strUUID, bSuccess );
}

void QProcessResultThread::ParseSpResult( QByteArray& byJson, bool& bSuccess, QString& strUUID )
{
    strUUID = "";
    bSuccess = false;
    QJsonParseError jsonError;
    QJsonDocument jsonDoc = QJsonDocument::fromJson( byJson, &jsonError );

    if ( QJsonParseError::NoError != jsonError.error ) {
        qDebug( ) << jsonError.errorString( ) << endl;
        return;
    }

    if ( jsonDoc.isNull( ) || jsonDoc.isEmpty( ) ) {
        return;
    }

    QJsonObject jsonObj = jsonDoc.object( );
    if ( jsonObj.isEmpty( ) ) {
        return;
    }

    QJsonValue jsonVal = jsonObj.value( "Flag" );
    if ( jsonVal.isDouble( ) ) {
        bSuccess = jsonVal.toInt( );
    }

    GetStringValue( strUUID, "UUID",  jsonObj );

    if ( !bSuccess ) {
        return;
    }

    QString strDateTime = "";
    GetStringValue( strDateTime, "DateTime",  jsonObj );

    QString strPlate = "";
    GetStringValue( strPlate, "Plate",  jsonObj );

    QString strMobile = "";
    GetStringValue( strMobile, "MobilePhone",  jsonObj );

    QString strName = "";
    GetStringValue( strName, "Name",  jsonObj );

    if ( strMobile.isEmpty( ) ) {
        return;
    }

    SendShortMessage( strPlate, strDateTime, strName, strMobile );
}

void QProcessResultThread::SendShortMessage( const QString &strPlate, const QString& strDateTime, const QString& strName, const QString& strMobile )
{
    if ( !bSmsStartup ) {
        return;
    }

    QString strText = QString( "客户%1 车牌号%2 %3光临。" ).arg( strName, strPlate, strDateTime );

    if ( NULL == pSmsThread ) {
        pSmsThread = QSmsThread::CreateInstance( );
    }

    QStringList lstTelphoneID;
    lstTelphoneID << strMobile;

    pSmsThread->PostSendSmsEvent( lstTelphoneID, strText );
}

void QProcessResultThread::GetStringValue( QString& strValue, const char* pKey, const QJsonObject& jsonObj )
{
    strValue = "";

    QJsonValue jsonVal = jsonObj.value( pKey );
    if ( !jsonVal.isUndefined( ) && jsonVal.isString( ) ) {
        strValue = jsonVal.toString( );
    }
}

void QProcessResultThread::Send2FtpServer( const QString &strPlate, const QString& strDateTime, QByteArray &byData )
{
    QDateTime dtDateTime;
    QCommonFunction::String2DateTime( strDateTime, dtDateTime );

    QString strDtDigital;
    QCommonFunction::GetDateTimeDigital( dtDateTime, strDtDigital );

    QString strName = QString( "%1_%2.jpg" ).arg( strPlate, strDtDigital );
    pFtpThread->PostUploadFileEvent( strName, byData );
}

void QProcessResultThread::SendPlate2Client( const QString &strPlate, const QString& strDateTime, const QString &strBase64 )
{
    QByteArray byPublishData;
    CreateVehicleJson( byPublishData, strPlate, strDateTime, strBase64 );
    //pZmqServerThread->PostPublishDataEvent( byPublishData );
}

void QProcessResultThread::HandlePlateSerializeData( QString strPlate, QString strDateTime, QByteArray byFileData )
{
    QString strImageBase64;
    QCommonFunction::GetImageBase64( strImageBase64, byFileData );

    Send2FtpServer( strPlate, strDateTime, byFileData );
    SendPlate2Client( strPlate, strDateTime, strImageBase64 );
}

void QProcessResultThread::ProcessPlateResultEvent( QProcessResultEvent* pEvent  )
{
    if ( !pDatabaseThread->DatabasePing(  ) ) {
        return;
    }

    QStringList lstParasm;
    const QString strPlate = pEvent->GetPlate( );
    const QString strDateTime = pEvent->GetDateTime( );
    int nChannel = pEvent->GetImageChannel( );
    bool bEnter = pEvent->GetEnterFlag( );

    QString strFile;
    CaptureImage( strFile, strPlate, nChannel );

    QByteArray byFileData;
    QCommonFunction::ReadAllFile( strFile, byFileData );

    if ( bDeleteImage ) {
        QFile::remove( strFile );
    }

    QString strImageBase64;
    QCommonFunction::GetImageBase64( strImageBase64, byFileData );

    QUuid uuid = QUuid::createUuid( );
    QString strUUID = uuid.toString( );

    lstParasm << ( bEnter ? "1" : "0" ) <<strPlate
              << strDateTime << strImageBase64 << strUUID;

    pDatabaseThread->PostWriteInOutRecordEvent( lstParasm );
    pSerializeThread->PostSetPlateDataEvent( strUUID, strPlate, strDateTime, byFileData );
}
