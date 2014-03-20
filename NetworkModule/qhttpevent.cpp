#include "qhttpevent.h"

QHttpEvent::QHttpEvent( HttpEvent eEvent ) : QEvent( ( Type ) eEvent)
{
}

QHttpEvent* QHttpEvent::CreateHttpEvent( HttpEvent eEvent )
{
    return new QHttpEvent( eEvent );
}

void QHttpEvent::SetListEventParams( QStringList& lstParams )
{
    lstEventParams = lstParams;
}

QStringList& QHttpEvent::GetListEventParams( )
{
    return lstEventParams;
}
