#ifndef QIMAGELABEL_H
#define QIMAGELABEL_H

#include <QLabel>

class QImageLabel : public QLabel
{
    Q_OBJECT
public:
    explicit QImageLabel(int nIndex, QWidget *parent = 0);

    void LoadImage( QString& strFile );
    void LoadImage( QByteArray& byImage );

protected:
    void mouseDoubleClickEvent( QMouseEvent* pEvent );

private:
    inline void LoadPixmap( QString& strFile );

private:
    int nImageIndex;

signals:
    void DoubleCickEvent( QMouseEvent*, int nImageIndex );

public slots:

};

#endif // QIMAGELABEL_H
