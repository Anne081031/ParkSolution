#include "qmysystemtrayicon.h"

QMySystemTrayIcon::QMySystemTrayIcon(QObject *parent) :
    QObject(parent)
{
    connect( &sysTrayIcon, SIGNAL( activated( QSystemTrayIcon::ActivationReason ) ),
             this, SLOT( HandleActivated( QSystemTrayIcon::ActivationReason ) ) );
}

void QMySystemTrayIcon::HandleActivated( QSystemTrayIcon::ActivationReason eReason )
{
    switch ( eReason) {
    case QSystemTrayIcon::Unknown :

        break;

    case QSystemTrayIcon::Context :
        emit ActivatedContext( );
        break;

    case QSystemTrayIcon::DoubleClick :
        emit ActivatedDoubleClick( );
        break;

    case QSystemTrayIcon::Trigger :
        emit ActivatedClick( );
        break;

    case QSystemTrayIcon::MiddleClick :
        emit ActivatedMiddleClick( );
        break;
    }
}

void QMySystemTrayIcon::SetSysTrayIconParent( QWidget *pParent )
{
    sysTrayIcon.setParent( pParent );
}

void QMySystemTrayIcon::SetContextMenu( )
{
    sysTrayIcon.setContextMenu( &sysTrayMenu );
}

QMenu* QMySystemTrayIcon::GetContextMenu( )
{
    return sysTrayIcon.contextMenu( );
}

void QMySystemTrayIcon::SetTrayIcon( const QString& strIconFile )
{
    QIcon icon( strIconFile );
    sysTrayIcon.setIcon( icon );
}

void QMySystemTrayIcon::SetTrayTip( const QString& strTip )
{
    sysTrayIcon.setToolTip( strTip );
}

void QMySystemTrayIcon::ShowOrHideTrayIcon( const bool bShow )
{
    bShow ? sysTrayIcon.show( ) : sysTrayIcon.hide( );
}

void QMySystemTrayIcon::ShowInformationMessage( const QString& strTitle, const QString& strMessage )
{
    ShowMessage( strTitle, strMessage, QSystemTrayIcon::Information, 3000 );
}

void QMySystemTrayIcon::ShowWarningMessage( const QString& strTitle, const QString& strMessage )
{
    ShowMessage( strTitle, strMessage, QSystemTrayIcon::Warning, 3000 );
}

void QMySystemTrayIcon::ShowCriticalMessage( const QString& strTitle, const QString& strMessage )
{
    ShowMessage( strTitle, strMessage, QSystemTrayIcon::Critical, 3000 );
}

void QMySystemTrayIcon::ShowNoIconMessage( const QString& strTitle, const QString& strMessage )
{
    ShowMessage( strTitle, strMessage, QSystemTrayIcon::NoIcon, 3000 );
}

void  QMySystemTrayIcon::ShowMessage( const QString& strTitle, const QString& strMessage, QSystemTrayIcon::MessageIcon icon, int nTimeout )
{
    sysTrayIcon.showMessage( strTitle, strMessage, icon, nTimeout );
}
