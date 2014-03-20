#include "qcommonfunction.h"
#include <QIcon>

QCommonFunction::QCommonFunction(QObject *parent) :
    QObject(parent)
{
}

QTextCodec* QCommonFunction::GetTextCodec( )
{
    static QTextCodec* pCodec = NULL;

    if ( NULL != pCodec ) {
        return pCodec;
    }

    QList<QByteArray> lstCodec = pCodec->availableCodecs( );
    QString strText;
    bool bFound = false;

    for ( int nIndex = 0; nIndex < lstCodec.count( ); nIndex++ ) {
        QByteArray byData = lstCodec[ nIndex ];
        strText = QString( byData );
        qDebug( ) << strText << endl;

        if ( 0 == strText.toUpper().compare( "GB18030" ) ||
             0 == strText.toUpper().compare( "GBK" ) ||
             0 == strText.toUpper().compare( "GB2312" ) ) {
            bFound = true;
            break;
        }
    }

    if ( !bFound ) {
        strText = QString( "System" );
    }

    pCodec = QTextCodec::codecForName( strText.toLatin1( ) );
    return pCodec;
}

void QCommonFunction::SingleApplication( const char* pGUID )
{
    if ( NULL == pGUID ) {
        return;
    }

    QSharedMemory* pShareMem = new QSharedMemory( pGUID );

    if ( pShareMem->attach( ) ) {
        delete pShareMem;
        exit( 0 );
    } else {
        pShareMem->create( 1024 );
    }
}

void QCommonFunction::DisableHelpButton( QWidget *pWidget )
{
    Qt::WindowFlags flags = pWidget->windowFlags( );
    flags &= ( ~Qt::WindowContextHelpButtonHint );
    pWidget->setWindowFlags( flags ); // Help
}

void QCommonFunction::SetWindowIcon( QWidget *pWidget )
{
    QString strPath;
    //GetPath( strPath, CommonDataType::PathUIImage );
    //strPath += "Icon.JPG";
    QIcon icon( strPath );
    pWidget->setWindowIcon( icon );
}

void QCommonFunction::InformationBox( QWidget *pParent, QString& strText )
{
  QMessageBox messageBox( pParent );

  messageBox.setIcon( QMessageBox::Information );
  messageBox.setWindowTitle( "提示" );
  messageBox.setText( strText );
  messageBox.addButton( "确定", QMessageBox::ActionRole );
  messageBox.exec();
}

QMessageBox::StandardButtons QCommonFunction::MessageBox( QString &strTitle, QString &strText, QWidget *pParent, QMessageBox::Icon icon )
{
    QMessageBox::StandardButtons stdButtons;
    QMessageBox messageBox( pParent );

    messageBox.setIcon( icon );
    messageBox.setWindowTitle( strTitle );
    messageBox.setText( strText );

    QAbstractButton *btnOK = ( QAbstractButton* ) messageBox.addButton( "确定", QMessageBox::ActionRole );
    QAbstractButton *btnCancel = ( QAbstractButton* ) messageBox.addButton( "取消", QMessageBox::ActionRole );

    messageBox.exec();
    QAbstractButton* btnClicked = messageBox.clickedButton( );

    if ( btnClicked == btnOK ) {
        stdButtons = QMessageBox::Ok;
    } else if ( btnClicked == btnCancel ) {
        stdButtons = QMessageBox::Cancel;
    }

    return stdButtons;
}

QMessageBox::StandardButtons QCommonFunction::SaveDataBox(QWidget *pParent)
{
    QMessageBox::StandardButtons stdButtons;
    QMessageBox messageBox( pParent );

    messageBox.setIcon( QMessageBox::Question );
    messageBox.setWindowTitle( "提示" );
    messageBox.setText( "确定要保存数据吗？" );

    QAbstractButton *btnOK = ( QAbstractButton* ) messageBox.addButton( "确定", QMessageBox::ActionRole );
    QAbstractButton *btnCancel = ( QAbstractButton* ) messageBox.addButton( "取消", QMessageBox::ActionRole );

    messageBox.exec();
    QAbstractButton* btnClicked = messageBox.clickedButton( );

    if ( btnClicked == btnOK ) {
        stdButtons = QMessageBox::Ok;
    } else if ( btnClicked == btnCancel ) {
        stdButtons = QMessageBox::Cancel;
    }

    return stdButtons;
}

