#-------------------------------------------------
#
# Project created by QtCreator 2014-02-14T13:24:43
#
#-------------------------------------------------
DEFINES += StartupDebug
#DEFINES += StartupRelease

QT       += core gui

MYTARGET = $$quote( ParkAdministratorUI%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

contains( DEFINES, StartupDebug ) {
    Debug {
        TARGET = $$sprintf( $$MYTARGET, "Debug" )
        DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "DataParse", "Debug" )

        DESTDIR = "./Debug"
        system( copy ..\\LibExeFiles\\Debug\\DataParseDebug.dll .\\Debug )
    }
}

contains( DEFINES, StartupRelease ) {
    Release {
        TARGET = $$sprintf( $$MYTARGET, "" )
        DESTDIR = $$sprintf( $$MYDESTDIR, "Release" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "DataParse", "" )

        DESTDIR = "./Release"
        system( copy ..\\LibExeFiles\\Release\\DataParse.dll .\\Release )
    }
}

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui
