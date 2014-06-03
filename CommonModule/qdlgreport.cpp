#include "qdlgreport.h"
#include "ui_qdlgreport.h"
#include <QtCore>
#include <winsock2.h>
#include <windows.h>
#include <psapi.h>

QDlgReport::QDlgReport(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::QDlgReport)
{
    ui->setupUi(this);
    QCommonFunction::DisableHelpButton( this );

    ui->dtStart->setDateTime( QDateTime::currentDateTime( ) );
    ui->dtEnd->setDateTime( QDateTime::currentDateTime( ).addMonths( 1 ) );
}

QDlgReport::~QDlgReport()
{
    delete ui;
}

void QDlgReport::DisplayReport( const QByteArray &byJson )
{
    QJsonParseError jsonError;
    QJsonDocument jsonDoc = QJsonDocument::fromJson( byJson, &jsonError );

    if ( QJsonParseError::NoError != jsonError.error ) {
        return;
    }

    if ( jsonDoc.isNull( ) || jsonDoc.isEmpty( ) ) {
        return;
    }

    QJsonObject jsonObj = jsonDoc.object( );
    if ( jsonObj.isEmpty( ) ) {
        return;
    }

    QJsonValue jsonValue = jsonObj.value( "HTML" );
    if ( jsonValue.isNull( ) ) {
        return;
    }

    QString strHTML = jsonValue.toString( );

    ui->webView->setHtml( strHTML );
}

void QDlgReport::QueryData( int nType )
{
    QStringList lstParams;

    lstParams << QString::number( nType )
              << ui->dtStart->text( ) << ui->dtEnd->text( );

    emit ReportQuery( lstParams );
}

void QDlgReport::on_btQuerySum_clicked()
{
    QueryData( ui->cbxType->currentIndex( ) );
}

void QDlgReport::on_btPrint_clicked()
{
    Print( *ui->webView );
}

void QDlgReport::Print( QWebView& wvReport )
{
    if ( !GetAdboeExePath( strAdobeExe ) ) {
        return;
    }

    KillAdobeProcess( strAdobeExe );

    printer.setPageSize( QPrinter::A4 );
    printer.setOutputFormat( QPrinter::PdfFormat );

    QString strFile = "reporter.pdf";
    if ( QFile::exists( strFile ) ) {
        QFile::remove( strFile );
        Sleep( 1000 );
    }

    printer.setOutputFileName( strFile );
    wvReport.print( &printer );

    //Call Adobe Reader print pdf
    PrintPdf( strFile );
}

void QDlgReport::KillAdobeProcess( QString &strExe )
{
    DWORD dwProcID[ 1024 ] = { 0 };
    DWORD dwRealByte = 0;

    if ( !EnumProcesses( dwProcID, sizeof ( dwProcID ), &dwRealByte ) ) {
        return;
    }

    DWORD dwProcCount = dwRealByte / sizeof ( DWORD );
    HANDLE hProc = NULL;
    DWORD dwProc = 0;
    WCHAR wImgPath[ 512 ] = { 0 };
    QString strTargetPath;

    for ( DWORD dwIndex = 0; dwIndex < dwProcCount; dwIndex++ ) {
        dwProc = dwProcID[ dwIndex ];
        if ( 0 == dwProc ) {
            continue;
        }

        hProc = ::OpenProcess( PROCESS_ALL_ACCESS, FALSE, dwProc );
        if ( NULL == hProc ) {
            continue;
        }

        //if ( !::GetProcessImageFileName( hProc, wImgPath, sizeof ( wImgPath ) / sizeof ( WCHAR ) ) ) {
        if ( !::GetModuleFileNameEx( hProc, NULL, wImgPath, sizeof ( wImgPath ) / sizeof ( WCHAR ) ) ) {
            ::CloseHandle( hProc );
            continue;
        }

        strTargetPath = QString::fromWCharArray( wImgPath );
        if ( strTargetPath == strExe ) {
            ::TerminateProcess( hProc, 0 );
            ::WaitForSingleObject( hProc, 5000 ); // INFINITE
            ::CloseHandle( hProc );
            break;
        }

        ::CloseHandle( hProc );
    }
}

bool QDlgReport::GetAdboeExePath( QString &strExe )
{
    QString strReg = "HKEY_LOCAL_MACHINE\\SOFTWARE\\Adobe\\Acrobat Reader";//\\10.0\\InstallPath";
    QSettings settings( strReg, QSettings::NativeFormat );
    QStringList lstKeys = settings.allKeys( );
    QString strTarget = "InstallPath";
    QString strKey = "";

    for ( int nIndex = 0; nIndex < lstKeys.count( ); nIndex++ ) {
        strKey = lstKeys[ nIndex ];
        if ( strKey.contains( strTarget ) ) { // 10.0/InstallPath/.
            strKey = strKey.left( strKey.count( ) - 1 );
            break;
        }
    }

    strExe = settings.value( strKey + "Default", "" ).toString( ) + "\\AcroRd32.exe";
    strExe.replace( QRegExp( "\\" ), "/" );

    bool bRet = false;
    if ( !QFile::exists( strExe ) ) {
        QString strTip = "请安装【Adobe Acrobat Reader】.";
        QCommonFunction::InformationBox( this, strTip );
        return bRet;
    }

    return true;
}

void QDlgReport::PrintPdf( QString &strFile )
{
    QStringList lstArgs;
    lstArgs << strFile;
    QProcess::startDetached( strAdobeExe, lstArgs );
}

void QDlgReport::on_btQueryDetail_clicked()
{
    QueryData( 10 );
}
