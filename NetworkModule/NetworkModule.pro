QT       += core gui network webkitwidgets axcontainer sql

MYTARGET = $$quote( NetworkModule%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

INCLUDEPATH += ../Zmq

#INCLUDEPATH += ./Mysql/include
#LIBS += ./Mysql/lib/liblibmysql.a

Debug {
    TARGET = $$sprintf( $$MYTARGET, "Debug" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "zmq-v100-mt-4_0_3", "Debug" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "Debug" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "Debug" )
}

Release {
    TARGET = $$sprintf( $$MYTARGET, "" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Release" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "zmq-v100-mt-4_0_3", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "" )
}

TEMPLATE = lib

DEFINES += NETWORKMODULE_LIBRARY

HEADERS += \
    qhttpthread.h \
    NetworkModule_global.h \
    qhttpevent.h \
    qftpevent.h \
    qftpthread.h \
    qzmqserverthread.h \
    qzmqclientthread.h \
    qzmqserverevent.h \
    qzmqclientevent.h

SOURCES += \
    qhttpthread.cpp \
    qhttpevent.cpp \
    qftpevent.cpp \
    qftpthread.cpp \
    qzmqserverthread.cpp \
    qzmqclientthread.cpp \
    qzmqserverevent.cpp \
    qzmqclientevent.cpp
