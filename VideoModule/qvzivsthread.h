#ifndef QVZIVSTHREAD_H
#define QVZIVSTHREAD_H

#include "QDigitalCameraThread.h"
#include "VZSDK/VZClientSdk.h"

class VIDEOMODULESHARED_EXPORT QVzIvsThread : public QDigitalCameraThread
{
    Q_OBJECT
public:
    ~QVzIvsThread( );
    static QDigitalCameraThread* GetInstance( );

protected:
    void run( );
    void customEvent( QEvent *e );

private:
    explicit QVzIvsThread(QObject *parent = 0);
    void GetFunctionPointer( );

    void ProcessIPCStartupEvent( QCameraEvent* pEvent );
    void ProcessIPCSetConnectTimeoutEvent( QCameraEvent* pEvent );
    void ProcessIPCSetReconnectTimeEvent( QCameraEvent* pEvent );
    void ProcessIPCLoginEvent( QCameraEvent* pEvent );
    void ProcessIPCCaptureJPGEvent( QCameraEvent* pEvent );
    void ProcessIPCStartRealPlayEvent( QCameraEvent* pEvent );
    void ProcessIPCStopRealPlayEvent( QCameraEvent* pEvent );
    void ProcessIPCLogoutEvent( QCameraEvent* pEvent );
    void ProcessIPCCleanupEvent( QCameraEvent* pEvent );
    void ProcessIPCDetectEvent( QCameraEvent* pEvent );
    void ProcessIPCCaptureImage( QCameraEvent* pEvent );

    static void CALLBACK  MyVZDEV_CallBackAddDevice ( char *devName, char *ipaddr, int port1, int port2, int type, void *pUser ) ;

    void PrintExceptionCode( int nRet, QString& strFunName );

private:
    static QDigitalCameraThread* pThreadInstance;
    HMODULE hDllMod;

    typedef int ( WINAPI *VZC_Init ) (  );
    typedef int ( WINAPI *VZC_Cleanup ) ( );

    typedef int ( WINAPI *VZC_Login ) ( char *_sDVRIP, WORD wDVRPort, char *_sUserName,
                                        char *sPassword, PVZDEV_DEVICEINFO pDeviceInfo,
                                        VZ_Transmit_Server **trans, int nTrans_num,
                                        VZ_Transmit_Server **RTSPtrans, int nRTSPTrans_num,
                                        WORD wDVRRtspPort );
    typedef int ( WINAPI *VZC_Logout  ) ( int iUserID );

    typedef int ( WINAPI *VZC_RealPlay ) ( int iUserID, PVZDEV_CLIENTINFO pClientInfo, BOOL bNB );
    typedef int ( WINAPI *VZC_StopRealPlay ) ( int iRealHandle );

    typedef int ( WINAPI *VZC_RegSearchOnlineCallback ) ( VZDEV_CallBackAddDevice, void *pUsr ) ;
    typedef int ( WINAPI *VZC_StartSearchDevice ) ( );
    typedef int ( WINAPI *VZC_StopSearchDevice )  ( );

    typedef int ( WINAPI *VZC_GetLastError ) ( );


    VZC_Init MyVZC_Init;
    VZC_Cleanup MyVZC_Cleanup;

    VZC_Login MyVZC_Login;
    VZC_Logout MyVZC_Logout;

    VZC_RealPlay MyVZC_RealPlay;
    VZC_StopRealPlay MyVZC_StopRealPlay;

    VZC_RegSearchOnlineCallback MyVZC_RegSearchOnlineCallback;
    VZC_StartSearchDevice MyVZC_StartSearchDevice;
    VZC_StopSearchDevice MyVZC_StopSearchDevice;

    VZC_GetLastError MyVZC_GetLastError;

signals:

public slots:

};

#endif // QVZIVSTHREAD_H
