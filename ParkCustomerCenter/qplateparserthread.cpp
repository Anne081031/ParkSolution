#include "qplateparserthread.h"
QPlateParserThread* QPlateParserThread::pThreadInstance = NULL;

QPlateParserThread::QPlateParserThread(QObject *parent) :
    QThread(parent)
{
    pTextCodec = QCommonFunction::GetTextCodec( );
}

QPlateParserThread* QPlateParserThread::CreateInstance( )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QPlateParserThread( );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QPlateParserThread::PostEvent(QPlateEvent *pEvent )
{
    qApp->postEvent( this, pEvent );
}

void QPlateParserThread::GetPlateResult( QJsonValue& jsonValue, QString& strKey, ParkSolution::QStringHash& plateHash )
{
    if ( jsonValue.isNull( ) ) {
        return;
    }

    bool bString = jsonValue.isString( );
    plateHash.insert( strKey, bString ? jsonValue.toString( ) :
                                        QString::number( jsonValue.toVariant( ).toUInt( ) ) );
}

void QPlateParserThread::ParsePlateData( const QByteArray &byData )
{
    QJsonData jsonData;
    QJsonData::QDataHash dataHashCommon;
    QJsonData::QDataHash dataHashAux;
    QJsonData::QDataHash dataHashBody;

    jsonData.ParseJsonData( byData, dataHashCommon, dataHashAux, dataHashBody );

    QString strPlate = dataHashBody.value( QJsonData::VehiclePlate );
    QString strDateTime = dataHashBody.value( QJsonData::VehicleTime );
    QString strImage = dataHashBody.value( QJsonData::VehicleImage );
    QByteArray byImage = strImage.toUtf8( );
    byImage = QByteArray::fromBase64( byImage );

    emit PlateData( strPlate, strDateTime, byImage );
}

void QPlateParserThread::ParsePlateData( const QByteArray &byData,
                                 ParkSolution::QStringHash &plateHash,
                                 ParkSolution::PlateResult& resultInfoKey )
{
    QJsonParseError jsonError;
    QJsonDocument docJson = QJsonDocument::fromJson( byData, &jsonError );

    if ( QJsonParseError::NoError != jsonError.error ) {
        qDebug( ) << Q_FUNC_INFO << jsonError.errorString( ) << endl;
        return;
    }

    if ( docJson.isNull( ) || docJson.isEmpty( ) || !docJson.isObject( ) ) {
        return;
    }

    QJsonObject jsonObject = docJson.object( );
    if ( jsonObject.isEmpty( ) ) {
        return;
    }

    QJsonValue jsonValue = jsonObject.value( resultInfoKey.strAlgorithmType );
    GetPlateResult( jsonValue, resultInfoKey.strAlgorithmType, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strUserID );
    GetPlateResult( jsonValue, resultInfoKey.strUserID, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strResult );
    if ( jsonValue.isNull( ) || !jsonValue.isObject( ) ) {
        return;
    }

    jsonObject = jsonValue.toObject( );
    if ( jsonObject.isEmpty( ) ) {
        return;
    }

    jsonValue = jsonObject.value( resultInfoKey.strLicense );
    GetPlateResult( jsonValue, resultInfoKey.strLicense, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strColor );
    GetPlateResult( jsonValue, resultInfoKey.strColor, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strConfidence );
    GetPlateResult( jsonValue, resultInfoKey.strConfidence, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strPlateType );
    GetPlateResult( jsonValue, resultInfoKey.strPlateType, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strLeft );
    GetPlateResult( jsonValue, resultInfoKey.strLeft, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strTop );
    GetPlateResult( jsonValue, resultInfoKey.strTop, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strRight );
    GetPlateResult( jsonValue, resultInfoKey.strRight, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strBottom );
    GetPlateResult( jsonValue, resultInfoKey.strBottom, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strTimeStamp );
    GetPlateResult( jsonValue, resultInfoKey.strTimeStamp, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strHeight );
    GetPlateResult( jsonValue, resultInfoKey.strHeight, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strWidth );
    GetPlateResult( jsonValue, resultInfoKey.strWidth, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strPitch );
    GetPlateResult( jsonValue, resultInfoKey.strPitch, plateHash );

    jsonValue = jsonObject.value( resultInfoKey.strImageData );
    GetPlateResult( jsonValue, resultInfoKey.strImageData, plateHash );
}

void QPlateParserThread::ProcessPlateResultDataEvent( QPlateEvent* pEvent )
{
    QByteArray& byData = pEvent->GetPlateResultData( );
    ParsePlateData( byData );
    return;
    QString strText = pTextCodec->toUnicode( byData );
    strText.replace( "\"{", "{" );
    strText.replace( "\\n", "" );
    strText.replace( "\\\"", "\"" );
    strText.replace( "}\"", "}" );
    //qDebug( ) << strText << endl;
    byData = strText.toUtf8( );

    ParkSolution::PlateResult resultInfoKey;
    ParkSolution::QStringHash plateHash;

    //ParsePlateData( byData, plateHash, resultInfoKey );
    const QString& strBase64 = plateHash.value( resultInfoKey.strImageData );
    QByteArray byBase64 = pTextCodec->fromUnicode( strBase64 );
    QByteArray byImage = QByteArray::fromBase64( byBase64 );
    //qDebug( ) << QString( byBase64 ) << endl;

    QString strDateTime = plateHash.value( resultInfoKey.strTimeStamp );
    uint nDateTime = strDateTime.toUInt( );
    QDateTime dtValue = QDateTime::fromTime_t( nDateTime );//QDateTime::fromMSecsSinceEpoch( nDateTime );
    strDateTime = dtValue.toString( "yyyy-MM-dd HH:mm:ss" );
    QString strPlate = plateHash.value( resultInfoKey.strLicense );

    emit PlateData( strPlate, strDateTime, byImage );
}

void QPlateParserThread::PostPlateResultData( QByteArray &byData )
{
    QPlateEvent* pEvent = QPlateEvent::CreatePlateEvent( QPlateEvent::PlateResultData );
    pEvent->SetPlateResultData( byData );

    PostEvent( pEvent );
}

void QPlateParserThread::HandleZmqClientData( QByteArray byData )
{
    PostPlateResultData( byData );
}

void QPlateParserThread::run( )
{
    exec( );
}

void QPlateParserThread::customEvent( QEvent *pEvent )
{
    QPlateEvent::PlateEvent eEvent = ( QPlateEvent::PlateEvent ) pEvent->type( );
    QPlateEvent* pPlateEvent = ( QPlateEvent* ) pEvent;

    switch ( eEvent ) {
    case QPlateEvent::PlateResultData :
        ProcessPlateResultDataEvent( pPlateEvent );
        break;
    }
}
