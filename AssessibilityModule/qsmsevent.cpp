#include "qsmsevent.h"

QSmsEvent::QSmsEvent( SmsEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QSmsEvent* QSmsEvent::CreateSmsEvent( SmsEvent eEvent )
{
    return new QSmsEvent( eEvent );
}

void QSmsEvent::SetTelephoneID( const QStringList& lstTelephone )
{
    lstSmsTelephoneID = lstTelephone;
}

const QStringList& QSmsEvent::GetTlephoneID( ) const
{
    return lstSmsTelephoneID;
}

void QSmsEvent::SetContent( const QString& strContent )
{
    strSmsContent = strContent;
}

const QString& QSmsEvent::GetContent( ) const
{
    return strSmsContent;
}
