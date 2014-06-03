#-------------------------------------------------
#
# Project created by QtCreator 2014-05-12T14:14:13
#
#-------------------------------------------------

QT       += core gui

DEFINES += StartupDebug
#DEFINES += StartupRelease

MYTARGET = $$quote( ParkServer%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

contains( DEFINES, StartupDebug ) {
    Debug {
        TARGET = $$sprintf( $$MYTARGET, "Debug" )
        DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )

        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "Debug" )

        DESTDIR = "./Debug"

        system( copy ..\\LibExeFiles\\Debug\\CommonModuleDebug.dll .\\Debug )
        system( copy ..\\LibExeFiles\\Debug\\ConfigModuleDebug.dll .\\Debug )
    }
}

contains( DEFINES, StartupRelease ) {
    Release {
        TARGET = $$sprintf( $$MYTARGET, "" )
        DESTDIR = $$sprintf( $$MYDESTDIR, "Release" )

        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "" )

        DESTDIR = "./Release"

        system( copy ..\\LibExeFiles\\Release\\CommonModule.dll .\\Release )
        system( copy ..\\LibExeFiles\\Release\\ConfigModule.dll .\\Release )
        system( copy .\\Release\\Config.exe ..\\LibExeFiles\\Release )
    }
}

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Config
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui
