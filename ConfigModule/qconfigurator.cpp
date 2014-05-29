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

void QConfigurator::GetDbParams( ParkSolution::QStringHash& hashParam )
{
    ParkSolution::DbConnectInfo dbInfo;

    QString strValue;
    GetDbHost( strValue );
    hashParam[ dbInfo.strHost ] = strValue;

    quint16 nPort = 0;
    GetDbHostPort( nPort );
    hashParam[ dbInfo.strPort ] = QString::number( nPort );

    GetDbUser( strValue );
    hashParam[ dbInfo.strUser ] = strValue;

    GetDbPwd( strValue );
    hashParam[ dbInfo.strPwd ] = strValue;

    GetDbSchema( strValue );
    hashParam[ dbInfo.strSchema ] = strValue;
}

void QConfigurator::SetCustomerInVideo( const bool bVideo )
{
    pSettings->setValue( "CustomerVideo/InVideo", bVideo );
}

void QConfigurator::GetCustomerInVideo( bool& bVideo ) const
{
    bVideo = pSettings->value( "CustomerVideo/InVideo", false ).toBool( );
}

void QConfigurator::SetCustomerOutVideo( const bool bVideo )
{
    pSettings->setValue( "CustomerVideo/OutVideo", bVideo );
}

void QConfigurator::GetCustomerOutVideo( bool& bVideo ) const
{
    bVideo = pSettings->value( "CustomerVideo/OutVideo", false ).toBool( );
}

void QConfigurator::SetComName( const QString& strName )
{
     pSettings->setValue( "SerialPort/Name", strName );
}

void QConfigurator::GetComName( QString& strName ) const
{
    strName = pSettings->value( "SerialPort/Name", "COM1" ).toInt( );
}

void QConfigurator::SetComBaudRate( const int nBaudRate )
{
     pSettings->setValue( "SerialPort/BaudRate", nBaudRate );
}

void QConfigurator::GetComBaudRate( int& nBaudRate ) const
{
    nBaudRate = pSettings->value( "SerialPort/BaudRate", 115200 ).toInt( );
}

void QConfigurator::SetComDataBit( const int nDataBit )
{
     pSettings->setValue( "SerialPort/DataBit", nDataBit );
}

void QConfigurator::GetComDataBit( int& nDataBit ) const
{
    nDataBit = pSettings->value( "SerialPort/DataBit", 8 ).toInt( );
}

void QConfigurator::SetComStopBit( const int nStopBit )
{
     pSettings->setValue( "SerialPort/StopBit", nStopBit );
}

void QConfigurator::GetComStopBit( int& nStopBit ) const
{
    nStopBit = pSettings->value( "SerialPort/StopBit", 1 ).toInt( );
}

void QConfigurator::SetComParity( const int nParity )
{
     pSettings->setValue( "SerialPort/Parity", nParity );
}

void QConfigurator::GetComParity( int& nParity ) const
{
    nParity = pSettings->value( "SerialPort/Parity", 0 ).toInt( );
}

void QConfigurator::SetComFlowControl( const int nFlowControl )
{
     pSettings->setValue( "SerialPort/FlowControl", nFlowControl );
}

void QConfigurator::GetComFlowControl( int& nFlowControl ) const
{
    nFlowControl = pSettings->value( "SerialPort/FlowControl", 0 ).toInt( );
}

void QConfigurator::SetComProtocol( const int nProtocol )
{
     pSettings->setValue( "SerialPort/Protocol", nProtocol );
}

void QConfigurator::GetComProtocol( int& nProtocol ) const
{
    nProtocol = pSettings->value( "SerialPort/Protocol", 0 ).toInt( );
}

void QConfigurator::SetComLoopWriteCount( const int nLoopWriteCount )
{
    pSettings->setValue( "SerialPort/LoopWriteCount", nLoopWriteCount );
}

void QConfigurator::GetComLoopWriteCount( int& nLoopWriteCount ) const
{
    nLoopWriteCount = pSettings->value( "SerialPort/LoopWriteCount", 10 ).toInt( );
}

