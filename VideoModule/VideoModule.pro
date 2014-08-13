QT       += core gui sql network axcontainer

MYTARGET = $$quote( VideoModule%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

Debug {
    TARGET = $$sprintf( $$MYTARGET, "Debug" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "Debug" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "JVSDK", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "Ds40xxSDK", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "HCNetSDK", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "tmControlClient", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "LPRModule", "Debug" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "Debug" )
}

Release {
    TARGET = $$sprintf( $$MYTARGET, "" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Release" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "JVSDK", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "Ds40xxSDK", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "HCNetSDK", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "tmControlClient", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "LPRModule", "" )
    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "ConfigModule", "" )
}

#TARGET = DatabaseModule
TEMPLATE = lib

DEFINES += VIDEOMODULE_LIBRARY

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

HEADERS += \
    VideoModule_global.h \
    quv200timerthread.h \
    qanalogcamerathread.h \
    qcameraevent.h \
    qdhkipcthread.h \
    qdigitalcamerathread.h \
    qdirectoryevent.h \
    qdirectorythread.h \
    qfilecamerathread.h \
    qhkcapturecardthread.h \
    qjvsipcthread.h \
    qonvifthread.h \
    qtmcapturecardthread.h \
    qusbcamerathread.h \
    quv200thread.h \
    qvzivsthread.h

SOURCES += \
    qanalogcamerathread.cpp \
    qcameraevent.cpp \
    qdhkipcthread.cpp \
    qdigitalcamerathread.cpp \
    qdirectoryevent.cpp \
    qdirectorythread.cpp \
    qfilecamerathread.cpp \
    qhkcapturecardthread.cpp \
    qjvsipcthread.cpp \
    qonvifthread.cpp \
    qtmcapturecardthread.cpp \
    qusbcamerathread.cpp \
    quv200thread.cpp \
    quv200timerthread.cpp \
    qvzivsthread.cpp
