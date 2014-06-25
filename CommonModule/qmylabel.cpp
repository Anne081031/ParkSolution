#include "qmylabel.h"
#include "qdlgbigpicture.h"

QMyLabel::QMyLabel(QWidget *parent) :
    QLabel(parent)
{
    pDlgParent = parent;
    bCloseDialog = false;
    pBigPicture = NULL;
    setFrameShape( WinPanel );
    setFrameShadow( Raised );
    setScaledContents( true );
}

QMyLabel::~QMyLabel( )
{
    if ( NULL != pBigPicture ) {
        delete pBigPicture;
    }
}

bool QMyLabel::GetCloseDialog( ) const
{
   return bCloseDialog;
}
void QMyLabel::SetCloseDialog( const bool bClose )
{
    if ( !bClose ) {
        pBigPicture = new QDlgBigPicture( );
    }

    bCloseDialog = bClose;
}

void QMyLabel::ZoomByImage( )
{
    const QPixmap* pPixmap =pixmap( );

    if ( NULL == pPixmap || NULL == pBigPicture ) {
        return;
    }

    if ( pBigPicture->isVisible( ) ) {
        pBigPicture->close( );
        return;
    }

    if ( NULL == pBigPicture->parent( ) ) {
        pBigPicture->setParent( pDlgParent );
    }

    QRect rectParent = pDlgParent->frameGeometry( );
    int nW = pPixmap->width( );
    int nH = pPixmap->height( );
    int nX = ( rectParent.width( ) - nW ) / 2;
    int nY = ( rectParent.height( ) - nH ) / 2;
    pBigPicture->setGeometry( nX, nY, nW, nH  );
    ( ( QDlgBigPicture* ) pBigPicture )->SetPixmap( *pPixmap );
    pBigPicture->exec( );
}

void QMyLabel::mouseDoubleClickEvent( QMouseEvent * )
{
    if ( GetCloseDialog( ) ) {
        emit CloseDialog( );
    } else if ( NULL != pBigPicture ) {
        ZoomByImage( );
    }
}
