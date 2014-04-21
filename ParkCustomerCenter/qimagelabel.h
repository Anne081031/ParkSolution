#ifndef QIMAGELABEL_H
#define QIMAGELABEL_H

#include <QLabel>
#include <QResizeEvent>

class QImageLabel : public QLabel
{
    Q_OBJECT
public:
    explicit QImageLabel(int nIndex, QWidget *parent = 0);

    void LoadImage( QString& strFile );
    void LoadImage( QByteArray& byImage );

    QSize sizeHint( ) const;

protected:
    void mouseDoubleClickEvent( QMouseEvent* pEvent );
    void mousePressEvent( QMouseEvent * pEvent );
    void resizeEvent( QResizeEvent* pEvent );

private:
    inline void LoadPixmap( QString& strFile );

private:
    int nImageIndex;

signals:
    void DoubleCickEvent( QMouseEvent*, int nImageIndex );

public slots:

};

#endif // QIMAGELABEL_H
