#include "qconfigurator.h"
#include <QDebug>

#define CONFIG_FILE_NAME    "ConfigFile.Ini"

QConfigurator::QConfigurator(QObject *parent) :
    QObject(parent)
{
    pSettings = new QSettings( CONFIG_FILE_NAME, QSettings::IniFormat );
    QTextCodec* pCodec = GetTextCodec( );
    pSettings->setIniCodec( pCodec );
    // Key=Value 值内不能都逗号
}

QConfigurator::~QConfigurator( )
{
    delete pSettings;
}

void QConfigurator::SetDbHost( QString& strHost )
{
    pSettings->setValue( "DatabaseConnectParam/Host", strHost );
}

void QConfigurator::GetDbHost( QString& strHost )
{
    strHost = pSettings->value( "DatabaseConnectParam/Host", "127.0.0.1" ).toString( );
}

void QConfigurator::SetDbHostPort( quint16 nPort )
{
    pSettings->setValue( "DatabaseConnectParam/Port", nPort );
}

void QConfigurator::GetDbHostPort( quint16& nPort )
{
    nPort = pSettings->value( "DatabaseConnectParam/Port", 3306 ).toUInt( );
}

void QConfigurator::SetDbUser( QString& strUser )
{
    pSettings->setValue( "DatabaseConnectParam/User", strUser );
}

void QConfigurator::GetDbUser( QString& strUser )
{
    strUser = pSettings->value( "DatabaseConnectParam/User", "test" ).toString( );
}

void QConfigurator::SetDbPwd( QString& strPwd )
{
    pSettings->setValue( "DatabaseConnectParam/Pwd", strPwd );
}

void QConfigurator::GetDbPwd( QString& strPwd )
{
    strPwd = pSettings->value( "DatabaseConnectParam/Pwd", "test" ).toString( );
}

void QConfigurator::SetDbSchema( QString& strSchema )
{
    pSettings->setValue( "DatabaseConnectParam/Schema", strSchema );
}

void QConfigurator::GetDbSchema( QString& strSchema )
{
    strSchema = pSettings->value( "DatabaseConnectParam/Schema", "" ).toString( );
}

void QConfigurator::GetCustomerNameTitle( QStringList& lstNameTitle )
{
    lstNameTitle << "客户简称"
               << "客户"
               << "客户名";

    QString strValue = pSettings->value( "ExcelImport/Name", "" ).toString( );
    QSettings::Status s = pSettings->status( );
    if( strValue.isEmpty( ) ) {
        return;
    }

    qDebug( ) << strValue << endl;
    lstNameTitle = strValue.split( "@" );
}

void QConfigurator::GetCustomerPlateTitle( QStringList& lstPlateTitle )
{
    lstPlateTitle << "车牌"
               << "车牌号码"
               << "车牌号";

    QString strValue = pSettings->value( "ExcelImport/Plate", "" ).toString( );
    if( strValue.isEmpty( ) ) {
        return;
    }

    qDebug( ) << strValue << endl;
    lstPlateTitle = strValue.split( "@" );
}

QConfigurator* QConfigurator::CreateConfigurator( )
{
    static QConfigurator* pConfig = NULL;

    if ( NULL == pConfig ) {
        pConfig = new QConfigurator( );
    }

    return pConfig;
}

QTextCodec* QConfigurator::GetTextCodec( )
{
    static QTextCodec* pCodec = NULL;

    if ( NULL != pCodec ) {
        return pCodec;
    }

    QList<QByteArray> lstCodec = pCodec->availableCodecs( );
    QString strText;
    bool bFound = false;

    for ( int nIndex = 0; nIndex < lstCodec.count( ); nIndex++ ) {
        QByteArray byData = lstCodec[ nIndex ];
        strText = QString( byData );
        qDebug( ) << strText << endl;

        if ( 0 == strText.toUpper().compare( "GB18030" ) ||
             0 == strText.toUpper().compare( "GBK" ) ||
             0 == strText.toUpper().compare( "GB2312" ) ) {
            bFound = true;
            break;
        }
    }

    if ( !bFound ) {
        strText = QString( "System" );
    }

    pCodec = QTextCodec::codecForName( strText.toLatin1( ) );
    return pCodec;
}
