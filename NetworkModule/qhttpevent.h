#ifndef QHTTPEVENT_H
#define QHTTPEVENT_H

#include <QEvent>
#include <QStringList>
#include <QtNetwork>

class QHttpEvent : public QEvent
{
public:
    typedef enum __HttpEvent {
        GetInOutImage = QEvent::User
    } HttpEvent;

    static QHttpEvent* CreateHttpEvent( HttpEvent eEvent );

    void SetListEventParams( QStringList& lstParams );
    QStringList& GetListEventParams( );

private:
    QHttpEvent( HttpEvent eEvent );

    QStringList lstEventParams;
};

#endif // QHTTPEVENT_H
