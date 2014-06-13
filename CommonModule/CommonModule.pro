QT       += core gui sql webkitwidgets axcontainer printsupport
#DEFINES += _WIN32_WINNT=0x0501

MYTARGET = $$quote( CommonModule%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

#INCLUDEPATH += ./Mysql/include
LIBS += ../WinLib/libpsapi.a

Debug {
    TARGET = $$sprintf( $$MYTARGET, "Debug" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )

    #LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "NetworkLibrary", "Debug" )
}

Release {
    TARGET = $$sprintf( $$MYTARGET, "" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Release" )

    #LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "NetworkLibrary", "" )
}

TEMPLATE = lib

DEFINES += COMMONMODULE_LIBRARY

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

HEADERS += \
    qbasethread.h \
    commonmodule_global.h \
    CommonEnumType.h \
    CommonStructType.h \
    CommonTypedef.h \
    CommonHeader.h \
    qcommonfunction.h \
    qdlglogin.h \
    qshapedform.h \
    qhoverframe.h \
    qserializeevent.h \
    qserializethread.h \
    qdlgreport.h \
    qjsondata.h \
    qframequerydata.h \
    qresizeform.h \
    qmysystemtrayicon.h \
    qframereport.h

SOURCES += \
    qbasethread.cpp \
    qcommonfunction.cpp \
    qdlglogin.cpp \
    qshapedform.cpp \
    qhoverframe.cpp \
    qserializeevent.cpp \
    qserializethread.cpp \
    qdlgreport.cpp \
    qjsondata.cpp \
    qframequerydata.cpp \
    qresizeform.cpp \
    qmysystemtrayicon.cpp \
    qframereport.cpp

FORMS += \
    qdlglogin.ui \
    qshapedform.ui \
    qhoverframe.ui \
    qdlgreport.ui \
    qframequerydata.ui \
    qresizeform.ui \
    qframereport.ui
