#include "qplateevent.h"

QPlateEvent::QPlateEvent( PlateEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QPlateEvent* QPlateEvent::CreatePlateEvent( PlateEvent ePlateEvent )
{
    return new QPlateEvent( ePlateEvent );
}

void QPlateEvent::SetPlateResultData( QByteArray& byData )
{
    byPlateResult = byData;
}

QByteArray& QPlateEvent::GetPlateResultData( )
{
    return byPlateResult;
}
