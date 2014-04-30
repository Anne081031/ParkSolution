QT       += core gui sql network axcontainer serialport

MYTARGET = $$quote( SerialPortModule%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

Debug {
    TARGET = $$sprintf( $$MYTARGET, "Debug" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "Debug" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "Debug" )
}

Release {
    TARGET = $$sprintf( $$MYTARGET, "" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Release" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "" )
}

#TARGET = DatabaseModule
TEMPLATE = lib

DEFINES += SERIALPORTMODULE_LIBRARY

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

HEADERS += \
    SerialPortModule_global.h \
    qserialreaderthread.h \
    qserialwriterthread.h \
    qserialparserthread.h \
    qserialparserevent.h \
    qserialreaderevent.h \
    qserialwriterevent.h

SOURCES += \
    qserialreaderthread.cpp \
    qserialwriterthread.cpp \
    qserialparserthread.cpp \
    qserialparserevent.cpp \
    qserialreaderevent.cpp \
    qserialwriterevent.cpp