void QConfigurator::SetComWriteSleep( const int nWriteSleep )
{
    pSettings->setValue( "SerialPort/WriteSleep", nWriteSleep );
}

void QConfigurator::GetComWriteSleep( int& nWriteSleep ) const
{
    nWriteSleep = pSettings->value( "SerialPort/WriteSleep", 500 ).toInt( );
}

void QConfigurator::SetSmsAccessCode( const QString& strAccessCode )
{
    pSettings->setValue( "Sms/AccessCode", strAccessCode );
}

void QConfigurator::GetSmsAccessCode( QString& strAccessCode ) const
{
     strAccessCode = pSettings->value( "Sms/AccessCode", "176032225005207" ).toString( );
}

void QConfigurator::SetSmsCOM( const QString& strCOM )
{
    pSettings->setValue( "Sms/COM", strCOM );
}

void QConfigurator::GetSmsCOM( QString& strCOM ) const
{
     strCOM = pSettings->value( "Sms/COM", "COM1" ).toString( );
}

void QConfigurator::SetSmsCOMBaudRate( const int& nBaudRate )
{
    pSettings->setValue( "Sms/BaudRate", nBaudRate );
}

void QConfigurator::GetSmsCOMBaudRate( int& nBaudRate ) const
{
     nBaudRate = pSettings->value( "Sms/BaudRate", 115200 ).toInt( );
}

void QConfigurator::SetSmsStartup( const bool bStartup )
{
    pSettings->setValue( "Sms/Startup", bStartup );
}

void QConfigurator::GetSmsStartup( bool& bStartup ) const
{
    bStartup = pSettings->value( "Sms/Startup", false ).toBool( );
}

void QConfigurator::SetZmqClientHost( const QString& strHost )
{
    pSettings->setValue( "ZmqClient/ZmqServer", strHost );
}

void QConfigurator::GetZmqClientHost( QString& strHost ) const
{
    strHost = pSettings->value( "ZmqClient/ZmqServer", "127.0.0.1" ).toString( );
}

void QConfigurator::SetZmqClientHostPort( const quint16 nPort )
{
    pSettings->setValue( "ZmqClient/ZmqServerPort", nPort );
}

void QConfigurator::GetZmqClientHostPort( quint16& nPort ) const
{
    nPort = pSettings->value( "ZmqClient/ZmqServerPort", 60000 ).toUInt( );
}

void QConfigurator::SetZmqServerListenPort( const quint16 nPort )
{
    pSettings->setValue( "ZmqServer/ZmqListenPort", nPort );
}

void QConfigurator::GetZmqServerListenPort( quint16& nPort ) const
{
    nPort = pSettings->value( "ZmqServer/ZmqListenPort", 60000 ).toUInt( );
}

void QConfigurator::SetDisplaySerializeLog( const bool bDisplay )
{
    pSettings->setValue( "Miscellaneous/DisplaySerializeLog", bDisplay );
}

void QConfigurator::GetDisplaySerializeLog( bool& bDisplay ) const
{
    bDisplay = pSettings->value( "Miscellaneous/DisplaySerializeLog", true ).toBool( );
}

void QConfigurator::SetDisplayPlateLog( const bool bDisplay )
{
    pSettings->setValue( "Miscellaneous/DisplayPlateLog", bDisplay );
}

void QConfigurator::GetDisplayPlateLog( bool& bDisplay ) const
{
    bDisplay = pSettings->value( "Miscellaneous/DisplayPlateLog", true ).toBool( );
}

void QConfigurator::SetDisplayDbLog( const bool bDisplay )
{
    pSettings->setValue( "Miscellaneous/DisplayDbLog", bDisplay );
}

void QConfigurator::GetDisplayDbLog( bool& bDisplay ) const
{
    bDisplay = pSettings->value( "Miscellaneous/DisplayDbLog", true ).toBool( );
}

void QConfigurator::SetDisplayFtpLog( const bool bDisplay )
{
    pSettings->setValue( "Miscellaneous/DisplayFtpLog", bDisplay );
}

void QConfigurator::GetDisplayFtpLog( bool& bDisplay ) const
{
    bDisplay = pSettings->value( "Miscellaneous/DisplayFtpLog", true ).toBool( );
}

