#include "passengermainwindow.h"
#include "ui_passengermainwindow.h"

PassengerMainWindow::PassengerMainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::PassengerMainWindow)
{
    ui->setupUi(this);
    Initialize( );
    StartVzIvsThread( );
    MainLayout( );
}

PassengerMainWindow::~PassengerMainWindow()
{
    DeviceLoginout( strDemoIP, false );
    pVzIvsThread->PostIPCCleanupEvent( );

    delete pVideoTabWidget;
    delete ui;
}

void PassengerMainWindow::Initialize( )
{
    strDemoIP = "192.168.1.79";
    pVideoTabWidget = new QTabWidget( );
}

void PassengerMainWindow::StartVzIvsThread( )
{
    pVzIvsThread = ( QVzIvsThread* ) QVzIvsThread::GetInstance( );
    pVzIvsThread->PostIPCStartupEvent( );
    pVzIvsThread->PostIPCDetectEvent( true );

    DeviceLoginout( strDemoIP, true );
}

void PassengerMainWindow::DeviceLoginout( QString &strIP, bool bLogin )
{
    bLogin ? pVzIvsThread->PostIPCLoginEvent( strIP ) : pVzIvsThread->PostIPCLogoutEvent( strIP );
}

void PassengerMainWindow::MainLayout( )
{
    ui->centralwidget->setLayout( ui->mainLayout );
    ui->deviceTree->setMaximumWidth( 300 );
    ui->mainLayout->addWidget( ui->widgetTop, 0, 0, 1, 2 );
    ui->mainLayout->addWidget( ui->deviceTree, 1, 0 );
    ui->mainLayout->addWidget( pVideoTabWidget, 1, 1 );
}

void PassengerMainWindow::ChangeVideoPages( )
{
    const int nExistPages = pVideoTabWidget->count( );
    if ( 0 == nExistPages ) {
        return;
    }

    int nRequestRows = ui->sbRows->value( );
    int nRequestCols = ui->sbCols->value( );
    QWidget *pTabWidget = NULL;
    QGridLayout* pVideoLayout = NULL;
    int nExistRows = 0;
    int nExistCols = 0;
    int nDiff = 0;
    bool bRemoveWnd = false;

    for ( int nPage = 0; nPage < nExistPages; nPage++ ) {
        pTabWidget = pVideoTabWidget->widget( nPage );
        if ( NULL == pTabWidget ) {
            continue;
        }

        pVideoLayout = ( QGridLayout* ) pTabWidget->layout( );
        if ( NULL == pVideoLayout ) {
            continue;
        }

        nExistRows = pVideoLayout->rowCount( );
        nExistCols = pVideoLayout->columnCount( );
        bRemoveWnd = false;

        nDiff = nRequestCols - nExistCols;
        if ( 0 < nDiff ) { // Insert col
            VideoLayoutAddWnd( 0, nExistCols, nExistRows,  nRequestCols, pVideoLayout );
        } else if ( 0 > nDiff ) {
            bRemoveWnd = true;
        }

        nDiff = nRequestRows - nExistRows;
        if ( 0 < nDiff ) { // Insert row
            VideoLayoutAddWnd( nExistRows, 0, nRequestRows,  nRequestCols, pVideoLayout );
        } else if ( 0 > nDiff ) {
            bRemoveWnd = true;
        }

        if ( bRemoveWnd ) {
            VideoLayoutRemoveWnd( nRequestRows, nRequestCols, nExistRows,  nExistCols, pVideoLayout );
            delete pTabWidget->layout( );
            pTabWidget->setLayout( pVideoLayout );
        }
    }
}

void PassengerMainWindow::AddVideoPages( int nRequestPages )
{
    const int nExistPages = pVideoTabWidget->count( );

    int nDiffPages = nRequestPages - nExistPages;
    if ( 0 == nDiffPages ) {
        return;
    }

    int nPageStartIndex = nExistPages;
    bool bInserted = ( 0 < nDiffPages );
    nPageStartIndex += bInserted ? +1 :  -1;

    if ( bInserted ) {
        for ( int nPage = nPageStartIndex; nPage <= nRequestPages; nPage++ ) {
            AddVideoOnePage(  nPage ) ;
        }
    } else {
        for ( int nPage = nPageStartIndex; nPage >= nRequestPages; nPage-- ) {
            RemoveVideoOnePage(  nPage ) ;
        }
    }
}

void PassengerMainWindow::RemoveVideoOnePage( int nPageIndex )
{
    // Reserve remove
    QWidget* pTabPage = pVideoTabWidget->widget( nPageIndex );
    if ( NULL == pTabPage ) {
        return;
    }

    pVideoTabWidget->removeTab( nPageIndex );
    QGridLayout* pVideoLayout = ( QGridLayout* ) pTabPage->layout( );
    if ( NULL == pVideoLayout ) {
        return;
    }

    int nRows = pVideoLayout->rowCount( );
    int nCols = pVideoLayout->columnCount( );
    VideoLayoutRemovePageWnd( nRows, nCols, pVideoLayout  );
    pTabPage->deleteLater( ); // Before parent is deleted, children are deleted firstly;
}

