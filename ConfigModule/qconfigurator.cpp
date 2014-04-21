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

void QConfigurator::SetZmpClientHost( QString& strHost )
{
    pSettings->setValue( "ZmqClient/ZmqServer", strHost );
}

void QConfigurator::GetZmqClientHost( QString& strHost )
{
    strHost = pSettings->value( "ZmqClient/ZmqServer", "127.0.0.1" ).toString( );
}

void QConfigurator::SetZmqClientHostPort( quint16 nPort )
{
    pSettings->setValue( "ZmqClient/ZmqServerPort", nPort );
}

void QConfigurator::GetZmqClientHostPort( quint16& nPort )
{
    nPort = pSettings->value( "ZmqClient/ZmqServerPort", 60000 ).toUInt( );
}

void QConfigurator::SetZmqServerListenPort( quint16 nPort )
{
    pSettings->setValue( "ZmqServer/ZmqListenPort", nPort );
}

void QConfigurator::GetZmqServerListenPort( quint16& nPort )
{
    nPort = pSettings->value( "ZmqServer/ZmqListenPort", 60000 ).toUInt( );
}

void QConfigurator::SetDisplaySerializeLog( bool bDisplay )
{
    pSettings->setValue( "Miscellaneous/DisplaySerializeLog", bDisplay );
}

void QConfigurator::GetDisplaySerializeLog( bool& bDisplay )
{
    bDisplay = pSettings->value( "Miscellaneous/DisplaySerializeLog", true ).toBool( );
}

void QConfigurator::SetDisplayPlateLog( bool bDisplay )
{
    pSettings->setValue( "Miscellaneous/DisplayPlateLog", bDisplay );
}

void QConfigurator::GetDisplayPlateLog( bool& bDisplay )
{
    bDisplay = pSettings->value( "Miscellaneous/DisplayPlateLog", true ).toBool( );
}

void QConfigurator::SetDisplayDbLog( bool bDisplay )
{
    pSettings->setValue( "Miscellaneous/DisplayDbLog", bDisplay );
}

void QConfigurator::GetDisplayDbLog( bool& bDisplay )
{
    bDisplay = pSettings->value( "Miscellaneous/DisplayDbLog", true ).toBool( );
}

void QConfigurator::SetDisplayFtpLog( bool bDisplay )
{
    pSettings->setValue( "Miscellaneous/DisplayFtpLog", bDisplay );
}

void QConfigurator::GetDisplayFtpLog( bool& bDisplay )
{
    bDisplay = pSettings->value( "Miscellaneous/DisplayFtpLog", true ).toBool( );
}

void QConfigurator::SetDeleteImageFile( bool bDetele )
{
   pSettings->setValue( "Miscellaneous/DeleteImageFile", bDetele );
}

void QConfigurator::GetDeleteImageFile( bool& bDetele )
{
    bDetele = pSettings->value( "Miscellaneous/DeleteImageFile", true ).toBool( );
}

QConfigurator::~QConfigurator( )
{
    delete pSettings;
}

void QConfigurator::SetIPCInA( QString& strIP )
{
    pSettings->setValue( "DigitalVideo/IPCInA", strIP );
}

void QConfigurator::GetIPCInA( QString& strIP )
{
    strIP = pSettings->value( "DigitalVideo/IPCInA", "127.0.0.1" ).toString( );
}

void QConfigurator::SetIPCInB( QString& strIP )
{
    pSettings->setValue( "DigitalVideo/IPCInB", strIP );
}

void QConfigurator::GetIPCInB( QString& strIP )
{
    strIP = pSettings->value( "DigitalVideo/IPCInB", "127.0.0.1" ).toString( );
}

void QConfigurator::SetIPCOutA( QString& strIP )
{
    pSettings->setValue( "DigitalVideo/IPCOutA", strIP );
}

void QConfigurator::GetIPCOutA( QString& strIP )
{
    strIP = pSettings->value( "DigitalVideo/IPCOutA", "127.0.0.1" ).toString( );
}

void QConfigurator::SetIPCOutB( QString& strIP )
{
    pSettings->setValue( "DigitalVideo/IPCOutB", strIP );
}

void QConfigurator::GetIPCOutB( QString& strIP )
{
    strIP = pSettings->value( "DigitalVideo/IPCOutB", "127.0.0.1" ).toString( );
}

void QConfigurator::SetVideoType( bool bIPC )
{
   pSettings->setValue( "Video/IPC", bIPC );
}

