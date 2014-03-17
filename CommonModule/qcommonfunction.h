#ifndef QCOMMONFUNCTION_H
#define QCOMMONFUNCTION_H

#include <QObject>
#include <QCloseEvent>
#include <QMessageBox>
#include "commonmodule_global.h"
#include "CommonEnumType.h"
#include "CommonStructType.h"

class COMMONMODULESHARED_EXPORT QCommonFunction : public QObject
{
    Q_OBJECT
public:
    static void GetSpName( ParkSolution::SpType eSpType, QString& strSpName );
    static void GetSpXmlPattern( ParkSolution::SpType eSpType, QString& strXmlPattern );
    static void SystemCloseEvent( QWidget* pParent, QCloseEvent* pEvent );
    static QMessageBox::StandardButtons SaveDataBox( QWidget* pParent );
    static QMessageBox::StandardButtons DeleteDataBox( QWidget* pParent, QString& strText );
    static void CloseDiaglogBox( QWidget* pParent, QCloseEvent* pEvent );
    static QMessageBox::StandardButtons MessageBox( QString& strTitle, QString& strText, QWidget* pParent, QMessageBox::Icon icon );
    static void InformationBox( QWidget* pParent, QString& strText );
    static void SetWindowIcon( QWidget *pWidget );
    static void DisableHelpButton( QWidget *pWidget );
    static void SingleApplication( const char* pGUID );

private:
    explicit QCommonFunction(QObject *parent = 0);

signals:

public slots:

};

#endif // QCOMMONFUNCTION_H
