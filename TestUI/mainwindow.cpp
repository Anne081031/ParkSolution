#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QDebug>
#include <QMenu>
#include "qdlglogin.h"

// QAction / User Interface Command
// http://qt-project.org/doc/qt-5/layout.html GridLayout
#include <QTextCodec>

void MainWindow::HandleActivated( QSystemTrayIcon::ActivationReason reason )
{

}

void MainWindow::HandleMessageClicked( )
{

}

void MainWindow::ClickMenuItem( )
{
    pSysTrayIcon->showMessage( "Hi", "Hello", QSystemTrayIcon::Critical );
}

void MainWindow::SystemTrayIcon( )
{
    if ( NULL == pSysTrayIcon ) {
        QIcon icon( "D:\\ParkSolution\\Document\\addin.ico" );
        pSysTrayIcon = new QSystemTrayIcon( icon, this );
    }

    bool bRet = pSysTrayIcon->isSystemTrayAvailable( );
    bRet = pSysTrayIcon->supportsMessages( );

    connect( pSysTrayIcon, SIGNAL(activated(QSystemTrayIcon::ActivationReason)),
             this, SLOT(HandleActivated(QSystemTrayIcon::ActivationReason)) );
    connect( pSysTrayIcon, SIGNAL(messageClicked()),
             this, SLOT(HandleMessageClicked()) );

    pSysTrayIcon->setToolTip( "Test" );

    QMenu* pMenu = new QMenu( );
    QAction* pAct = pMenu->addAction( "Test" );
    connect( pAct, SIGNAL(triggered()),
             this, SLOT(ClickMenuItem()) );
    pSysTrayIcon->setContextMenu( pMenu );
    pSysTrayIcon->show( );
}

void MainWindow::moveEvent(QMoveEvent *)
{
    QRect rec = geometry( );
   QRect recFrame = frameGeometry( );
   int nX = rec.x( ) + rec.width( ) - 95;
   int nY = recFrame.y( ) + 5;

   qDebug( ) << "fx:" << recFrame.x( ) << " fy:" << recFrame.y( )
                << " fw:" << recFrame.width( ) << " fh:" << recFrame.height( );
   qDebug( ) << "x:" << rec.x( ) << " y:" << rec.y( )
                << " w:" << rec.width( ) << " h:" << rec.height( );
   pShapedClock->move( nX, nY );
}

void MainWindow::resizeEvent(QResizeEvent *e)
{
    //ui->toolButton->move( frameGeometry().width( ) - 100, y( ) + 2 );
    QRect rec = geometry( );
   QRect recFrame = frameGeometry( );
   int nX = rec.x( ) + rec.width( ) - 95;
   int nY = recFrame.y( ) + 5;

   qDebug( ) << "fx:" << recFrame.x( ) << " fy:" << recFrame.y( )
                << " fw:" << recFrame.width( ) << " fh:" << recFrame.height( );
   qDebug( ) << "x:" << rec.x( ) << " y:" << rec.y( )
                << " w:" << rec.width( ) << " h:" << rec.height( );
   pShapedClock->move( nX, nY );
}

void MainWindow::closeEvent(QCloseEvent *e)
{
    pShapedClock->close( );
    delete pShapedClock;

    pHoverFrame->close( );
    delete pHoverFrame;
}

void MainWindow::HandleShowHoverWindow(bool bVisible)
{
    pHoverFrame->setVisible( bVisible );
}

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    //return;
    ui->setupUi(this);
    pSysTrayIcon = NULL;
    SystemTrayIcon( );
    pHoverFrame = new QHoverFrame( NULL );
    pShapedClock = new ShapedClock( this );
    ui->toolButton->setParent( this );
    connect( pShapedClock, SIGNAL(ShowHoverWindow(bool)),
             this, SLOT(HandleShowHoverWindow(bool)) );
    pShapedClock->show();
    //setWindowFlags( Qt::Tool );
    //LayoutUI( );
    pAxObj = NULL;
#if false
    Qt::WindowStates eWinStates = windowState( );
    //Qt::FramelessWindowHint
    setWindowState( eWinStates | Qt::WindowFullScreen );
    QLayout* pLayout = ui->centralWidget->layout( );
    ui->centralWidget->setLayout( ui->mainLayout );

    ui->gridLayout->setColumnMinimumWidth( 0, 200 );
    ui->gridLayout->setColumnMinimumWidth( 1, 200 );
    ui->gridLayout->setRowMinimumHeight( 2, 200 );
    ui->gridLayout->addWidget( ui->pushButton, 0, 0, 1, 4 );
    ui->gridLayout->addWidget( ui->pushButton_2, 0, 5, 3, 2 );
    ui->gridLayout->addWidget( ui->tabWidget, 3, 0, 1, 6 );
    //setLayout( ui->mainLayout );

    // Nest Splitter
    // QSplitter : QFrame : QWidget : QObject
    // QSplitterHandle : QWidget / May customize  改变尺寸的那个控件
    rightSplitter = new QSplitter(Qt::Vertical);
    rightSplitter->addWidget(messagesTreeWidget);
    rightSplitter->addWidget(textEdit);
    rightSplitter->setStretchFactor(1, 1);
    mainSplitter = new QSplitter(Qt::Horizontal);
    mainSplitter->addWidget(foldersTreeWidget);
    mainSplitter->addWidget(rightSplitter);
    mainSplitter->setStretchFactor(1, 1);
    setCentralWidget(mainSplitter);
    setWindowTitle(tr("Mail Client"));


    //ui->mainToolBar->addAction( ui->actionOpen );

    //pSplitter = new QSplitter( ui->centralWidget  );
    //setCentralWidget( pSplitter ); // Must
    //addDockWidget();
    //pSplitter->addWidget( ui->tableView );
    //pSplitter->addWidget( ui->calendarWidget );
    //pSplitter->addWidget( ui->toolBox );
