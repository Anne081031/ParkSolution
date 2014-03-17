#include "qimagelabel.h"
#include <QFile>

QImageLabel::QImageLabel(int nIndex, QWidget *parent) :
    QLabel(parent)
{
    nImageIndex = nIndex;
    setFrameShape( QFrame::WinPanel );
    setFrameShadow( QFrame::Raised );
    setScaledContents( true );
    setAlignment( Qt::AlignHCenter | Qt::AlignVCenter );
}

void QImageLabel::mouseDoubleClickEvent(QMouseEvent* pEvent )
{
    emit DoubleCickEvent( pEvent, nImageIndex );
}

void QImageLabel::LoadPixmap(QString &strFile)
{
    QPixmap pixMap( strFile );
    setPixmap( pixMap );
}

void QImageLabel::LoadImage( QString &strFile )
{
    LoadPixmap( strFile );
}

void QImageLabel::LoadImage( QByteArray &byImage )
{
    QString strFile = "VehicleTmp.jpg";
    QFile file( strFile );

    bool bRet = file.open( QIODevice::WriteOnly );
    if ( !bRet ) {
        return;
    }

    file.write( byImage );
    file.close( );

    LoadPixmap( strFile );
    file.remove( );
}
