#ifndef QCONFIGURATOR_H
#define QCONFIGURATOR_H

#include <QObject>
#include <QSettings>
#include <QTextCodec>
#include "ConfigModule_global.h"
#include "../CommonModule/CommonTypedef.h"

class CONFIGMODULESHARED_EXPORT QConfigurator : public QObject
{
    Q_OBJECT
public:
    static QConfigurator* CreateConfigurator( );

    void SetPlayVoice( const bool bPlay );
    void GetPlayVoice( bool& bPlay ) const;

    void SetDropFrame( const int nStep );
    void GetDropFrame( int& nStep ) const;

    void SetWelcomeSound( const QString& strWelcome );
    void GetWelcomeSound( QString& strWelcome );

    void SetCustomerInVideo( const bool bVideo );
    void GetCustomerInVideo( bool& bVideo ) const;

    void SetCustomerOutVideo( const bool bVideo );
    void GetCustomerOutVideo( bool& bVideo ) const;

    // Qt  Enum Value
    void SetComName( const QString& strName );
    void GetComName( QString& strName ) const;

    void SetComBaudRate( const int nBaudRate );
    void GetComBaudRate( int& nBaudRate ) const;

    void SetComDataBit( const int nDataBit );
    void GetComDataBit( int& nDataBit ) const;

    void SetComStopBit( const int nStopBit );
    void GetComStopBit( int& nStopBit ) const;

    void SetComParity( const int nParity );
    void GetComParity( int& nParity ) const;

    void SetComFlowControl( const int nFlowControl );
    void GetComFlowControl( int& nFlowControl ) const;

    void SetComProtocol( const int nProtocol );
    void GetComProtocol( int& nProtocol ) const;

    void SetComLoopWriteCount( const int nLoopWriteCount );
    void GetComLoopWriteCount( int& nLoopWriteCount ) const;

    void SetComWriteSleep( const int nWriteSleep );
    void GetComWriteSleep( int& nWriteSleep ) const;

    void SetSmsAccessCode( const QString& strAccessCode );
    void GetSmsAccessCode( QString& strAccessCode ) const;

    void SetSmsCOM( const QString& strCOM );
    void GetSmsCOM( QString& strCOM ) const;

    void SetSmsCOMBaudRate( const int& nBaudRate );
    void GetSmsCOMBaudRate( int& nBaudRate ) const;

    void SetSmsStartup( const bool bStartup );
    void GetSmsStartup( bool& bStartup ) const;

    void SetZmqClientHost( const QString& strHost );
    void GetZmqClientHost( QString& strHost ) const;

    void SetZmqClientHostPort( const quint16 nPort );
    void GetZmqClientHostPort( quint16& nPort ) const;

    void SetZmqServerListenPort( const quint16 nPort );
    void GetZmqServerListenPort( quint16& nPort ) const;

    void SetDisplaySerializeLog( const bool bDisplay );
    void GetDisplaySerializeLog( bool& bDisplay ) const;

    void SetDisplayPlateLog( const bool bDisplay );
    void GetDisplayPlateLog( bool& bDisplay ) const;

    void SetDisplayDbLog( const bool bDisplay );
    void GetDisplayDbLog( bool& bDisplay ) const;

    void SetDisplayFtpLog( const bool bDisplay );
    void GetDisplayFtpLog( bool& bDisplay ) const;

    void SetDeleteImageFile( const bool bDetele );
    void GetDeleteImageFile( bool& bDetele ) const;

    void SetIPCInA( const QString& strIP );
    void GetIPCInA( QString& strIP ) const;

    void SetIPCInB( const QString& strIP );
    void GetIPCInB( QString& strIP ) const;

    void SetIPCOutA( const QString& strIP );
    void GetIPCOutA( QString& strIP ) const;

    void SetIPCOutB( const QString& strIP );
    void GetIPCOutB( QString& strIP ) const;

    void SetVideoType( const bool bIPC );
    void GetVideoType( bool& bIPC ) const;

