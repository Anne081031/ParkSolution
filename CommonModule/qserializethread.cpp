#include "qserializethread.h"
QSerializeThread* QSerializeThread::pThreadInstance = NULL;

QSerializeThread::QSerializeThread(QObject *parent) :
    QBaseThread( "QSerializeThread", parent)
{
}

QSerializeThread* QSerializeThread::CreateInstance( QObject* pParent )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QSerializeThread( pParent );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QSerializeThread::PostGetPlateDataEvent( const QString& strUUID, bool bSuccess )
{
    QSerializeEvent* pEvent = QSerializeEvent::CreateSerializeEvent( QSerializeEvent::GetPlateData );
    pEvent->SetHashUUID( strUUID );
    pEvent->SetSuccessFlag( bSuccess );

    PostEvent( pEvent);
}

void QSerializeThread::PostSetPlateDataEvent( const QString& strUUID, const QString& strPlate,
                            const QString& strDateTime, const QByteArray& byFileData )
{
    QSerializeEvent* pEvent = QSerializeEvent::CreateSerializeEvent( QSerializeEvent::SetPlateData );
    pEvent->SetHashUUID( strUUID );
    pEvent->SetPlateValue( strPlate );
    pEvent->SetDateTimeValue( strDateTime );
    pEvent->SetFileDataValue( byFileData );

    PostEvent( pEvent);
}

bool QSerializeThread::ThreadInitialize( )
{
    return QBaseThread::ThreadInitialize( );
}

void QSerializeThread::ThreadUninitialize( )
{

}

void QSerializeThread::run( )
{
    ThreadInitialize( );
    exec( );
}

void QSerializeThread::customEvent( QEvent* pEvent )
{
    QSerializeEvent* pSerialzeEvent = ( QSerializeEvent* ) pEvent;
    QSerializeEvent::SerializeEvent eEvent = ( QSerializeEvent::SerializeEvent ) pEvent->type( );

    switch ( eEvent ) {
    case QSerializeEvent::SetPlateData :
        ProcessSetPlateDataEvent( pSerialzeEvent );
        break;

    case QSerializeEvent::GetPlateData :
        ProcessGetPlateDataEvent( pSerialzeEvent );
        break;
    }
}

void QSerializeThread::ProcessGetPlateDataEvent( QSerializeEvent* pEvent )
{
    const QString& strUUID = pEvent->GetHashUUID( );
    const SerializeData* pData = hashSerializeData.take( strUUID );

    if ( NULL == pData ) {
        return;
    }

    if ( pEvent->GetSuccessFlag( ) ) {
        emit PlateSerializeData( pData->strPlate,
                                 pData->strDateTime,
                                 pData->byFileData );
    }

    QString strLog = QString( "Hash Data Item %1 after take" ).arg( hashSerializeData.size( ) );
    EmitLog( strLog );

    delete pData;
}

void QSerializeThread::ProcessSetPlateDataEvent( QSerializeEvent* pEvent )
{
    SerializeData* pData = new SerializeData( );

    pData->strPlate = pEvent->GetPlateValue( );
    pData->strDateTime = pEvent->GetDateTimeValue( );
    pData->byFileData = pEvent->GetFileDataValue( );

    const QString& strUUID = pEvent->GetHashUUID( );
    hashSerializeData.insert( strUUID, pData );

    QString strLog = QString( "Hash Data Item %1 after insert" ).arg( hashSerializeData.size( ) );
    EmitLog( strLog );
}
