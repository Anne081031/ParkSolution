#include "qpeersocketevent.h"

QPeerSocketEvent::QPeerSocketEvent( PeerSocketEvent eEvent ) : QEvent ( ( Type ) eEvent )
{
}

QPeerSocketEvent* QPeerSocketEvent::CreatePeerSocketEvent( PeerSocketEvent eEvent )
{
    return new QPeerSocketEvent( eEvent );
}
