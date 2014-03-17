QT       += network sql xml axcontainer

QT       -= gui

MYTARGET = $$quote( DataParse%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

#unix:LIBS += -lpq
#win32:LIBS += libpqdll.lib
#INCLUDEPATH += ./Mysql/include
#LIBS += ./Mysql/lib/liblibmysql.a

Debug {
    TARGET = $$sprintf( $$MYTARGET, "Debug" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "Debug" )
}

Release {
    TARGET = $$sprintf( $$MYTARGET, "" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Release" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "" )
}

#TARGET = DatabaseModule
TEMPLATE = lib

DEFINES += DATAPARSE_LIBRARY

HEADERS += \
    qdataparser.h \
    dataparse_global.h \
    CommonData.h

SOURCES += \
    qdataparser.cpp
