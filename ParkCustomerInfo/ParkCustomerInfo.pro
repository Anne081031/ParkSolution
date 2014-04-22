#-------------------------------------------------
#
# Project created by QtCreator 2014-02-21T17:43:31
#
#-------------------------------------------------
DEFINES += StartupDebug
#DEFINES += StartupRelease
#LIBS += -L/your/lib/path  -lyour_lib_name
QT       += core gui sql network axcontainer

INCLUDEPATH += ../Zmq

MYTARGET = $$quote( ParkCustomerInfo%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

contains( DEFINES, StartupDebug ) {
    Debug {
        TARGET = $$sprintf( $$MYTARGET, "Debug" )
        DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )
        #LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "zmq-v100-mt-4_0_3", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "DataParse", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "DatabaseModule", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "Debug" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "Debug" )

        DESTDIR = "./Debug"
        #system( copy ..\\LibExeFiles\\Debug\\libzmq-v100-mt-gd-4_0_3.dll .\\Debug )
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
        #LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "zmq-v100-mt-4_0_3", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "DataParse", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "DatabaseModule", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "" )
        LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "" )

        DESTDIR = "./Release"
        #system( copy ..\\LibExeFiles\\Release\\libzmq-v100-mt-4_0_3.dll .\\Release )
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
    qdlgqueryinfo.cpp \
    qdlgeditnewinfo.cpp \
    qdlgcommondata.cpp \
    qdlgsvceditnewinfo.cpp \
    qdlgsvcqueryinfo.cpp \
    qlocalserverthread.cpp \
    qdlgeditnewcommondata.cpp

HEADERS  += mainwindow.h \
    qdlgqueryinfo.h \
    qdlgeditnewinfo.h \
    qdlgcommondata.h \
    qdlgsvceditnewinfo.h \
    qdlgsvcqueryinfo.h \
    qlocalserverthread.h \
    qdlgeditnewcommondata.h

FORMS    += mainwindow.ui \
    qdlgqueryinfo.ui \
    qdlgeditnewinfo.ui \
    qdlgcommondata.ui \
    qdlgsvceditnewinfo.ui \
    qdlgsvcqueryinfo.ui \
    qdlgeditnewcommondata.ui
