#ifndef QMYLABEL_H
#define QMYLABEL_H

#include <QLabel>
#include <QMouseEvent>

class QMyLabel : public QLabel
{
    Q_OBJECT
    Q_PROPERTY( bool CloseDialog MEMBER bCloseDialog READ GetCloseDialog WRITE SetCloseDialog )

public:
    explicit QMyLabel(QWidget *parent = 0);
    ~QMyLabel( );
    bool GetCloseDialog( ) const;
    void SetCloseDialog( const bool bClose );

protected:
    void mouseDoubleClickEvent( QMouseEvent* );

private:
    void ZoomByImage( );

private:
    bool bCloseDialog;
    QWidget* pDlgParent;
    QDialog* pBigPicture;

signals:
    void CloseDialog( );

public slots:

};

#endif // QMYLABEL_H
