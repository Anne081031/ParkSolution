#-------------------------------------------------
#
# Project created by QtCreator 2014-02-14T14:54:11
#
#-------------------------------------------------

QT       += core gui axcontainer
#win32: QT += activeqt

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = TestUI
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    qhoverframe.cpp \
    shapedclock.cpp \
    qdlglogin.cpp

HEADERS  += mainwindow.h \
    qhoverframe.h \
    shapedclock.h \
    qdlglogin.h

FORMS    += mainwindow.ui \
    qhoverframe.ui \
    qdlglogin.ui

RESOURCES +=