void PassengerMainWindow::VideoLayoutRemoveWnd( int nRowStart, int nColStart, int nRows, int nCols, QGridLayout*& pVideoLayout )
{
    QVideoFrame * pFrame = NULL;
    QLayoutItem* pLayoutItem = NULL;
    HWND hPlayWnd;
    QGridLayout* pNewVideoLayout = new QGridLayout( );

    for ( int nRow = 0; nRow < nRows; nRow++ ) {
        for ( int nCol = 0; nCol < nCols; nCol++ ) {
            pLayoutItem = pVideoLayout->itemAtPosition( nRow, nCol );
            if ( NULL == pLayoutItem ) {
                continue;
            }

            pFrame = ( QVideoFrame* ) pLayoutItem->widget( );
            pVideoLayout->removeWidget( pFrame );

            if ( nRow < nRowStart && nCol < nColStart ) {
                pNewVideoLayout->addWidget( pFrame, nRow, nCol );
            } else {
                hPlayWnd = ( HWND ) pFrame->winId( ) ;
                pVzIvsThread->PostIPCStopRealPlayEvent( hPlayWnd );
                pFrame->deleteLater( );
            }
        }
    }

    pVideoLayout = pNewVideoLayout;
}

void PassengerMainWindow::VideoLayoutRemovePageWnd( int Rows, int nCols, QGridLayout* pVideoLayout )
{
    QVideoFrame * pFrame = NULL;
    QLayoutItem* pLayoutItem = NULL;
    HWND hPlayWnd;

    for ( int nRow = 0; nRow < Rows; nRow++ ) {
        for ( int nCol = 0; nCol < nCols; nCol++ ) {
            pLayoutItem = pVideoLayout->itemAtPosition( nRow, nCol );
            if ( NULL == pLayoutItem ) {
                continue;
            }

            pFrame = ( QVideoFrame* ) pLayoutItem->widget( );
            if ( NULL == pFrame ) {
                continue;
            }

            hPlayWnd = ( HWND ) pFrame->winId( ) ;
            pVzIvsThread->PostIPCStopRealPlayEvent( hPlayWnd );
        }
    }
}

void PassengerMainWindow::AddVideoOnePage( int nPageIndex )
{
    QString strTitle = QString( "第%1页" ).arg( nPageIndex );
    QWidget* pPage = new QWidget( );
    pVideoTabWidget->addTab( pPage, strTitle );
    QGridLayout* pVideoLayout = new QGridLayout( );
    pPage->setLayout( pVideoLayout );

    int nRows = ui->sbRows->value( );
    int nCols = ui->sbCols->value( );
    VideoLayoutAddWnd( 0, 0, nRows, nCols, pVideoLayout );
}

void PassengerMainWindow::closeEvent(QCloseEvent *e)
{
    CloseAllVideo( );
}

void PassengerMainWindow::CloseAllVideo( )
{
    int nPages = pVideoTabWidget->count( );
    QWidget* pTabPage = NULL;
    QGridLayout* pVideoLayout = NULL;
    QVideoFrame* pFrame = NULL;
    QLayoutItem* pLayoutItem = NULL;

    for ( int nPage = 0; nPage < nPages; nPage++ ) {
        pTabPage = pVideoTabWidget->widget( nPage );
        pVideoLayout = ( QGridLayout* ) pTabPage->layout( );

        for ( int nRow= 0; nRow < pVideoLayout->rowCount( ); nRow++ ) {
            for ( int nCol = 0; nCol < pVideoLayout->columnCount( ); nCol++ ) {
                pLayoutItem = pVideoLayout->itemAtPosition( nRow, nCol );
                if ( NULL == pLayoutItem ) {
                    continue;
                }

                pFrame = ( QVideoFrame* ) pLayoutItem->widget( );
                CloseVideo( pFrame );
            }
        }
    }
}

void PassengerMainWindow::CloseVideo( QVideoFrame* pFrame )
{
    HWND hPlayWnd = ( HWND ) pFrame->winId( );
    pVzIvsThread->PostIPCStopRealPlayEvent( hPlayWnd );
}

void PassengerMainWindow::OpenVideo( QVideoFrame* pFrame, QString& strIP )
{
    HWND hPlayWnd = ( HWND ) pFrame->winId( ) ;
    pVzIvsThread->PostIPCStartRealPlayEvent( strIP, true, false, hPlayWnd );
}

void PassengerMainWindow::VideoLayoutAddWnd( int nRowStart, int nColStart, int Rows, int nCols, QGridLayout* pVideoLayout )
{
    QVideoFrame * pFrame = NULL;

    for ( int nRow = nRowStart; nRow < Rows; nRow++ ) {
        for ( int nCol = nColStart; nCol < nCols; nCol++ ) {
            pFrame = new QVideoFrame( );
            pFrame->setFrameShape( QFrame::WinPanel );
            pVideoLayout->addWidget(  pFrame, nRow, nCol );
            OpenVideo( pFrame, strDemoIP );
        }
    }
}

void PassengerMainWindow::on_btnOK_clicked()
{
    int nPages = ui->sbPages->value( );
    ChangeVideoPages( );
    AddVideoPages( nPages );
}
