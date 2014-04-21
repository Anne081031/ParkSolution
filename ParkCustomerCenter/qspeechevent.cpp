#include "qspeechevent.h"

QSpeechEvent::QSpeechEvent( SpeechEvent eEvent ) : QEvent( ( Type ) eEvent )
{
}

QSpeechEvent* QSpeechEvent::CreateSpeechEvent( SpeechEvent eEvent )
{
    return new QSpeechEvent( eEvent );
}

void QSpeechEvent::SetSpeechText( QString& strText )
{
    strSpeechText = strText;
}

QString& QSpeechEvent::GetSpeechText( )
{
    return strSpeechText;
}