#endif

}

void MainWindow::LayoutUI( )
{
    Qt::WindowStates winStates =  windowState( );
    winStates |= Qt::WindowMaximized;
    setWindowState( winStates );
    ui->centralWidget->setLayout( ui->mainGridLayout );

    int nMainColMiniSize[ ] = { 400, 200 };
    int nColCount = sizeof ( nMainColMiniSize ) / sizeof ( int );
    for ( int nIndex = 0; nIndex < nColCount; nIndex++ ) {
        ;//ui->mainGridLayout->setColumnMinimumWidth( nIndex, nMainColMiniSize[ nIndex ] );
    }

    ui->mainGridLayout->addWidget( ui->wgtLeftPanel, 0, 0 );
    ui->mainGridLayout->addWidget( ui->wgtRightPanel, 0, 1 );
    ui->wgtLeftPanel->setLayout( ui->gridLayoutLeftPanel );

    int nLeftColMiniSize[ ] = { 100, 100, 100, 100 };
    nColCount = sizeof ( nLeftColMiniSize ) / sizeof ( int );
    ui->gridLayoutLeftPanel->setSpacing( 0 );
    for ( int nIndex = 0; nIndex < nColCount; nIndex++ ) {
        ;//ui->gridLayoutLeftPanel->setColumnMinimumWidth( nIndex, nLeftColMiniSize[ nIndex ] );
    }

    ui->gridLayoutLeftPanel->setSpacing( 5 );
    ui->gridLayoutLeftPanel->setRowMinimumHeight( 0, 400 );
    ui->gridLayoutLeftPanel->addWidget( ui->frmBigPicture, 0, 0, 1, 4 );

    ui->gridLayoutLeftPanel->addWidget( ui->frmSmallPicture0, 1, 0 );
    ui->gridLayoutLeftPanel->addWidget( ui->frmSmallPicture1, 1, 1 );
    ui->gridLayoutLeftPanel->addWidget( ui->frmSmallPicture2, 1, 2 );
    ui->gridLayoutLeftPanel->addWidget( ui->frmSmallPicture3, 1, 3 );

    ui->gridLayoutLeftPanel->addWidget( ui->widget0, 2, 0 );
    ui->gridLayoutLeftPanel->addWidget( ui->widget1, 2, 1 );
    ui->gridLayoutLeftPanel->addWidget( ui->widget2, 2, 2 );
    ui->gridLayoutLeftPanel->addWidget( ui->widget3, 2, 3 );

    ui->widget0->setLayout( ui->formLayout0 );
    ui->widget1->setLayout( ui->formLayout1 );
    ui->widget2->setLayout( ui->formLayout2 );
    ui->widget3->setLayout( ui->formLayout3 );
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_lineEdit_returnPressed()
{

}

void MainWindow::HandleException(int code, const QString &source, const QString &desc, const QString &help)
{
    qDebug( ) << source << endl;
    qDebug( ) << desc << endl;
    qDebug( ) << help << endl;
}

void MainWindow::on_pushButton_clicked()
{
    //QDlgLogin dlg;
    //dlg.exec( );

    //:exception(int code, const QString & source, const QString & desc, const QString & help)
    //SAPI.SpVoice
    //<volume level="100"/><lang langid='804'/>川 A 1 d 2 e 3
    //QAxObject axObj( "SAPI.SpVoice" );
    if ( NULL == pAxObj ) {
        pAxObj = new QAxObject( "SAPI.SpVoice" );
        connect( pAxObj, SIGNAL( exception( int, const QString&, const QString&, const QString& ) ),
                 this, SLOT(HandleException( int, const QString&, const QString&, const QString& ) ) );
    }

    QList< QVariant > lstVariant;
    QString str = "<volume level='100'/><lang langid='804'/>川A 1 d 2 e 3";

    QVariant varValue = str;
    lstVariant.append( varValue );

    varValue = 1;
    lstVariant.append( varValue );

    varValue = pAxObj->dynamicCall( "Speak(const QString&, uint )", lstVariant );
    qDebug( ) << varValue.toString( ) << endl;
}
