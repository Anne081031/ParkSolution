#-------------------------------------------------
#
# Project created by QtCreator 2014-07-29T11:14:42
#
#-------------------------------------------------
DEFINES += StartupDebug
QT       += core gui sql network axcontainer printsupport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

MYTARGET = $$quote( CenterServer%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

contains( DEFINES, StartupDebug ) {
    Debug {
        TARGET = $$sprintf( $$MYTARGET, "Debug" )
        DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )

        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "DatabaseModule", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "LPRModule", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "NetworkModule", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "VideoModule", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "AssessibilityModule", "Debug" )

        DESTDIR = "./Debug"

        system( copy ..\\LibExeFiles\\Debug\\DatabaseModuleDebug.dll .\\Debug )
        system( copy ..\\LibExeFiles\\Debug\\CommonModuleDebug.dll .\\Debug )
        system( copy ..\\LibExeFiles\\Debug\\ConfigModuleDebug.dll .\\Debug )
        system( copy ..\\LibExeFiles\\Debug\\LPRModuleDebug.dll .\\Debug )
        system( copy ..\\LibExeFiles\\Debug\\NetworkModuleDebug.dll .\\Debug )
        system( copy ..\\LibExeFiles\\Debug\\VideoModuleDebug.dll .\\Debug )
        system( copy ..\\LibExeFiles\\Debug\\libzmq-v100-mt-gd-4_0_3.dll .\\Debug )
        system( copy ..\\LibExeFiles\\Debug\\AssessibilityModuleDebug.dll .\\Debug )
    }
}

contains( DEFINES, StartupRelease ) {
    Release {
        TARGET = $$sprintf( $$MYTARGET, "" )
        DESTDIR = $$sprintf( $$MYDESTDIR, "Release" )

        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "DatabaseModule", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "LPRModule", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "NetworkModule", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "VideoModule", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "AssessibilityModule", "" )

        DESTDIR = "./Release"

        system( copy ..\\LibExeFiles\\Release\\DatabaseModule.dll .\\Release )
        system( copy ..\\LibExeFiles\\Release\\CommonModule.dll .\\Release )
        system( copy ..\\LibExeFiles\\Release\\ConfigModule.dll .\\Release )
        system( copy ..\\LibExeFiles\\Release\\LPRModule.dll .\\Release )
        system( copy ..\\LibExeFiles\\Release\\NetworkModule.dll .\\Release )
        system( copy ..\\LibExeFiles\\Release\\VideoModule.dll .\\Release )
        system( copy ..\\LibExeFiles\\Release\\libzmq-v100-mt-4_0_3.dll .\\Release )
        system( copy ..\\LibExeFiles\\Release\\AssessibilityModule.dll .\\Release )
        system( copy .\\Release\\ParkServer.exe ..\\LibExeFiles\\Release )
    }
}

TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui
