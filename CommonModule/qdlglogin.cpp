#include "qdlglogin.h"
#include "ui_qdlglogin.h"
#include <QJsonDocument>
#include <QJsonArray>
#include <QDebug>
#include "CommonHeader.h"

#define CONFIG_FILE_NAME    "ConfigFile.Ini"

QDlgLogin::QDlgLogin(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::QDlgLogin)
{
    ui->setupUi(this);
    ControlDialog( );

    pSettings = new QSettings( CONFIG_FILE_NAME, QSettings::IniFormat );
    QTextCodec* pCodec = QCommonFunction::GetTextCodec( );
    pSettings->setIniCodec( pCodec );
    setObjectName( "DlgLogin" );
}

QDlgLogin::~QDlgLogin()
{
    delete pSettings;
    delete ui;
}

void QDlgLogin::ControlDialog( )
{
    setWindowFlags( Qt::FramelessWindowHint );
    ui->edtPwd->setEchoMode( QLineEdit::Password );
    ui->formLayoutWidget->setStyleSheet( "background-image:url();" );
    ui->layoutWidget->setStyleSheet( "background-image:url();" );
}

void QDlgLogin::FillUser( QByteArray& byJson )
{
    ui->cbxUser->clear( );
    QJsonParseError jsonError;
    QJsonDocument docJson = QJsonDocument::fromJson( byJson, &jsonError );
    if ( QJsonParseError::NoError != jsonError.error ) {
        qDebug( ) << Q_FUNC_INFO << jsonError.errorString( ) << endl;
        return;
    }

    if ( docJson.isNull( ) ||
         docJson.isEmpty( ) ||
         !docJson.isArray( ) ) {
        return;
    }

    QJsonArray jsonArray = docJson.array( );
    if ( jsonArray.isEmpty( ) ) {
        return;
    }

    QJsonValue jsonValue;
    QJsonObject jsonObject;
    int nCount = jsonArray.count( );

    ParkSolution::LoginUserInfo userInfo;
    QString strUserID;
    QString strUser;
    QString strPwd;

    for ( int nIndex = 0; nIndex < nCount; nIndex++ ) {
        jsonValue = jsonArray.at( nIndex );

        if ( jsonValue.isNull( ) ||
             !jsonValue.isObject( ) ) {
            continue;
        }

        jsonObject = jsonValue.toObject( );
        strUserID = jsonObject.value( userInfo.strUserID ).toString( );
        strUser = jsonObject.value( userInfo.strUser ).toString( );
        strPwd = jsonObject.value( userInfo.strPwd ).toString( );

        QStringList lstPwd;
        lstPwd<< strUserID << strPwd;
        ui->cbxUser->addItem( strUser, lstPwd );
    }

    UserPwd( false );
}

void QDlgLogin::GetUser( QString& strUser )
{
    strUser = strLoginUser;
}

void QDlgLogin::GetUserID( QString& strUserID )
{
    strUserID = strLoginUserID;
}

void QDlgLogin::UserPwd( bool bSave )
{
    QString strValue;
    QString strKeyUser = "CurrentLogin/User%1";

    if ( bSave ) {
        strValue = strLoginUser;
        QCommonFunction::CryptString( strValue );
        pSettings->setValue( strKeyUser.arg( "" ), strValue );

        strValue = strLoginUserID;
        QCommonFunction::CryptString( strValue );
        pSettings->setValue( strKeyUser.arg( "ID" ), strValue );

        strValue = strLoginPwd;
        QCommonFunction::CryptString( strValue );
        pSettings->setValue( strKeyUser.arg( "Pwd" ), strValue );
    } else {
        QStringList lstPwd;

        strValue = pSettings->value( strKeyUser.arg( "" ), "" ).toString( );
        QCommonFunction::DecryptString( strValue );

        strValue = pSettings->value( strKeyUser.arg( "ID" ), "" ).toString( );
        QCommonFunction::DecryptString( strValue );
        lstPwd << strValue;

        strValue = pSettings->value( strKeyUser.arg( "Pwd" ), "" ).toString( );
        QCommonFunction::DecryptString( strValue );
        lstPwd << strValue;

        int nIndex = ui->cbxUser->findData( lstPwd );
        ui->cbxUser->setCurrentIndex( nIndex );
        ui->edtPwd->setText( strValue );
    }
}

bool QDlgLogin::Login( )
{
    bool bRet = false;

    QStringList lstPwd = ui->cbxUser->currentData( ).toStringList( );
    if ( 2 > lstPwd.count( ) ) {
        return bRet;
    }

    strLoginUser = ui->cbxUser->currentText( );
    strLoginUserID = lstPwd.at( 0 );
    strLoginPwd = lstPwd.at( 1 );
    bRet = ( lstPwd.at( 1 ) == ui->edtPwd->text( ) );

    QString strText = bRet ? "登录成功" : "用户名或密码错误！";
    //QCommonFunction::InformationBox( this, strText );
    ui->lblTip->setText( strText );

    return bRet;
}

void QDlgLogin::on_btnOK_clicked()
{
    bool bRet = Login( );
    if ( !bRet ) {
        return;
    }

    if ( ui->chkSavePwdUsr->isChecked( ) ) {
        UserPwd( true );
    }

    close( );
    setResult( QDialog::Accepted );
}

void QDlgLogin::on_btnCancel_clicked()
{
    close( );
    setResult( QDialog::Rejected );
}
