#ifndef QMYSYSTEMTRAYICON_H
#define QMYSYSTEMTRAYICON_H

#include <QObject>
#include "commonmodule_global.h"
#include <QSystemTrayIcon>
#include <QtWidgets>

class COMMONMODULESHARED_EXPORT QMySystemTrayIcon : public QObject
{
    Q_OBJECT
public:
    explicit QMySystemTrayIcon(QObject *parent = 0);

    void SetSysTrayIconParent( QWidget* pParent );
    void SetContextMenu( );
    QMenu* GetContextMenu( );

    void SetTrayIcon( const QString& strIconFile );
    void SetTrayTip( const QString& strTip );
    void ShowOrHideTrayIcon( const bool bShow );

    void ShowInformationMessage( const QString& strTitle, const QString& strMessage );
    void ShowWarningMessage( const QString& strTitle, const QString& strMessage );
    void ShowCriticalMessage( const QString& strTitle, const QString& strMessage );
    void ShowNoIconMessage( const QString& strTitle, const QString& strMessage );

private:
    inline void  ShowMessage( const QString& strTitle, const QString& strMessage, QSystemTrayIcon::MessageIcon icon, int nTimeout );

private:
    QSystemTrayIcon sysTrayIcon;
    QMenu sysTrayMenu;

signals:
    void ActivatedContext( );
    void ActivatedDoubleClick( );
    void ActivatedClick( );
    void ActivatedMiddleClick( );

private slots:
    void HandleActivated( QSystemTrayIcon::ActivationReason eReason );
};

#endif // QMYSYSTEMTRAYICON_H
