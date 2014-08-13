#include "mainwindow.h"
#include "ui_mainwindow.h"
//实现功能模块配置 人数统计等等
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    Initialize( );
}

MainWindow::~MainWindow()
{
    delete pPassengerUI;
    delete ui;
}

void MainWindow::Initialize( )
{
    LayoutUI( );
    setWindowState( Qt::WindowMaximized );

    pTcpClientThread = QTcpClientThread::CreateInstance( );

    pPassengerUI = new PassengerMainWindow( );
}

void MainWindow::HandleResize( QSize bkSize )
{
    QResizeForm* pForm = ( QResizeForm* ) sender( );
    QObjectList objList = pForm->children( );
    if ( 0 == objList.size( ) ) {
        return;
    }

    QPushButton* pButton = NULL;

    foreach ( QObject* pObj, objList ) {
        if ( pObj->inherits( "QAbstractButton" ) ) {
            pButton = ( QPushButton* )  pObj;
            break;
        }
    }

    if ( NULL == pButton ) {
        return;
    }

    QRect rect( 0, 0, bkSize.width( ), bkSize.height( ) );
    pButton->setGeometry( rect );
}

QResizeForm* MainWindow::CreateClientTypeButton( int nType, QString& strName )
{
    QPushButton* pButton = new QPushButton( strName );
    pButton->setProperty( "ClientType", nType );
    connect( pButton, SIGNAL( clicked( ) ), this, SLOT( ClientTypeButtonClick( ) ) );

    QHBoxLayout* pHBoxLayout = new QHBoxLayout( );
    pHBoxLayout->addWidget( pButton );

    QResizeForm* pWidget = new QResizeForm( );
    connect( pWidget, SIGNAL( Resize( QSize ) ), this, SLOT( HandleResize( QSize ) ) );
    pWidget->setLayout( pHBoxLayout );

    return pWidget;
}

void MainWindow::PassengerFlowClient( bool bStart )
{
    pPassengerUI->showMaximized( );
    //pPassengerUI->showFullScreen( );
}

void MainWindow::ClientTypeButtonClick( )
{
    QPushButton* pBtn = ( QPushButton* ) sender( );
    int nClientType = pBtn->property( "ClientType" ).toInt( );
    static bool bStart = false;
    bStart = !bStart;

    switch ( nClientType ) {
    case PassengerFlow :
        PassengerFlowClient( bStart );
        break;
    }
}

void MainWindow::LayoutUI( )
{
    ui->centralWidget->setLayout( ui->gridLayout );

    int nRows = 3;
    int nCols = 6;
    int nType = 0;
    QResizeForm* pWidget = NULL;
    QString strButtonName[  3 ] [ 6 ] = { { "客流统计", "车流统计", "", "", "" , "" },
                                                            { "", "", "", "", "" , "" },
                                                            { "", "", "", "", "" , "" } };

    for ( int nRow = 0; nRow < nRows; nRow++ ) {
        for ( int nCol = 0; nCol < nCols; nCol++ ) {
            nType = nRow * nCols + nCol;
            pWidget = CreateClientTypeButton( nType, strButtonName[ nRow ][ nCol ] );
            ui->gridLayout->addWidget(  pWidget, nRow, nCol );
        }
    }
}