void QConfigurator::GetVideoType( bool& bIPC )
{
    bIPC = pSettings->value( "Video/IPC", true ).toBool( );
}

void QConfigurator::SetVideoWay( int nWay )
{
    pSettings->setValue( "Video/Way", nWay );
}

void QConfigurator::GetVideoWay( int& nWay )
{
    nWay = pSettings->value( "Video/Way", true ).toInt( );
}

void QConfigurator::SetCaptureCard( QString& strCardType )
{
    pSettings->setValue( "AnalogVideo/CaptureCard", strCardType );
}

void QConfigurator::GetCaptureCard( QString& strCardType )
{
    strCardType = pSettings->value( "AnalogVideo/CaptureCard", "HK" ).toString( );
}

void QConfigurator::SetIPCamera( QString& strIPCType )
{
    pSettings->setValue( "DigitalVideo/IPCamera", strIPCType );
}

void QConfigurator::GetIPCamera( QString& strIPCType )
{
    strIPCType = pSettings->value( "DigitalVideo/IPCamera", "HK" ).toString( );
}

void QConfigurator::SetIPCMainStream( bool bMainStream )
{
    pSettings->setValue( "DigitalVideo/MainStream", bMainStream );
}

void QConfigurator::GetIPCMainStream( bool& bMainStream )
{
    bMainStream = pSettings->value( "DigitalVideo/MainStream", false ).toBool( );
}

void QConfigurator::SetDongleOneWay( bool bOneWay )
{
    pSettings->setValue( "LPR/DongleOneWay", bOneWay );
}

void QConfigurator::GetDongleOneWay( bool& bOneWay )
{
    bOneWay = pSettings->value( "LPR/DongleOneWay", true ).toBool( );
}

void QConfigurator::SetPlateVideo( bool bVideo )
{
    pSettings->setValue( "LPR/PlateVideo", bVideo );
}

void QConfigurator::GetPlateVideo( bool& bVideo )
{
    bVideo = pSettings->value( "LPR/PlateVideo", true ).toBool( );
}

void QConfigurator::SetPlateProvider( QString& strProvider )
{
    pSettings->setValue( "LPR/PlateProvider", strProvider );
}

void QConfigurator::GetPlateProvider( QString& strProvider )
{
    strProvider = pSettings->value( "LPR/PlateProvider", "VZ" ).toString( );
}

void QConfigurator::SetPlateMultiThread( bool bMultiThread )
{
    pSettings->setValue( "LPR/PlateMultihread", bMultiThread );
}

void QConfigurator::GetPlateMultiThread( bool& bMultiThread )
{
    bMultiThread = pSettings->value( "LPR/PlateMultihread", false ).toBool( );
}

void QConfigurator::SetPlateWay( int nWay )
{
    pSettings->setValue( "LPR/PlateWay", nWay );
}

void QConfigurator::GetPlateWay( int& nWay )
{
    nWay = pSettings->value( "LPR/PlateWay", 1 ).toInt( );
}

void QConfigurator::SetFtpHost( QString& strHost )
{
    pSettings->setValue( "FtpServer/Host", strHost );
}

void QConfigurator::GetFtpHost( QString& strHost )
{
    strHost = pSettings->value( "FtpServer/Host", "127.0.0.1" ).toString( );
}

void QConfigurator::SetFtpHostPort( quint16 nPort )
{
    pSettings->setValue( "FtpServer/Port", nPort );
}

void QConfigurator::GetFtpHostPort( quint16& nPort )
{
    nPort = pSettings->value( "FtpServer/Port", 21 ).toUInt( );
}

void QConfigurator::SetFtpUser( QString& strUser )
{
    pSettings->setValue( "FtpServer/User", strUser );
}

void QConfigurator::GetFtpUser( QString& strUser )
{
    strUser = pSettings->value( "FtpServer/User", "Ftp" ).toString( );
}

void QConfigurator::SetFtpPwd( QString& strPwd )
{
    pSettings->setValue( "FtpServer/Pwd", strPwd );
}

void QConfigurator::GetFtpPwd( QString& strPwd )
{
    strPwd = pSettings->value( "FtpServer/Pwd", "Ftp" ).toString( );
}

void QConfigurator::SetFtpBasePath( QString& strBasePath )
{
    pSettings->setValue( "FtpServer/BasePath", strBasePath );
}

void QConfigurator::GetFtpBasePath( QString& strBasePath )
{
    strBasePath = pSettings->value( "FtpServer/BasePath", "/" ).toString( );
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
    pSettings->setValue( "PlateServer/Host", strHost );
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