void QConfigurator::SetDeleteImageFile( const bool bDetele )
{
   pSettings->setValue( "Miscellaneous/DeleteImageFile", bDetele );
}

void QConfigurator::GetDeleteImageFile( bool& bDetele ) const
{
    bDetele = pSettings->value( "Miscellaneous/DeleteImageFile", true ).toBool( );
}

QConfigurator::~QConfigurator( )
{
    delete pSettings;
}

void QConfigurator::SetIPCInA( const QString& strIP )
{
    pSettings->setValue( "DigitalVideo/IPCInA", strIP );
}

void QConfigurator::GetIPCInA( QString& strIP ) const
{
    strIP = pSettings->value( "DigitalVideo/IPCInA", "127.0.0.1" ).toString( );
}

void QConfigurator::SetIPCInB( const QString& strIP )
{
    pSettings->setValue( "DigitalVideo/IPCInB", strIP );
}

void QConfigurator::GetIPCInB( QString& strIP ) const
{
    strIP = pSettings->value( "DigitalVideo/IPCInB", "127.0.0.1" ).toString( );
}

void QConfigurator::SetIPCOutA( const QString& strIP )
{
    pSettings->setValue( "DigitalVideo/IPCOutA", strIP );
}

void QConfigurator::GetIPCOutA( QString& strIP ) const
{
    strIP = pSettings->value( "DigitalVideo/IPCOutA", "127.0.0.1" ).toString( );
}

void QConfigurator::SetIPCOutB( const QString& strIP )
{
    pSettings->setValue( "DigitalVideo/IPCOutB", strIP );
}

void QConfigurator::GetIPCOutB( QString& strIP ) const
{
    strIP = pSettings->value( "DigitalVideo/IPCOutB", "127.0.0.1" ).toString( );
}

void QConfigurator::SetVideoType( const bool bIPC )
{
   pSettings->setValue( "Video/IPC", bIPC );
}

void QConfigurator::GetVideoType( bool& bIPC ) const
{
    bIPC = pSettings->value( "Video/IPC", true ).toBool( );
}

void QConfigurator::SetVideoWay( const int nWay )
{
    pSettings->setValue( "Video/Way", nWay );
}

void QConfigurator::GetVideoWay( int& nWay ) const
{
    nWay = pSettings->value( "Video/Way", true ).toInt( );
}

void QConfigurator::SetCaptureCard( const QString& strCardType )
{
    pSettings->setValue( "AnalogVideo/CaptureCard", strCardType );
}

void QConfigurator::GetCaptureCard( QString& strCardType ) const
{
    strCardType = pSettings->value( "AnalogVideo/CaptureCard", "HK" ).toString( );
}

void QConfigurator::SetIPCamera( const QString& strIPCType )
{
    pSettings->setValue( "DigitalVideo/IPCamera", strIPCType );
}

void QConfigurator::GetIPCamera( QString& strIPCType ) const
{
    strIPCType = pSettings->value( "DigitalVideo/IPCamera", "HK" ).toString( );
}

void QConfigurator::SetIPCMainStream( const bool bMainStream )
{
    pSettings->setValue( "DigitalVideo/MainStream", bMainStream );
}

void QConfigurator::GetIPCMainStream( bool& bMainStream ) const
{
    bMainStream = pSettings->value( "DigitalVideo/MainStream", false ).toBool( );
}

void QConfigurator::SetDongleOneWay( const bool bOneWay )
{
    pSettings->setValue( "LPR/DongleOneWay", bOneWay );
}

void QConfigurator::GetDongleOneWay( bool& bOneWay ) const
{
    bOneWay = pSettings->value( "LPR/DongleOneWay", true ).toBool( );
}

void QConfigurator::SetPlateVideo( const bool bVideo )
{
    pSettings->setValue( "LPR/PlateVideo", bVideo );
}

void QConfigurator::GetPlateVideo( bool& bVideo ) const
{
    bVideo = pSettings->value( "LPR/PlateVideo", true ).toBool( );
}

