
MYTARGET = $$quote( LPRModule%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

Debug {
    TARGET = $$sprintf( $$MYTARGET, "Debug" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "Debug" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "Debug" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "LPKernelEx", "" )
}

Release {
    TARGET = $$sprintf( $$MYTARGET, "" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Release" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "LPKernelEx", "" )
}

#TARGET = DatabaseModule
TEMPLATE = lib

DEFINES += LPRMODULE_LIBRARY

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

HEADERS += \
    LPRModule_global.h \
    qplateevent.h \
    qplatethread.h

SOURCES += \
    qplateevent.cpp \
    qplatethread.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
