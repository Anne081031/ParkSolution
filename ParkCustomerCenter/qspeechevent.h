#ifndef QSPEECHEVENT_H
#define QSPEECHEVENT_H

#include <QEvent>
#include <QString>

class QSpeechEvent : public QEvent
{
public:
    typedef enum __SpeechEvent {
        SpeakVoice = User
    } SpeechEvent;

    static QSpeechEvent* CreateSpeechEvent( SpeechEvent eEvent );

    void SetSpeechText( QString& strText );
    QString& GetSpeechText( );

private:
    QSpeechEvent( SpeechEvent eEvent );

private:
    QString strSpeechText;
};

#endif // QSPEECHEVENT_H
