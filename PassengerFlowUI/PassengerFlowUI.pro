#-------------------------------------------------
#
# Project created by QtCreator 2014-08-05T09:56:36
#
#-------------------------------------------------

QT       += widgets network sql webkit webkitwidgets xml xmlpatterns axcontainer

greaterThan(QT_MAJOR_VERSION, 4): QT += printsupport

MYTARGET = $$quote( PassengerFlowUI%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

Debug {
    TARGET = $$sprintf( $$MYTARGET, "Debug" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "VideoModule", "Debug" )
}

Release {
    TARGET = $$sprintf( $$MYTARGET, "" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Release" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "VideoModule", "" )
}

TEMPLATE = lib

DEFINES += PASSENGERFLOWUI_LIBRARY

SOURCES += \
    passengermainwindow.cpp \
    qvideoframe.cpp

HEADERS +=\
        passengerflowui_global.h \
    passengermainwindow.h \
    qvideoframe.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

FORMS += \
    passengermainwindow.ui \
    qvideoframe.ui