void QConfigurator::SetPlateProvider( const QString& strProvider )
{
    pSettings->setValue( "LPR/PlateProvider", strProvider );
}

void QConfigurator::GetPlateProvider( QString& strProvider ) const
{
    strProvider = pSettings->value( "LPR/PlateProvider", "VZ" ).toString( );
}

void QConfigurator::SetPlateMultiThread( const bool bMultiThread )
{
    pSettings->setValue( "LPR/PlateMultiThread", bMultiThread );
}

void QConfigurator::GetPlateMultiThread( bool& bMultiThread ) const
{
    bMultiThread = pSettings->value( "LPR/PlateMultiThread", false ).toBool( );
}

void QConfigurator::SetPlateWay( const int nWay )
{
    pSettings->setValue( "LPR/PlateWay", nWay );
}

void QConfigurator::GetPlateWay( int& nWay ) const
{
    nWay = pSettings->value( "LPR/PlateWay", 1 ).toInt( );
}

void QConfigurator::SetFtpHost( const QString& strHost )
{
    pSettings->setValue( "FtpServer/Host", strHost );
}

void QConfigurator::SetPlateStartupInterval( const bool bStartup )
{
     pSettings->setValue( "InOutPlateInterval/StartupInterval", bStartup );
}

void QConfigurator::GetPlateStartupInterval( bool& bStartup ) const
{
    bStartup = pSettings->value( "InOutPlateInterval/StartupInterval", false ).toBool( );
}

void QConfigurator::SetPlateOutputAll( const bool bAll )
{
    pSettings->setValue( "LPR/PlateOutputAll", bAll );
}

void QConfigurator::GetPlateOutputAll( bool& bAll ) const
{
    bAll = pSettings->value( "LPR/PlateOutputAll", false ).toBool( );
}

void QConfigurator::SetPlateSameChannelInterval( const int nInterval )
{
    pSettings->setValue( "InOutPlateInterval/SameChannelInterval", nInterval );
}

void QConfigurator::GetPlateSameChannelInterval( int& nInterval ) const
{
    nInterval = pSettings->value( "InOutPlateInterval/SameChannelInterval", 30 ).toInt( );
}

void QConfigurator::SetPlateDifferentChannelInterval( const int nInterval )
{
    pSettings->setValue( "InOutPlateInterval/DifferentChannelInterval", nInterval );
}

void QConfigurator::GetPlateDifferentChannelInterval( int& nInterval ) const
{
    nInterval = pSettings->value( "InOutPlateInterval/DifferentChannelInterval", 60 ).toInt( );
}

void QConfigurator::GetFtpHost( QString& strHost ) const
{
    strHost = pSettings->value( "FtpServer/Host", "127.0.0.1" ).toString( );
}

void QConfigurator::SetFtpHostPort( const quint16 nPort )
{
    pSettings->setValue( "FtpServer/Port", nPort );
}

void QConfigurator::GetFtpHostPort( quint16& nPort ) const
{
    nPort = pSettings->value( "FtpServer/Port", 21 ).toUInt( );
}

void QConfigurator::SetFtpUser( const QString& strUser )
{
    pSettings->setValue( "FtpServer/User", strUser );
}

void QConfigurator::GetFtpUser( QString& strUser ) const
{
    strUser = pSettings->value( "FtpServer/User", "Ftp" ).toString( );
}

void QConfigurator::SetFtpPwd( const QString& strPwd )
{
    pSettings->setValue( "FtpServer/Pwd", strPwd );
}

void QConfigurator::GetFtpPwd( QString& strPwd ) const
{
    strPwd = pSettings->value( "FtpServer/Pwd", "Ftp" ).toString( );
}

void QConfigurator::SetFtpBasePath( const QString& strBasePath )
{
    pSettings->setValue( "FtpServer/BasePath", strBasePath );
}

void QConfigurator::GetFtpBasePath( QString& strBasePath ) const
{
    strBasePath = pSettings->value( "FtpServer/BasePath", "/" ).toString( );
}

void QConfigurator::SetHttpHost( const QString& strHost )
{
    pSettings->setValue( "HttpServer/Host", strHost );
}