    void SetVideoWay( const int nWay );
    void GetVideoWay( int& nWay ) const;

    void SetMotionDetection( const bool bMotion );
    void GetMotionDetection( bool& bMotion ) const;

    void SetCaptureCard( const QString& strCardType );
    void GetCaptureCard( QString& strCardType ) const;

    void SetIPCamera( const QString& strIPCType );
    void GetIPCamera( QString& strIPCType ) const;

    void SetIPCMainStream( const bool bMainStream );
    void GetIPCMainStream( bool& bMainStream ) const;

    void SetDongleOneWay( const bool bOneWay );
    void GetDongleOneWay( bool& bOneWay ) const;

    void SetPlateVideo( const bool bVideo );
    void GetPlateVideo( bool& bVideo ) const;

    void SetPlateProvider( const QString& strProvider );
    void GetPlateProvider( QString& strProvider ) const;

    void SetPlateMultiThread( const bool bMultiThread );
    void GetPlateMultiThread( bool& bMultiThread ) const;

    void SetPlateWay( const int nWay );
    void GetPlateWay( int& nWay ) const;

    void SetPlateStartupInterval( const bool bStartup );
    void GetPlateStartupInterval( bool& bStartup ) const;

    void SetPlateSameChannelInterval( const int nInterval );
    void GetPlateSameChannelInterval( int& nInterval ) const;

    void SetPlateDifferentChannelInterval( const int nInterval );
    void GetPlateDifferentChannelInterval( int& nInterval ) const;

    void SetPlateOutputAll( const bool bAll );
    void GetPlateOutputAll( bool& bAll ) const;

    void SetFtpHost( const QString& strHost );
    void GetFtpHost( QString& strHost ) const;

    void SetFtpHostPort( const quint16 nPort );
    void GetFtpHostPort( quint16& nPort ) const;

    void SetFtpUser( const QString& strUser );
    void GetFtpUser( QString& strUser ) const;

    void SetFtpPwd( const QString& strPwd );
    void GetFtpPwd( QString& strPwd ) const;

    void SetFtpBasePath( const QString& strBasePath );
    void GetFtpBasePath( QString& strBasePath ) const;

    void SetFtpStartupUpload( const bool bStartup );
    void GetFtpStartupUpload( bool& bStartup ) const;

    void SetHttpHost( const QString& strHost );
    void GetHttpHost( QString& strHost ) const;

    void SetHttpHostPort( const quint16 nPort );
    void GetHttpHostPort( quint16& nPort ) const;

    void SetPlateHost( const QString& strHost );
    void GetPlateHost( QString& strHost ) const;

    void SetPlateHostPort( const quint16 nPort );
    void GetPlateHostPort( quint16& nPort ) const;

    // Database connection parameter
    void SetDbHost( const QString& strHost );
    void GetDbHost( QString& strHost ) const;

    void SetDbHostPort( const quint16 nPort );
    void GetDbHostPort( quint16& nPort ) const;

    void SetDbUser( const QString& strUser );
    void GetDbUser( QString& strUser ) const;

    void SetDbPwd( const QString& strPwd );
    void GetDbPwd( QString& strPwd ) const;

    void SetDbSchema( const QString& strSchema );
    void GetDbSchema( QString& strSchema ) const;

    void GetDbParams( ParkSolution::QStringHash& hashParam );

    void SetDbThreadPoolMaxThread( const int nThreadCount );
    void GetDbThreadPoolMaxThread( int& nThreadCount ) const;

    void SetDbConnectPoolMaxConnect( const int nConnectCount );
    void GetDbConnectPoolMaxConnect( int& nConnectCount ) const;

    void GetCustomerNameTitle( QStringList& lstNameTitle ) const ;
    void GetCustomerPlateTitle( QStringList& lstPlateTitle ) const;

private:
    explicit QConfigurator(QObject *parent = 0);
    ~QConfigurator( );

private:
    QSettings* pSettings;

signals:

public slots:

};

#endif // QCONFIGURATOR_H
