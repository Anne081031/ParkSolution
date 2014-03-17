#-------------------------------------------------
#
# Project created by QtCreator 2014-02-17T10:15:31
#
#-------------------------------------------------

QT       += network sql xml

QT       -= gui

TARGET = TestDLL
TEMPLATE = lib

DEFINES += TESTDLL_LIBRARY

SOURCES += qtestdll.cpp

HEADERS += qtestdll.h\
        testdll_global.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
