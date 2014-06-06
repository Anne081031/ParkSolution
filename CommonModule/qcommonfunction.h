#ifndef QCOMMONFUNCTION_H
#define QCOMMONFUNCTION_H

#include <QObject>
#include <QCloseEvent>
#include <QMessageBox>
#include <QPushButton>
#include <QScrollArea>
#include "commonmodule_global.h"
#include "CommonEnumType.h"
#include "CommonStructType.h"

class COMMONMODULESHARED_EXPORT QCommonFunction : public QObject
{
    Q_OBJECT
public:
    static void ReadAllFile( const QString& strFile, QByteArray& byData );
    static void GetAppCaptureImagePath( QString& strPath );
    static void GetImageFromBase64( QByteArray& byImage, const QString& strBase64 );
    static void GetImageBase64( QString &strBase64, const QString& strFile );
    static void GetImageBase64( QString &strBase64, const QByteArray& byFile );
    static void GetCurrentDateTime( QString& strDateTime );
    static void String2DateTime( const QString& strDateTime, QDateTime& dtDateTime );
    static void String2Date( const QString& strDate, QDate& dtDate );
    static void String2Time( const QString& strTime, QTime& dtTime );
    static void DateTime2String( const QDateTime& dtDateTime, QString& strDateTime );
    static void Date2String( const QDate& dtDate, QString& strDate );
    static void Time2String( const QTime& dtTime, QString& strTime );
    static void GetCurrentDateTimeDigital( QString& strDateTime );
    static void GetDateTimeDigital(  const QDateTime& dtDateTime, QString& strDateTime );
    static void GetSpName( ParkSolution::SpType eSpType, QString& strSpName );
    static void GetSpXmlPattern( ParkSolution::SpType eSpType, QString& strXmlPattern );
    static bool SystemCloseEvent( QWidget* pParent, QCloseEvent* pEvent );
    static QMessageBox::StandardButtons SaveDataBox( QWidget* pParent );
    static QMessageBox::StandardButtons DeleteDataBox( QWidget* pParent, QString& strText );
    static bool CloseDiaglogBox( QWidget* pParent, QCloseEvent* pEvent );
    static QMessageBox::StandardButtons MessageBox( QString& strTitle, QString& strText, QWidget* pParent, QMessageBox::Icon icon );
    static void InformationBox( QWidget* pParent, QString& strText );
    static void CriticalBox( QWidget* pParent, QString& strText );
    static void SetMessageBoxProperty( QMessageBox& msgBox, QMessageBox::Icon icon,
                                       QString& strTitle, QString& strText, Qt::WindowModality winModality,
                                       bool bDisableHelpButton = true,
                                       bool bDisableCloseButton = true );
    static void SetWindowIcon( QWidget *pWidget );
    static void SetApplicationIcon( );
    static void DisableHelpButton( QWidget *pWidget );
    static void DisableCloseButton( QWidget *pWidget );
    static void SingleApplication( const char* pGUID );
    static QTextCodec* GetTextCodec( );
    static void GetUIStyleSheet( QString& strStyleSheet );
    static void GetButtonStyleSheet( QString& strBtnStyleSheet );
    static void GetDlgLoginStyleSheet( QString& strDlgStyleSheet );
    static void GetCbxStyleSheet( QString& strCbxStyleSheet );
    static void GetTableViewStyleSheet( QString& strTabViewStyleSheet );
    static void SetButtonMiniSize( QAbstractButton* pBtn, int nWidth = 75, int nHeight = 23 );
    static void SetScrollAreaStyleSheet( QScrollArea* pScrArea );

private:
    explicit QCommonFunction(QObject *parent = 0);

signals:

public slots:

};

#endif // QCOMMONFUNCTION_H
