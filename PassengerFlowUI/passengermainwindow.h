#ifndef PASSENGERMAINWINDOW_H
#define PASSENGERMAINWINDOW_H

#include <winsock2.h>
#include <QMainWindow>
#include <QtWidgets>
#include "passengerflowui_global.h"
#include "../VideoModule/qvzivsthread.h"
#include "qvideoframe.h"

namespace Ui {
class PassengerMainWindow;
}

class PASSENGERFLOWUISHARED_EXPORT PassengerMainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit PassengerMainWindow(QWidget *parent = 0);
    ~PassengerMainWindow();

protected:
    void closeEvent( QCloseEvent * e);

private slots:

    void on_btnOK_clicked();

private:
    void Initialize( );
    void StartVzIvsThread( );
    void MainLayout( );
    void AddVideoPages( int nRequestPages );
    void ChangeVideoPages( );
    void AddVideoOnePage( int nPageIndex );
    void RemoveVideoOnePage( int nPageIndex );
    void VideoLayoutAddWnd( int nRowStart, int nColStart, int Rows, int nCols, QGridLayout* pVideoLayout );
    void VideoLayoutRemoveWnd( int nRowStart, int nColStart, int nRows, int nCols, QGridLayout*& pVideoLayout );
    void VideoLayoutRemovePageWnd( int Rows, int nCols, QGridLayout* pVideoLayout );
    void CloseVideo( QVideoFrame* pFrame );
    void CloseAllVideo( );
    void OpenVideo( QVideoFrame* pFrame, QString& strIP );
    inline void DeviceLoginout( QString& strIP, bool bLogin );

private:
    Ui::PassengerMainWindow *ui;
    QVzIvsThread* pVzIvsThread;
    QTabWidget* pVideoTabWidget;
    QString strDemoIP;
};

#endif // PASSENGERMAINWINDOW_H
