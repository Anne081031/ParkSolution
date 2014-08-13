#include "qvzivsthread.h"
#define VZ_IVS_SDK "VZ_Sdk.dll"

QDigitalCameraThread* QVzIvsThread::pThreadInstance = NULL;
#define NullPointer( pFun ) if ( NULL == pFun ) { return; }

QVzIvsThread::QVzIvsThread(QObject *parent) :
    QDigitalCameraThread(parent)
{
    GetFunctionPointer( );
}

QVzIvsThread::~QVzIvsThread( )
{

}

QDigitalCameraThread* QVzIvsThread::GetInstance( )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QVzIvsThread( );
        pThreadInstance->moveToThread( pThreadInstance );
        pThreadInstance->start( );
    }

    return pThreadInstance;
}

void QVzIvsThread::run( )
{
    exec( );
}

void QVzIvsThread::PrintExceptionCode( int nRet, QString& strFunName )
{
#ifdef QT_NO_DEBUG
    return;
#endif

    if ( 0 == nRet ) {
        return;
    }

    NullPointer( MyVZC_GetLastError );
    int nErrorCode = MyVZC_GetLastError ( );
    qDebug( ) << strFunName << " Error Code " << QString::number( nErrorCode );
}

void QVzIvsThread::customEvent( QEvent *e )
{
    QCameraEvent* pEvent = ( QCameraEvent* ) e;
    QCameraEvent::CameraEventType evtType = ( QCameraEvent::CameraEventType ) pEvent->type( );

    switch ( evtType ) {
    case QCameraEvent::IPCStartup :
        ProcessIPCStartupEvent( pEvent );
        break;

    case QCameraEvent::IPCSetConnectTimeout :
        ProcessIPCSetConnectTimeoutEvent( pEvent );
        break;

    case QCameraEvent::IPCSetReconnectTime :
        ProcessIPCSetReconnectTimeEvent( pEvent );
        break;

    case QCameraEvent::IPCLogin :
        ProcessIPCLoginEvent( pEvent );
        break;

    case QCameraEvent::IPCCaptureJPG :
        ProcessIPCCaptureJPGEvent( pEvent );
        break;

    case QCameraEvent::IPCStartRealPlay :
        ProcessIPCStartRealPlayEvent( pEvent );
        break;

    case QCameraEvent::IPCStopRealPlay :
        ProcessIPCStopRealPlayEvent( pEvent );
        break;

    case QCameraEvent::IPCLogout :
        ProcessIPCLogoutEvent( pEvent );
        break;

    case QCameraEvent::IPCCleanup :
        ProcessIPCCleanupEvent( pEvent );
        break;

    case QCameraEvent::IPCDetect :
        ProcessIPCDetectEvent( pEvent );
        break;

    default :
        break;
    }
}

void QVzIvsThread::MyVZDEV_CallBackAddDevice( char *devName, char *ipaddr, int port1, int port2, int type, void *pUser )
{
    Q_UNUSED( pUser )
    qDebug( ) << QString( devName ) << ipaddr << QString::number( port1 ) << QString::number( port2 ) << QString::number( type );
}

void QVzIvsThread::GetFunctionPointer( )
{
    MyVZC_Init  = NULL;
    MyVZC_Cleanup = NULL;
    MyVZC_Login = NULL;
    MyVZC_Logout = NULL;

    QString strPath = qApp->applicationDirPath( ) + "/" + VZ_IVS_SDK;
    WCHAR* pPath = ( WCHAR* ) strPath.utf16( );

    hDllMod = ::LoadLibrary( pPath );
    if ( NULL == hDllMod ) {
        return;
    }

    MyVZC_Init = ( VZC_Init ) ::GetProcAddress( hDllMod, "VZC_Init" );
    MyVZC_Cleanup = ( VZC_Cleanup ) ::GetProcAddress( hDllMod, "VZC_Cleanup" );

    MyVZC_Login = ( VZC_Login ) ::GetProcAddress( hDllMod, "VZC_Login" );
    MyVZC_Logout = ( VZC_Logout ) ::GetProcAddress( hDllMod, "VZC_Logout" );

    MyVZC_RealPlay = ( VZC_RealPlay ) ::GetProcAddress( hDllMod, "VZC_RealPlay" );
    MyVZC_StopRealPlay = ( VZC_StopRealPlay ) ::GetProcAddress( hDllMod, "VZC_StopRealPlay" );

    MyVZC_RegSearchOnlineCallback = ( VZC_RegSearchOnlineCallback ) ::GetProcAddress( hDllMod, "VZC_RegSearchOnlineCallback" );
    MyVZC_StartSearchDevice = ( VZC_StartSearchDevice ) ::GetProcAddress( hDllMod, "VZC_StartSearchDevice" );
    MyVZC_StopSearchDevice = ( VZC_StopSearchDevice ) ::GetProcAddress( hDllMod, "VZC_StopSearchDevice" );

    MyVZC_GetLastError = ( VZC_GetLastError ) ::GetProcAddress( hDllMod, "VZC_GetLastError" );
}

