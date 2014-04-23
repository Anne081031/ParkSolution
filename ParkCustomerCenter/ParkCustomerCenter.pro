#-------------------------------------------------
#
# Project created by QtCreator 2014-02-18T10:33:36
#
#-------------------------------------------------
DEFINES += StartupDebug
#DEFINES += StartupRelease

QT       += core gui sql network axcontainer printsupport

INCLUDEPATH += ../Zmq

MYTARGET = $$quote( ParkCustomerCenter%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

contains( DEFINES, StartupDebug ) {
    Debug {
        TARGET = $$sprintf( $$MYTARGET, "Debug" )
        DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "zmq-v100-mt-4_0_3", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "DataParse", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "DatabaseModule", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "Debug" )

        DESTDIR = "./Debug"
        system( copy ..\\LibExeFiles\\Debug\\libzmq-v100-mt-gd-4_0_3.dll .\\Debug )
        system( copy ..\\LibExeFiles\\Debug\\DataParseDebug.dll .\\Debug )
        system( copy ..\\LibExeFiles\\Debug\\DatabaseModuleDebug.dll .\\Debug )
        system( copy ..\\LibExeFiles\\Debug\\CommonModuleDebug.dll .\\Debug )
        system( copy ..\\LibExeFiles\\Debug\\ConfigModuleDebug.dll .\\Debug )
    }
}

contains( DEFINES, StartupRelease ) {
    Release {
        TARGET = $$sprintf( $$MYTARGET, "" )
        DESTDIR = $$sprintf( $$MYDESTDIR, "Release" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "zmq-v100-mt-4_0_3", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "DataParse", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "DatabaseModule", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "" )

        DESTDIR = "./Release"
        system( copy ..\\LibExeFiles\\Release\\libzmq-v100-mt-4_0_3.dll .\\Release )
        system( copy ..\\LibExeFiles\\Release\\DataParse.dll .\\Release )
        system( copy ..\\LibExeFiles\\Release\\DatabaseModule.dll .\\Release )
        system( copy ..\\LibExeFiles\\Release\\CommonModule.dll .\\Release )
        system( copy ..\\LibExeFiles\\Release\\ConfigModule.dll .\\Release )
    }
}

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = app

SOURCES += main.cpp\
        mainwindow.cpp \
    qbasezmqthread.cpp \
    qthreadevent.cpp \
    qdbzmqthread.cpp \
    qlprzmqthread.cpp \
    qimagelabel.cpp \
    qplatethread.cpp \
    qplateparserthread.cpp \
    qplateevent.cpp \
    qimagebkform.cpp \
    qspeechthread.cpp \
    qspeechevent.cpp

HEADERS  += mainwindow.h \
    qthreadevent.h \
    qbasezmqthread.h \
    qdbzmqthread.h \
    qlprzmqthread.h \
    qimagelabel.h \
    qplatethread.h \
    qplateparserthread.h \
    qplateevent.h \
    qimagebkform.h \
    qspeechthread.h \
    qspeechevent.h

FORMS    += mainwindow.ui \
    qimagebkform.ui

RESOURCES +=
