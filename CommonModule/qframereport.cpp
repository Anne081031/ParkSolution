#include "qframereport.h"
#include "ui_qframereport.h"
#include <QtCore>
#include <winsock2.h>
#include <windows.h>
#include <psapi.h>

QFrameReport::QFrameReport(QWidget *parent) :
    QFrame(parent),
    ui(new Ui::QFrameReport)
{
    ui->setupUi(this);
    LayoutUI( );
    LoadChartCbx( );
    pTextCodec = QCommonFunction::GetTextCodec( );
    strReportFile =  QString( "file:///%1/Report/Report.html" ).arg( qApp->applicationDirPath( ) );
    ui->dtStart->setDateTime( QDateTime::currentDateTime( ).addMonths( -1 ) );
    ui->dtEnd->setDateTime( QDateTime::currentDateTime( ) );
}

QFrameReport::~QFrameReport()
{
    delete ui;
}

void QFrameReport::LoadChartCbx( )
{
    QString strValues[ ][ 2 ] = { { "折线", "line" },
                                  { "柱状", "bar" }};

    for ( int nIndex = 0; nIndex < 2; nIndex++ ) {
        ui->cbxChartType->addItem( strValues[ nIndex ][ 0 ], strValues[ nIndex ][ 1 ] );
    }
}

void QFrameReport::LayoutUI( )
{
    setWindowState( Qt::WindowMaximized );

    ui->horizontalLayout_2->addWidget( ui->widget_2 );
    setLayout( ui->horizontalLayout_2 );

    ui->widget_2->setLayout( ui->gridLayout );
    ui->gridLayout->addWidget( ui->widget, 0, 0 );
    ui->gridLayout->addWidget( ui->webView, 1, 0 );

    QCommonFunction::SetButtonMiniSize( ui->btQuery, 75 );
    QCommonFunction::SetButtonMiniSize( ui->btPrint, 75 );
}

void QFrameReport::DisplayChart( const QByteArray &byJson )
{
    QFile file( "./Report/data.json" );
    if ( !file.open( QIODevice::Truncate | QIODevice::ReadWrite ) ) {
        return;
    }

    file.write( byJson );
    file.close( );
}

void QFrameReport::DisplayReport( const QByteArray &byJson )
{
    QFile file( "./Report/Report.html" );
    if ( !file.open( QIODevice::Truncate | QIODevice::ReadWrite ) ) {
        return;
    }

    QString strHTML = QString::fromUtf8( byJson );
    QByteArray byData = pTextCodec->fromUnicode( strHTML );
    file.write( byData );
    file.close( );

    QUrl url( strReportFile );
    ui->webView->setUrl( url );
}

void QFrameReport::QueryData( int nType )
{
    QStringList lstParams;

    lstParams << QString::number( nType )
              << ui->dtStart->text( ) << ui->dtEnd->text( ) <<
              ui->cbxChartType->currentData( ).toString( ) << "";
    emit ReportQuery( lstParams );
}

void QFrameReport::on_btQuery_clicked()
{
    QueryData( ui->cbxType->currentIndex( ) );
}

void QFrameReport::on_btPrint_clicked()
{
    Print( *ui->webView );
}

void QFrameReport::Print( QWebView& wvReport )
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

void QFrameReport::KillAdobeProcess( QString &strExe )
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

bool QFrameReport::GetAdboeExePath( QString &strExe )
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

void QFrameReport::PrintPdf( QString &strFile )
{
    QStringList lstArgs;
    lstArgs << strFile;
    QProcess::startDetached( strAdobeExe, lstArgs );
}

void QFrameReport::on_cbxType_currentIndexChanged(int index)
{
    ui->cbxChartType->setEnabled( 9 != index );
}
