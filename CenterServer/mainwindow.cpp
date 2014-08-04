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
    delete ui;
}

void MainWindow::Initialize( )
{
    LayoutUI( );
    setWindowState( Qt::WindowMaximized );

    pTcpServerThread = QTcpServerThread::CreateInstance( );
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

QResizeForm* MainWindow::CreateServerTypeButton( int nType, QString& strName )
{
    QPushButton* pButton = new QPushButton( strName );
    pButton->setProperty( "ServerType", nType );
    connect( pButton, SIGNAL( clicked( ) ), this, SLOT( ServerTypeButtonClick( ) ) );

    QHBoxLayout* pHBoxLayout = new QHBoxLayout( );
    pHBoxLayout->addWidget( pButton );

    QResizeForm* pWidget = new QResizeForm( );
    connect( pWidget, SIGNAL( Resize( QSize ) ), this, SLOT( HandleResize( QSize ) ) );
    pWidget->setLayout( pHBoxLayout );

    return pWidget;
}

void MainWindow::PassengerFlowServer( bool bStart )
{
    quint16 nPort = 8899;
    if ( bStart ) {
        pTcpServerThread->PostStartServerEvent( nPort );
    } else {
        pTcpServerThread->PostStopServerEvent( nPort );
    }
}

void MainWindow::ServerTypeButtonClick( )
{
    QPushButton* pBtn = ( QPushButton* ) sender( );
    int nServerType = pBtn->property( "ServerType" ).toInt( );
    static bool bStart = false;
    bStart = !bStart;

    switch ( nServerType ) {
    case PassengerFlow :
        PassengerFlowServer( bStart );
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
            pWidget = CreateServerTypeButton( nType, strButtonName[ nRow ][ nCol ] );
            ui->gridLayout->addWidget(  pWidget, nRow, nCol );
        }
    }
}
