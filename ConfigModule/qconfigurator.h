#ifndef QCONFIGURATOR_H
#define QCONFIGURATOR_H

#include <QObject>
#include <QSettings>
#include <QTextCodec>
#include "ConfigModule_global.h"

class CONFIGMODULESHARED_EXPORT QConfigurator : public QObject
{
    Q_OBJECT
public:
    static QConfigurator* CreateConfigurator( );

    void SetZmpClientHost( QString& strHost );
    void GetZmqClientHost( QString& strHost );

    void SetZmqClientHostPort( quint16 nPort );
    void GetZmqClientHostPort( quint16& nPort );

    void SetZmqServerListenPort( quint16 nPort );
    void GetZmqServerListenPort( quint16& nPort );

    void SetDisplaySerializeLog( bool bDisplay );
    void GetDisplaySerializeLog( bool& bDisplay );

    void SetDisplayPlateLog( bool bDisplay );
    void GetDisplayPlateLog( bool& bDisplay );

    void SetDisplayDbLog( bool bDisplay );
    void GetDisplayDbLog( bool& bDisplay );

    void SetDisplayFtpLog( bool bDisplay );
    void GetDisplayFtpLog( bool& bDisplay );

    void SetDeleteImageFile( bool bDetele );
    void GetDeleteImageFile( bool& bDetele );

    void SetIPCInA( QString& strIP );
    void GetIPCInA( QString& strIP );

    void SetIPCInB( QString& strIP );
    void GetIPCInB( QString& strIP );

    void SetIPCOutA( QString& strIP );
    void GetIPCOutA( QString& strIP );

    void SetIPCOutB( QString& strIP );
    void GetIPCOutB( QString& strIP );

    void SetVideoType( bool bIPC );
    void GetVideoType( bool& bIPC );

    void SetVideoWay( int nWay );
    void GetVideoWay( int& nWay );

    void SetCaptureCard( QString& strCardType );
    void GetCaptureCard( QString& strCardType );

    void SetIPCamera( QString& strIPCType );
    void GetIPCamera( QString& strIPCType );

    void SetIPCMainStream( bool bMainStream );
    void GetIPCMainStream( bool& bMainStream );

    void SetDongleOneWay( bool bOneWay );
    void GetDongleOneWay( bool& bOneWay );

    void SetPlateVideo( bool bVideo );
    void GetPlateVideo( bool& bVideo );

    void SetPlateProvider( QString& strProvider );
    void GetPlateProvider( QString& strProvider );

    void SetPlateMultiThread( bool bMultiThread );
    void GetPlateMultiThread( bool& bMultiThread );

    void SetPlateWay( int nWay );
    void GetPlateWay( int& nWay );

    void SetFtpHost( QString& strHost );
    void GetFtpHost( QString& strHost );

    void SetFtpHostPort( quint16 nPort );
    void GetFtpHostPort( quint16& nPort );

    void SetFtpUser( QString& strUser );
    void GetFtpUser( QString& strUser );

    void SetFtpPwd( QString& strPwd );
    void GetFtpPwd( QString& strPwd );

    void SetFtpBasePath( QString& strBasePath );
    void GetFtpBasePath( QString& strBasePath );

    void SetHttpHost( QString& strHost );
    void GetHttpHost( QString& strHost );

    void SetHttpHostPort( quint16 nPort );
    void GetHttpHostPort( quint16& nPort );

    void SetPlateHost( QString& strHost );
    void GetPlateHost( QString& strHost );

    void SetPlateHostPort( quint16 nPort );
    void GetPlateHostPort( quint16& nPort );

    // Database connection parameter
    void SetDbHost( QString& strHost );
    void GetDbHost( QString& strHost );

    void SetDbHostPort( quint16 nPort );
    void GetDbHostPort( quint16& nPort );

    void SetDbUser( QString& strUser );
    void GetDbUser( QString& strUser );

    void SetDbPwd( QString& strPwd );
    void GetDbPwd( QString& strPwd );

    void SetDbSchema( QString& strSchema );
    void GetDbSchema( QString& strSchema );

    void GetCustomerNameTitle( QStringList& lstNameTitle );
    void GetCustomerPlateTitle( QStringList& lstPlateTitle );

private:
    explicit QConfigurator(QObject *parent = 0);
    ~QConfigurator( );

private:
    QSettings* pSettings;

signals:

public slots:

};

#endif // QCONFIGURATOR_H
