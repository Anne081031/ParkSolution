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
    ~QConfigurator( );

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

private:
    QSettings* pSettings;

signals:

public slots:

};

#endif // QCONFIGURATOR_H
