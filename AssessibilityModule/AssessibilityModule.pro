QT       += core gui axcontainer sql

MYTARGET = $$quote( AssessibilityModule%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

#INCLUDEPATH += ./Mysql/include
#LIBS += ./Mysql/lib/liblibmysql.a

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

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = lib

DEFINES += ASSESSIBLILITYMODULE_LIBRARY

HEADERS += \
    qsmsthread.h \
    qsmsevent.h \
    AssessibilityModule_global.h

SOURCES += \
    qsmsthread.cpp \
    qsmsevent.cpp
