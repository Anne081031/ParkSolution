#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    pConfigurator = QConfigurator::CreateConfigurator( );

    InitializeServerUI( );
    InitializeCenterUI( );
    InitializeGateUI( );
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::FillComboBox( QString strValues[ ][ 2 ], int nRow, QComboBox* pCbx )
{
    for ( int r = 0; r < nRow; r++ ) {
        pCbx->addItem( strValues[ r ] [ 0 ],   strValues[ r ] [ 1 ]);
    }
}

void MainWindow::SetCbxCurrentItem( QVariant varData, QComboBox* pCbx )
{
    int nIndex = pCbx->findData( varData );
    pCbx->setCurrentIndex( nIndex );
}

void MainWindow::GetCbxCurrentItem( QVariant& varData, QComboBox* pCbx )
{
    varData = pCbx->currentData( );
}

void MainWindow::InitializeServerUI( )
{
    QString strIPCType[ 1 ][ 2 ] = { { "海康IPC", "HK" } };
    FillComboBox( strIPCType, 1, ui->cbxSvrIPCType );

    QString strIPCStream[ 2 ][ 2 ] = { { "子码流", "0" }, { "主码流", "1" } };
    FillComboBox( strIPCStream, 2, ui->cbxSvrIPCStream );

    QString strValue = "";
    pConfigurator->GetIPCamera( strValue );
    SetCbxCurrentItem( strValue, ui->cbxSvrIPCType );

    bool bMainStream = false;
    pConfigurator->GetIPCMainStream( bMainStream );
    strValue = QString::number( bMainStream );
    SetCbxCurrentItem( strValue, ui->cbxSvrIPCStream );

    pConfigurator->GetIPCInA( strValue );
    SetEditText( strValue, ui->edtSvrIPCInIP );

    pConfigurator->GetIPCOutA( strValue );
    SetEditText( strValue, ui->edtSvrIPCOutIP );

    quint16 nPort = 0;
    pConfigurator->GetZmqServerListenPort( nPort );
    strValue = QString::number( nPort );
    SetEditText( strValue, ui->edtSvrNetListenPort );

    pConfigurator->GetDbHost( strValue );
    SetEditText( strValue, ui->edtSvrDbHost );

    pConfigurator->GetDbHostPort( nPort );
    strValue = QString::number( nPort );
    SetEditText( strValue, ui->edtSvrDbPort );

    pConfigurator->GetDbUser( strValue );
    SetEditText( strValue, ui->edtSvrDbUser );

    pConfigurator->GetDbPwd( strValue );
    SetEditText( strValue, ui->edtSvrDbPwd );
}

void MainWindow::InitializeCenterUI( )
{
    QString strValue;
    pConfigurator->GetZmqClientHost( strValue );
    SetEditText( strValue, ui->edtCenterPlateSvrIP );

    quint16 nPort;
    pConfigurator->GetZmqClientHostPort( nPort );
    strValue = QString::number( nPort );
    SetEditText( strValue, ui->edtCenterPlateSvrPort );
}

void MainWindow::SetCheckBox( bool bChecked, QCheckBox *pChx )
{
    pChx->setChecked( bChecked );
}

void MainWindow::GetCheckBox( bool &bChecked, QCheckBox *pChx )
{
    bChecked = pChx->isChecked( );
}

void MainWindow::InitializeGateUI( )
{
    bool bPreview;
    pConfigurator->GetCustomerInVideo( bPreview );
    SetCheckBox( bPreview, ui->chbGateInVideo );

    pConfigurator->GetCustomerOutVideo( bPreview );
    SetCheckBox( bPreview, ui->chbGateOutVideo );
}

void MainWindow::SaveServerData( )
{
    QVariant varValue;
    GetCbxCurrentItem( varValue, ui->cbxSvrIPCType );
    QString strValue = varValue.toString( );
    pConfigurator->SetIPCamera( strValue );

    GetCbxCurrentItem( varValue, ui->cbxSvrIPCStream );
    strValue = varValue.toString( );
    bool bMainStream = strValue.toInt( );
    pConfigurator->SetIPCMainStream( bMainStream );

    GetEditText( strValue, ui->edtSvrIPCInIP );
    pConfigurator->SetIPCInA( strValue );

    GetEditText( strValue, ui->edtSvrIPCOutIP );
    pConfigurator->SetIPCOutA( strValue );

    GetEditText( strValue, ui->edtSvrNetListenPort );
    quint16 nPort = strValue.toUShort( );
    pConfigurator->SetZmqServerListenPort( nPort );

   GetEditText( strValue, ui->edtSvrDbHost );
    pConfigurator->SetDbHost( strValue );

    GetEditText( strValue, ui->edtSvrDbPort );
    nPort = strValue.toUShort( );
    pConfigurator->SetDbHostPort( nPort );

    GetEditText( strValue, ui->edtSvrDbUser );
    pConfigurator->SetDbUser( strValue );

    GetEditText( strValue, ui->edtSvrDbPwd );
    pConfigurator->SetDbPwd( strValue );
}

void MainWindow::SaveCenterData( )
{
    QString strValue;
    GetEditText( strValue, ui->edtCenterPlateSvrIP );
    pConfigurator->SetZmqClientHost( strValue );

    GetEditText( strValue, ui->edtCenterPlateSvrPort );
    quint16 nPort = strValue.toUShort( );
    pConfigurator->SetZmqClientHostPort( nPort );
}

void MainWindow::SaveGateData( )
{
    bool bPreview;
    GetCheckBox( bPreview, ui->chbGateInVideo );
    pConfigurator->SetCustomerInVideo( bPreview );

    GetCheckBox( bPreview, ui->chbGateOutVideo );
    pConfigurator->SetCustomerOutVideo( bPreview );
}

void MainWindow::SetEditText( const QString& strValue, QLineEdit* pEdit )
{
    pEdit->setText( strValue );
}

void MainWindow::GetEditText( QString& strValue, QLineEdit* pEdit )
{
    strValue = pEdit->text( );
}

void MainWindow::SaveData( )
{
    SaveServerData( );
    SaveCenterData( );
    SaveGateData( );
}

void MainWindow::on_btnOK_clicked()
{
    SaveData( );
}

void MainWindow::closeEvent( QCloseEvent *e )
{
    bool bRet = QCommonFunction::SystemCloseEvent( this, e );

    if ( !bRet ) {
        return;
    }
}

void MainWindow::on_btnClose_clicked()
{
    close( );
}
