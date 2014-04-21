#include "qprocessresultevent.h"

QProcessResultEvent::QProcessResultEvent( ProcessResultEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QProcessResultEvent* QProcessResultEvent::CreateProcessResultEvent( ProcessResultEvent eEvent )
{
    return new QProcessResultEvent( eEvent );
}

void QProcessResultEvent::SetPlate( const QString& strPlate )
{
    strPlateValue = strPlate;
}

QString& QProcessResultEvent::GetPlate( )
{
    return strPlateValue;
}

void QProcessResultEvent::SetDateTime( const QString& strDateTime )
{
    strDateTimeValue = strDateTime;
}

QString& QProcessResultEvent::GetDateTime( )
{
    return strDateTimeValue;
}

void QProcessResultEvent::SetEnterFlag( bool bEnter )
{
    bEnterValue = bEnter;
}

bool QProcessResultEvent::GetEnterFlag( )
{
    return bEnterValue;
}

void QProcessResultEvent::SetImageChannel( int nChannel )
{
    nImageChannel = nChannel;
}

int QProcessResultEvent::GetImageChannel(  )
{
    return nImageChannel;
}

void QProcessResultEvent::SetDbJson( const QByteArray& byJson )
{
    byDbJson = byJson;
}

QByteArray& QProcessResultEvent::GetDbJson(  )
{
    return byDbJson;
}

void QProcessResultEvent::SetDbSpType( int nType )
{
    nSpType = nType;
}

int QProcessResultEvent::GetDbSpType( )
{
    return nSpType;
}