void QConfigurator::SetFtpStartupUpload( const bool bStartup )
{
    pSettings->setValue( "FtpServer/StartupUpload", bStartup );
}

void QConfigurator::GetFtpStartupUpload( bool& bStartup ) const
{
    pSettings->setValue( "FtpServer/StartupUpload", bStartup );
}

void QConfigurator::GetHttpHost( QString& strHost ) const
{
    strHost = pSettings->value( "HttpServer/Host", "127.0.0.1" ).toString( );
}

void QConfigurator::SetHttpHostPort( const quint16 nPort )
{
    pSettings->setValue( "HttpServer/Port", nPort );
}

void QConfigurator::GetHttpHostPort( quint16& nPort ) const
{
    nPort = pSettings->value( "HttpServer/Port", 80 ).toUInt( );
}

void QConfigurator::SetPlateHost( const QString& strHost )
{
    pSettings->setValue( "PlateServer/Host", strHost );
}

void QConfigurator::GetPlateHost( QString& strHost ) const
{
    strHost = pSettings->value( "PlateServer/Host", "127.0.0.1" ).toString( );
}

void QConfigurator::SetPlateHostPort( const quint16 nPort )
{
    pSettings->setValue( "PlateServer/Port", nPort );
}

void QConfigurator::GetPlateHostPort( quint16& nPort ) const
{
    nPort = pSettings->value( "PlateServer/Port", 60000 ).toUInt( );
}

void QConfigurator::SetDbHost( const QString& strHost )
{
    pSettings->setValue( "DatabaseServer/Host", strHost );
}

void QConfigurator::GetDbHost( QString& strHost ) const
{
    strHost = pSettings->value( "DatabaseServer/Host", "127.0.0.1" ).toString( );
}

void QConfigurator::SetDbHostPort( const quint16 nPort )
{
    pSettings->setValue( "DatabaseServer/Port", nPort );
}

void QConfigurator::GetDbHostPort( quint16& nPort ) const
{
    nPort = pSettings->value( "DatabaseServer/Port", 3306 ).toUInt( );
}

void QConfigurator::SetDbUser( const QString& strUser )
{
    pSettings->setValue( "DatabaseServer/User", strUser );
}

void QConfigurator::GetDbUser( QString& strUser ) const
{
    strUser = pSettings->value( "DatabaseServer/User", "test" ).toString( );
}

void QConfigurator::SetDbPwd( const QString& strPwd )
{
    pSettings->setValue( "DatabaseServer/Pwd", strPwd );
}

void QConfigurator::GetDbPwd( QString& strPwd ) const
{
    strPwd = pSettings->value( "DatabaseServer/Pwd", "test" ).toString( );
}

void QConfigurator::SetDbSchema( const QString& strSchema )
{
    pSettings->setValue( "DatabaseServer/Schema", strSchema );
}

void QConfigurator::GetDbSchema( QString& strSchema ) const
{
    strSchema = pSettings->value( "DatabaseServer/Schema", "" ).toString( );
}

void QConfigurator::SetDbThreadPoolMaxThread( const int nThreadCount )
{
    pSettings->setValue( "DatabaseServer/ThreadPoolMaxThread", nThreadCount );
}

void QConfigurator::GetDbThreadPoolMaxThread( int& nThreadCount ) const
{
    nThreadCount = pSettings->value( "DatabaseServer/ThreadPoolMaxThread", 10 ).toInt( );
}

void QConfigurator::SetDbConnectPoolMaxConnect( const int nConnectCount )
{
    pSettings->setValue( "DatabaseServer/ConnectPoolMaxConnect", nConnectCount );
}

void QConfigurator::GetDbConnectPoolMaxConnect( int& nConnectCount ) const
{
    nConnectCount = pSettings->value( "DatabaseServer/ConnectPoolMaxConnect", 10 ).toInt( );
}

void QConfigurator::GetCustomerNameTitle( QStringList& lstNameTitle ) const
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

void QConfigurator::GetCustomerPlateTitle( QStringList& lstPlateTitle ) const
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
