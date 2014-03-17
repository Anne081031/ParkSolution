#include "mainwindow.h"
#include "ui_mainwindow.h"

// http://qt-project.org/doc/qt-5/model-view-programming.html
// Use Model/View

// http://qt-project.org/doc/qt-5/qtwidgets-index.html
// Widgets/ Widgets are the primary elements for creating user interfaces in Qt
// Styles/ look and feel of a GUI
// Layouts/  automatically arrange child widgets within their container
// Model/View The model/view architecture provides classes that manage the way data is presented to the user.
// Graphics View/ The Graphics View Framework is for managing and interacting with a large number of custom-made 2D graphical items
// QSplitter Q

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}