void QCommonFunction::CloseDiaglogBox( QWidget *pParent, QCloseEvent *pEvent )
{
    QMessageBox messageBox( pParent );

    messageBox.setIcon( QMessageBox::Question );
    messageBox.setWindowTitle( "提示" );
    messageBox.setText( "确定要关闭该对话框吗？" );

    QAbstractButton *btnOK = ( QAbstractButton* ) messageBox.addButton( "确定", QMessageBox::ActionRole );
    QAbstractButton *btnCancel = ( QAbstractButton* ) messageBox.addButton( "取消", QMessageBox::ActionRole );

    messageBox.exec();
    QAbstractButton* btnClicked = messageBox.clickedButton( );

    if ( btnClicked == btnOK ) {
        pEvent->accept( );
    } else if ( btnClicked == btnCancel ) {
        pEvent->ignore( );
    }
}

QMessageBox::StandardButtons QCommonFunction::DeleteDataBox( QWidget *pParent, QString& strText )
{
    QMessageBox::StandardButtons stdButtons;
    QMessageBox messageBox( pParent );

    messageBox.setIcon( QMessageBox::Question );
    messageBox.setWindowTitle( "提示" );
    messageBox.setText( strText );

    QAbstractButton *btnOK = ( QAbstractButton* ) messageBox.addButton( "确定", QMessageBox::ActionRole );
    QAbstractButton *btnCancel = ( QAbstractButton* ) messageBox.addButton( "取消", QMessageBox::ActionRole );

    messageBox.exec();
    QAbstractButton* btnClicked = messageBox.clickedButton( );

    if ( btnClicked == btnOK ) {
        stdButtons = QMessageBox::Ok;
    } else if ( btnClicked == btnCancel ) {
        stdButtons = QMessageBox::Cancel;
    }

    return stdButtons;
}

void QCommonFunction::SystemCloseEvent( QWidget* pParent, QCloseEvent *pEvent )
{
    QMessageBox messageBox( pParent );

    messageBox.setIcon( QMessageBox::Question );
    messageBox.setWindowTitle( "提示" );
    messageBox.setText( "确定要退出系统吗？" );

    QAbstractButton *btnOK = ( QAbstractButton* ) messageBox.addButton( "确定", QMessageBox::ActionRole );
    QAbstractButton *btnCancel = ( QAbstractButton* ) messageBox.addButton( "取消", QMessageBox::ActionRole );

    messageBox.exec();
    QAbstractButton* btnClicked = messageBox.clickedButton( );

    if ( btnClicked == btnOK ) {
        pEvent->accept( );
    } else if ( btnClicked == btnCancel ) {
        pEvent->ignore( );
    }
}

