#include "qplatethread.h"
#include <QDebug>

QPlateThread* QPlateThread::pThreadInstance = NULL;

QPlateThread::QPlateThread(QObject *parent) :
    QThread(parent)
{
    pConfigurator = QConfigurator::CreateConfigurator( );
    pConfigurator->GetPlateHost( strPlateHost );
    pConfigurator->GetPlateHostPort( nPlatePort );
}

QPlateThread* QPlateThread::CreateInstance( )
{
    if ( NULL == pThreadInstance ) {
        pThreadInstance = new QPlateThread( );
        pThreadInstance->start( );
        pThreadInstance->moveToThread( pThreadInstance );
    }

    return pThreadInstance;
}

void QPlateThread::DebugMsg( const char *pMsg, int nRet )
{
    if ( NULL == pMsg || 0 == nRet ) {
        return;
    }

    qDebug( ) << pMsg << endl << zmq_strerror( zmq_errno( ) ) << endl;
}

void QPlateThread::run( )
{
    pParserThread = QPlateParserThread::CreateInstance( );

    QString strLog;
    pZMQContext = zmq_ctx_new( );
    if ( NULL == pZMQContext ) {
        strLog = "创建ZMQ Context失败。";
        emit Log( strLog );
        return;
    }

    pZMQSocket = zmq_socket( pZMQContext, ZMQ_SUB );
    if ( NULL == pZMQSocket ) {
        strLog = QString( "创建ZMQ Socket失败。\n%1" ).arg( zmq_strerror( zmq_errno( ) ) );
        emit Log( strLog );
        return;
    }

    //QString strHost = "127.0.0.1";
    //quint16 nPort = 60000;
    QString strAddress = QString( "tcp://%1:%2" ).arg( strPlateHost, QString::number( nPlatePort ) );
    QByteArray byAddress = strAddress.toUtf8( );
    const char* pAddress = byAddress.data( );

    int nRet = zmq_connect( pZMQSocket, pAddress );
    if ( 0 != nRet ) {
        strLog = QString( "连接ZMQ车牌识别服务器【%1:%2】失败。\n%3" ).arg(
                    strPlateHost, QString::number( nPlatePort ),
                    zmq_strerror( zmq_errno( ) ) );
        emit Log( strLog );
    }

    nRet = zmq_setsockopt( pZMQSocket, ZMQ_SUBSCRIBE, "", 0 );
    if ( 0 != nRet ) {
        strLog = QString( "设置车牌预订通道失败。\n%1" ).arg( zmq_strerror( zmq_errno( ) ) );
        emit Log( strLog );
    }

    quint64 nMoreData = 0;
    size_t nMoreDataSzie = sizeof ( nMoreData );
    QByteArray byData;
    void* pData = NULL;
    int nMsgLen = 0;

    while ( true ) {
        byData.clear( );

        do {
            zmq_msg_t msgPart;
            nMoreData = 0;

            nRet = zmq_msg_init( &msgPart );
            DebugMsg( "zmq_msg_init( ) 失败", nRet );

            nRet = zmq_recvmsg ( pZMQSocket, &msgPart, 0 );
            nMsgLen = nRet;
            DebugMsg( "zmq_recvmsg( ) 失败", -1 == nRet ? nRet : 0 );

            nRet = zmq_getsockopt( pZMQSocket, ZMQ_RCVMORE, &nMoreData, &nMoreDataSzie);
            DebugMsg( "zmq_recvmsg( ) 失败", nRet );

            if ( -1 != nRet ) {
                pData = zmq_msg_data( &msgPart );
                const char* pPartMsg = ( const char* ) pData; 
                byData.append( pPartMsg, nMsgLen );
            }

            nRet = zmq_msg_close( &msgPart );
            DebugMsg( "zmq_msg_close( ) 失败", nRet );
        } while( 0 != nMoreData );

        //emit PlateData( byData );
        pParserThread->PostPlateResultData( byData );
    }
}
