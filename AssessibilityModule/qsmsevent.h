#ifndef QSMSEVENT_H
#define QSMSEVENT_H

#include <QEvent>
#include <QtCore>

class QSmsEvent : public QEvent
{
public:
    typedef enum __SmsEvent {
        SendSms = User
    } SmsEvent;

    static QSmsEvent* CreateSmsEvent( SmsEvent eEvent );

    void SetTelephoneID( const QStringList& lstTelephone );
    const QStringList& GetTlephoneID( ) const ;

    void SetContent( const QString& strContent );
    const QString& GetContent( ) const;

private:
    QSmsEvent( SmsEvent eEvent );

    QStringList lstSmsTelephoneID;
    QString strSmsContent;
};

#endif // QSMSEVENT_H
