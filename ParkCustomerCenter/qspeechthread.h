#ifndef QSPEECHTHREAD_H
#define QSPEECHTHREAD_H

#include <QThread>
#include "qspeechevent.h"
#include <QAxObject>

class QSpeechThread : public QThread
{
    Q_OBJECT
public:
    static QSpeechThread* CreateInstance( );
    void PostSpeakVoiceEvent( QString& strText );

protected:
    void run( );
    void customEvent( QEvent* pEvent );

private:
    explicit QSpeechThread(QObject *parent = 0);
    ~QSpeechThread( );

    inline void PostEvent( QSpeechEvent* pEvent );

    void ProcessSpeakVoiceEvent( QSpeechEvent* pEvent );

private:
    static QSpeechThread* pThreadInstance;
    QAxObject* pAxSAPI;

signals:
    void Log( QString strMsg );

private slots:
    void HandleException( int code, const QString & source, const QString & desc, const QString & help);

};

#endif // QSPEECHTHREAD_H
