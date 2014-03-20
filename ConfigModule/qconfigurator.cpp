#include "qconfigurator.h"
#include <QDebug>
#include "../CommonModule/QCommonFunction.h"

#define CONFIG_FILE_NAME    "ConfigFile.Ini"

QConfigurator::QConfigurator(QObject *parent) :
    QObject(parent)
{
    pSettings = new QSettings( CONFIG_FILE_NAME, QSettings::IniFormat );
    QTextCodec* pCodec = QCommonFunction::GetTextCodec( );
    pSettings->setIniCodec( pCodec );
    // Key=Value 值内不能都逗号
}

QConfigurator::~QConfigurator( )
{
    delete pSettings;
}

void QConfigurator::SetHttpHost( QString& strHost )
{
    pSettings->setValue( "HttpServer/Host", strHost );
}

void QConfigurator::GetHttpHost( QString& strHost )
{
    strHost = pSettings->value( "HttpServer/Host", "127.0.0.1" ).toString( );
}

void QConfigurator::SetHttpHostPort( quint16 nPort )
{
    pSettings->setValue( "HttpServer/Port", nPort );
}

void QConfigurator::GetHttpHostPort( quint16& nPort )
{
    nPort = pSettings->value( "HttpServer/Port", 80 ).toUInt( );
}

void QConfigurator::SetPlateHost( QString& strHost )
{
    pSettings->setValue( "HttpServer/Host", strHost );
}

void QConfigurator::GetPlateHost( QString& strHost )
{
    strHost = pSettings->value( "PlateServer/Host", "127.0.0.1" ).toString( );
}

void QConfigurator::SetPlateHostPort( quint16 nPort )
{
    pSettings->setValue( "PlateServer/Port", nPort );
}

void QConfigurator::GetPlateHostPort( quint16& nPort )
{
    nPort = pSettings->value( "PlateServer/Port", 60000 ).toUInt( );
}

void QConfigurator::SetDbHost( QString& strHost )
{
    pSettings->setValue( "DatabaseServer/Host", strHost );
}

void QConfigurator::GetDbHost( QString& strHost )
{
    strHost = pSettings->value( "DatabaseServer/Host", "127.0.0.1" ).toString( );
}

void QConfigurator::SetDbHostPort( quint16 nPort )
{
    pSettings->setValue( "DatabaseServer/Port", nPort );
}

void QConfigurator::GetDbHostPort( quint16& nPort )
{
    nPort = pSettings->value( "DatabaseServer/Port", 3306 ).toUInt( );
}

void QConfigurator::SetDbUser( QString& strUser )
{
    pSettings->setValue( "DatabaseServer/User", strUser );
}

void QConfigurator::GetDbUser( QString& strUser )
{
    strUser = pSettings->value( "DatabaseServer/User", "test" ).toString( );
}

void QConfigurator::SetDbPwd( QString& strPwd )
{
    pSettings->setValue( "DatabaseServer/Pwd", strPwd );
}

void QConfigurator::GetDbPwd( QString& strPwd )
{
    strPwd = pSettings->value( "DatabaseServer/Pwd", "test" ).toString( );
}

void QConfigurator::SetDbSchema( QString& strSchema )
{
    pSettings->setValue( "DatabaseServer/Schema", strSchema );
}

void QConfigurator::GetDbSchema( QString& strSchema )
{
    strSchema = pSettings->value( "DatabaseServer/Schema", "" ).toString( );
}

void QConfigurator::GetCustomerNameTitle( QStringList& lstNameTitle )
{
    lstNameTitle << "客户简称"
               << "客户"
               << "客户名";

    QString strValue = pSettings->value( "ExcelImport/Name", "" ).toString( );
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
