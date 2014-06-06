#ifndef QHKCAPTURECARDTHREAD_H
#define QHKCAPTURECARDTHREAD_H

#include "QAnalogCameraThread.h"
#include "hikSDK/HikVisionSdk.h"

class VIDEOMODULESHARED_EXPORT QHkCaptureCardThread : public QAnalogCameraThread
{
    Q_OBJECT
public:
   static QAnalogCameraThread* GetInstance( );
   QByteArray& GetChannelVideo( int nChannel );

   void CaptureStaticImage( QString &strFile, int nChannel );
   void GetImageFilePath( QString& strFile );

private:
   explicit QHkCaptureCardThread(QObject *parent = 0);

protected:
    void run( );
    void customEvent( QEvent *e );

private:
    void ProcessInitEvent( QCameraEvent* pEvent );
    void ProcessUninitEvent( QCameraEvent* pEvent );

    void ProcessOpenChannelEvent( QCameraEvent* pEvent );
    void ProcessCloseChannelEvent( QCameraEvent* pEvent );

    void ProcessStartCaptureEvent( QCameraEvent* pEvent );
    void ProcessStopCaptureEvent( QCameraEvent* pEvent );

    void ProcessStartPreviewEvent( QCameraEvent* pEvent );
    void ProcessStopPreviewEvent( QCameraEvent* pEvent );

    void ProcessStartMotionDetectEvent( QCameraEvent* pEvent );
    void ProcessStopMotionDetectEvent( QCameraEvent* pEvent );

    void ProcessStartSourceStreamEvent( QCameraEvent* pEvent );
    void ProcessStopSourceStreamEvent( QCameraEvent* pEvent );

    void ProcessCaptureImageEvent( QCameraEvent* pEvent );

    static void MotionDetectCB( ULONG channelNumber, BOOL bMotionDetected, void *context );
    static void ImageStreamCB( UINT channelNumber, void *context );

    inline HANDLE GetChannelHandle( int nChannel );
    inline void SetChannelHandle( int nChannel, HANDLE hChannel );

    void AllocMemory4Channel( );

    static QAnalogCameraThread* pThreadInstance;
    HANDLE hChannels[ CHANNEL_WAY ];
    QByteArray objVideoStream[ CHANNEL_WAY ];
    QString strImagePath;

signals:
    
public slots:
    
};

#endif // QHKCAPTURECARDTHREAD_H
