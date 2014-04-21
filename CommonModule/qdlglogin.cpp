#include "qdlglogin.h"
#include "ui_qdlglogin.h"
#include <QJsonDocument>
#include <QJsonArray>
#include <QDebug>
#include "CommonHeader.h"

QDlgLogin::QDlgLogin(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::QDlgLogin)
{
    ui->setupUi(this);
    ControlDialog( );

    setObjectName( "DlgLogin" );
}

QDlgLogin::~QDlgLogin()
{
    delete ui;
}

void QDlgLogin::ControlDialog( )
{
    setWindowFlags( Qt::FramelessWindowHint );
    ui->edtPwd->setEchoMode( QLineEdit::Password );
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

        QStringList lstIdPwd;
        lstIdPwd<< strUserID << strPwd;
        ui->cbxUser->addItem( strUser, lstIdPwd );
    }
}

void QDlgLogin::GetUser( QString& strUser )
{
    strUser = strLoginUser;
}

void QDlgLogin::GetUserID( QString& strUserID )
{
    strUserID = strLoginUserID;
}

bool QDlgLogin::Login( )
{
    bool bRet = false;

    QStringList lstIdPwd = ui->cbxUser->currentData( ).toStringList( );
    if ( 2 > lstIdPwd.count( ) ) {
        return bRet;
    }

    strLoginUser = ui->cbxUser->currentText( );
    strLoginUserID = lstIdPwd.at( 0 );
    bRet = ( lstIdPwd.at( 1 ) == ui->edtPwd->text( ) );

    QString strText = bRet ? "登录成功" : "登录失败";
    QCommonFunction::InformationBox( this, strText );

    return bRet;
}

void QDlgLogin::on_btnOK_clicked()
{
    bool bRet = Login( );
    if ( !bRet ) {
        return;
    }

    close( );
    setResult( QDialog::Accepted );
}

void QDlgLogin::on_btnCancel_clicked()
{
    close( );
    setResult( QDialog::Rejected );
}