void QCommonFunction::GetSpName( ParkSolution::SpType eSpType, QString& strSpName )
{
    ParkSolution::SpName spName;

    switch ( eSpType ) {
    case ParkSolution::SpVehicleEnter :
        strSpName = spName.strSpVehicleEnter;
        break;

    case ParkSolution::SpQueryServiceData :
        strSpName = spName.strSpQueryServiceData;
        break;

    case ParkSolution::SpQueryCustomerData :
        strSpName = spName.strSpQueryCustomerData;
        break;

    case ParkSolution::SpQueryCustomerVehicleData :
        strSpName = spName.strSpQueryCustomerVehicleData;
        break;

    case ParkSolution::SpQueryCommonDataInfo :
        strSpName = spName.strSpQueryCommonDataInfo;
        break;

    case ParkSolution::SpChangeCustomerVehicleDataUI :
        strSpName = spName.strSpChangeCustomerVehicleData;
        break;

    case ParkSolution::SpChangeCustomerVehicleDataDelete :
        strSpName = spName.strSpIgnoreOrDeleteCustomer;
        break;

    case ParkSolution::SpChangeServiceRecordUI :
        strSpName = spName.strSpChangeServiceRecord;
        break;

    case ParkSolution::SpChangeServiceRecordDelete :
        strSpName = spName.strSpChangeServiceRecord;
        break;

    case ParkSolution::SpImportCustomer :
        strSpName = spName.strSpImportCustomer;
        break;

    case ParkSolution::SpExportCustomer :
        strSpName = spName.strSpExportCustomer;
        break;

    case ParkSolution::SpQueryUserInfo :
        strSpName = spName.strSpQueryUserInfo;
        break;

    case ParkSolution::SpQueryInOutImage :
        strSpName = spName.strSpQueryInOutImage;
        break;

    case ParkSolution::SpQueryCommonDataByType :
        strSpName = spName.strSpQueryCommonDataByType;
        break;

    case ParkSolution::SpChangeCommonDataUI :
        strSpName = spName.strSpChangeCommonData;
        break;

    case ParkSolution::SpChangeCommonDataDelete :
        strSpName = spName.strSpChangeCommonData;
        break;
    }
}

void QCommonFunction::GetSpXmlPattern( ParkSolution::SpType eSpType, QString& strXmlPattern )
{
    ParkSolution::SpXmlPattern xmlPattern;

    switch ( eSpType ) {
    case ParkSolution::SpVehicleEnter :
        strXmlPattern = xmlPattern.strXmlVehicle;
        break;

    case ParkSolution::SpQueryServiceData :
        strXmlPattern = xmlPattern.strXmlQueryServiceData;
        break;

    case ParkSolution::SpQueryCustomerData :
        strXmlPattern = xmlPattern.strXmlQueryCustomerData;
        break;

    case ParkSolution::SpQueryCustomerVehicleData :
        strXmlPattern = xmlPattern.strXmlQueryCustomerVehicleData;
        break;

    case ParkSolution::SpQueryCommonDataInfo :
        strXmlPattern = xmlPattern.strXmlQueryCommonDataInfo;
        break;

    case ParkSolution::SpChangeCustomerVehicleDataUI :
        strXmlPattern = xmlPattern.strXmlChangeCustomerVehicleDataUI;
        break;

    case ParkSolution::SpChangeCustomerVehicleDataDelete :
        strXmlPattern = xmlPattern.strXmlChangeCustomerVehicleDataDelete;
        break;

    case ParkSolution::SpChangeServiceRecordUI :
        strXmlPattern = xmlPattern.strXmlChangeServiceRecordUI;
        break;

    case ParkSolution::SpChangeServiceRecordDelete :
        strXmlPattern = xmlPattern.strXmlChangeServiceRecordDelete;
        break;

    case ParkSolution::SpImportCustomer :
        strXmlPattern = xmlPattern.strXmlImportCustomer;
        break;

    case ParkSolution::SpExportCustomer :
        strXmlPattern = xmlPattern.strXmlExportCustomer;
        break;

    case ParkSolution::SpQueryUserInfo :
        strXmlPattern = xmlPattern.strXmlQueryUserInfo;
        break;

    case ParkSolution::SpQueryInOutImage :
        strXmlPattern = xmlPattern.strXmlQueryInOutImage;
        break;

    case ParkSolution::SpQueryCommonDataByType :
        strXmlPattern = xmlPattern.strXmlQueryCommonDataByType;
        break;

    case ParkSolution::SpChangeCommonDataUI :
        strXmlPattern = xmlPattern.strXmlChangeCommonDataUI;
        break;

    case ParkSolution::SpChangeCommonDataDelete :
        strXmlPattern = xmlPattern.strXmlChangeCommonDataDelete;
        break;
    }
}