void QVzIvsThread::ProcessIPCStartupEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
    NullPointer( MyVZC_Init );
    int nRet = MyVZC_Init( );
    QString strFunName = "VZC_Init";
    PrintExceptionCode( nRet, strFunName );

    NullPointer( MyVZC_RegSearchOnlineCallback );
    nRet = MyVZC_RegSearchOnlineCallback( MyVZDEV_CallBackAddDevice, this ) ;
    strFunName = "VZC_RegSearchOnlineCallback";
    PrintExceptionCode( nRet, strFunName );
}

void QVzIvsThread::ProcessIPCCleanupEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
    NullPointer( MyVZC_Cleanup );
    int nRet = MyVZC_Cleanup( );
    QString strFunName = "VZC_Cleanup";
    PrintExceptionCode( nRet, strFunName );
}

void QVzIvsThread::ProcessIPCDetectEvent( QCameraEvent* pEvent )
{
    NullPointer( MyVZC_StartSearchDevice );
    NullPointer( MyVZC_StopSearchDevice );
    bool bStartDetect = pEvent->GetDeviceDetect( );
    int nRet = bStartDetect ? MyVZC_StartSearchDevice( ) : MyVZC_StopSearchDevice( );
    QString strFunName = bStartDetect ? "VZC_StartSearchDevice" : "VZC_StopSearchDevice";
    PrintExceptionCode( nRet, strFunName );
}

void QVzIvsThread::ProcessIPCSetConnectTimeoutEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}

void QVzIvsThread::ProcessIPCSetReconnectTimeEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}

void QVzIvsThread::ProcessIPCLoginEvent( QCameraEvent* pEvent )
{
    NullPointer( MyVZC_Login );

    VZDEV_DEVICEINFO sDevInfo;
    QString& strIP = pEvent->GetIpcIp( );
    QByteArray byData = strIP.toLatin1( );
    byData.append( char( 0 ) );

    char* pIP = byData.data( );
    char cUser[ ] = "admin";
    char cPwd[ ] = "admin";

    LONG lUserID = GetUserID( strIP );
    if ( -1 != lUserID ) {
        return;
    }

    // Login once, play multiple
    lUserID = MyVZC_Login( pIP, 80, cUser, cPwd, &sDevInfo, NULL, 0, NULL, 0, 0 );
    SetUserID( strIP, lUserID );

    QString strFunName = "VZC_Login";
    PrintExceptionCode( -1 == lUserID, strFunName );
}

void QVzIvsThread::ProcessIPCLogoutEvent( QCameraEvent* pEvent )
{
    NullPointer( MyVZC_Logout  );

    QString& strIP = pEvent->GetIpcIp( );
    LONG lUserID = GetUserID( strIP );

    if ( - 1 == lUserID ) {
        return;
    }

    int nRet = MyVZC_Logout( lUserID );
    RemoveUserID( strIP );

    QString strFunName = "VZC_Logout";
    PrintExceptionCode( nRet, strFunName );
}

void QVzIvsThread::ProcessIPCCaptureJPGEvent( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}

void QVzIvsThread::ProcessIPCStartRealPlayEvent( QCameraEvent* pEvent )
{
    NullPointer( MyVZC_RealPlay );
    QString& strIP = pEvent->GetIpcIp( );
    LONG lUserID = GetUserID( strIP );
    bool bMainStream = pEvent->GetMainStream( );
    HWND hPlayWnd = pEvent->GetVideoWndHandle( );
    LONG lPlayHandle = GetPlayHandle( hPlayWnd );

    if ( -1 != lPlayHandle ) {
        return;
    }

    VZDEV_CLIENTINFO sClientInfo;
    sClientInfo.lChannel = 0;
    sClientInfo.lLinkMode  = bMainStream ? 0x00000000 : 0x80000000;
    sClientInfo.hPlayWnd = hPlayWnd;
    sClientInfo.sMultiCastIP = NULL;

    lPlayHandle = MyVZC_RealPlay( lUserID, &sClientInfo, true );

    SetIP( lPlayHandle, strIP );
    SetPlayHandle( hPlayWnd, lPlayHandle );

    QString strFunName = "VZC_RealPlay";
    PrintExceptionCode( -1 == lPlayHandle, strFunName );
}

void QVzIvsThread::ProcessIPCStopRealPlayEvent( QCameraEvent* pEvent )
{
    NullPointer( MyVZC_StopRealPlay   );
    HWND hPlayWnd = pEvent->GetVideoWndHandle( );
    LONG lPlayHandle = GetPlayHandle( hPlayWnd );
    RemoveIP( lPlayHandle );
    RemovePlayHandle( hPlayWnd );

    if ( - 1 == lPlayHandle ) {
        return;
    }

    int nRet = MyVZC_StopRealPlay( lPlayHandle );
    QString strFunName = "VZC_StopRealPlay";
    PrintExceptionCode( nRet, strFunName );
}

void QVzIvsThread::ProcessIPCCaptureImage( QCameraEvent* pEvent )
{
    Q_UNUSED( pEvent )
}
