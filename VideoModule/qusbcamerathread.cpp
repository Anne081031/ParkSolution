#include "qusbcamerathread.h"
#include "TmSDK/UsbCameraDll.h"
#include <winsock2.h>
#include <windows.h>

static LPBYTE pVidBuff = NULL;

QAnalogCameraThread* QUsbCameraThread::pThreadInstance = NULL;

QUsbCameraThread::QUsbCameraThread(QObject *parent) :
    QAnalogCameraThread(parent)
{
    ::CoInitialize( NULL );
    MyStartUsbCamera;
    MyStopUsbCamera;
    MyGetDeviceList;
    MyGetDeviceList2;
    pVidBuff = new BYTE[ 1024 * 1024 * 2 ];

    hLib.setFileName( "UsbCameraDll.dll" );
    MyStartUsbCamera = ( StartUsbCamera ) hLib.resolve( "StartUsbCamera" );
    MyStopUsbCamera = ( StopUsbCamera ) hLib.resolve( "StopUsbCamera" );
    MyGetDeviceList = ( GetDeviceList ) hLib.resolve( "GetDeviceList" );
    MyGetDeviceList2 = ( GetDeviceList2 ) hLib.resolve( "GetDeviceList2" );
}

QUsbCameraThread::~QUsbCameraThread( )
{
    delete [ ] pVidBuff;
    CoUninitialize( );
}

QAnalogCameraThread* QUsbCameraThread::GetInstance( )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QUsbCameraThread( );
        pThreadInstance->moveToThread( pThreadInstance );
        pThreadInstance->start( );
    }

    return pThreadInstance;
}

void QUsbCameraThread::run( )
{
    exec( );
}

void QUsbCameraThread::customEvent( QEvent *e )
{
    QCameraEvent* pEvent = ( QCameraEvent* ) e;
    QCameraEvent::CameraEventType eType = ( QCameraEvent::CameraEventType ) e->type( );

    switch ( eType ) {
        case QCameraEvent::CameraInit :
            ProcessInitEvent( pEvent );
            break;

        case QCameraEvent::CameraUninit :
            ProcessUninitEvent( pEvent );
            break;

        case QCameraEvent::CameraOpenChannel :
            ProcessOpenChannelEvent( pEvent );
            break;

        case QCameraEvent::CameraCloseChannel :
            ProcessCloseChannelEvent( pEvent );
            break;

        case QCameraEvent::CameraStartCapture :
            ProcessStartCaptureEvent( pEvent );
            break;

        case QCameraEvent::CameraStopCapture :
            ProcessStopCaptureEvent( pEvent );
            break;

        case QCameraEvent::CameraStartPreview :
            ProcessStartPreviewEvent( pEvent );
            break;

        case QCameraEvent::CameraStopPreview :
            ProcessStopPreviewEvent( pEvent );
            break;

        case QCameraEvent::CameraCaptureImage :
            ProcessCaptureImageEvent( pEvent );
            break;

        case QCameraEvent::CameraStartMotionDetect :
            ProcessStartMotionDetectEvent( pEvent );
            break;

        case QCameraEvent::CameraStopMotionDetect :
            //ProcessStopMotionDetectEvent( pEvent );
            break;

        case QCameraEvent::CameraStartSourceStream :
            ProcessStartSourceStreamEvent( pEvent );
            break;

        case QCameraEvent::CameraStopSourceStream :
            ProcessStopSourceStreamEvent( pEvent );
            break;
    }
}

void QUsbCameraThread::ProcessInitEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}

void QUsbCameraThread::ProcessUninitEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}

void QUsbCameraThread::ProcessOpenChannelEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}

void QUsbCameraThread::ProcessCloseChannelEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}

void QUsbCameraThread::ProcessStartCaptureEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}

void QUsbCameraThread::ProcessStopCaptureEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}

void QUsbCameraThread::VidCapCallBack( LPBYTE pFrameData, long lFrameSize, long lWidth, long lHeight )
{
    if ( NULL == pFrameData || NULL == pThreadInstance ) {
        return;
    }

    QByteArray byVideo;
    byVideo.append( ( const char* ) pFrameData, lFrameSize );
    //delete [ ] pFrameData;

    if ( pFrameData == pVidBuff ) {
        BOOL bRet = TRUE;
    }

    qDebug( ) << byVideo.toHex( ) << endl;

    pThreadInstance->GetPlateThread( )->PostPlateVideoRecognize( byVideo, lWidth, lHeight, 1 );
}

void QUsbCameraThread::ProcessStartPreviewEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
    int nChannel = pEvent->GetChannel( );

    BOOL bRet = MyStartUsbCamera( nChannel );
    bRet = TRUE;
}

void QUsbCameraThread::ProcessStopPreviewEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
    BOOL bRet = MyStopUsbCamera( TRUE );
    bRet = TRUE;
}

void QUsbCameraThread::ProcessStartMotionDetectEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}

void QUsbCameraThread::ProcessStartSourceStreamEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}

void QUsbCameraThread::ProcessStopSourceStreamEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}

void QUsbCameraThread::CaptureStaticImage(QString &strFile, int nChannel)
{
}

void QUsbCameraThread::GetDevice( QStringList& lstDevice, HWND hOwner )
{
    int nBufSize = 0;
    char* pBuffer = NULL;

    BOOL bRet = MyGetDeviceList2( pBuffer, nBufSize, VidCapCallBack, hOwner, pVidBuff, 1024 * 1024 * 2 );

    if ( !bRet || 0 == nBufSize ) {
        return;
    }

    pBuffer = new char[ nBufSize ];
    bRet = MyGetDeviceList2( pBuffer, nBufSize, VidCapCallBack, hOwner, pVidBuff, 1024 * 1024 * 2 );

    lstDevice.append( QString( pBuffer ).split( "\n") );

    delete [ ] pBuffer;
    pBuffer = NULL;
}

void QUsbCameraThread::ProcessCaptureImageEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}
