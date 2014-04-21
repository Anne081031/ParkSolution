#-------------------------------------------------
#
# Project created by QtCreator 2014-03-24T15:44:58
#
#-------------------------------------------------

QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Qt360Safe
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    about_us.cpp \
    account_item.cpp \
    change_skin_widget.cpp \
    character_widget.cpp \
    clabel.cpp \
    content_widget.cpp \
    drop_shadow_widget.cpp \
    kill_mummy_widget.cpp \
    loading_widget.cpp \
    login_dialog.cpp \
    main_menu.cpp \
    main_widget.cpp \
    msg_box.cpp \
    push_button.cpp \
    register_widget.cpp \
    setting_dialog.cpp \
    shadow_widget.cpp \
    skin_widget.cpp \
    system_tray.cpp \
    title_widget.cpp \
    tool_button.cpp \
    util.cpp

HEADERS  += mainwindow.h \
    main_widget.h \
    about_us.h \
    account_item.h \
    change_skin_widget.h \
    character_widget.h \
    clabel.h \
    common.h \
    content_widget.h \
    drop_shadow_widget.h \
    kill_mummy_widget.h \
    loading_widget.h \
    login_dialog.h \
    main_menu.h \
    util.h \
    msg_box.h \
    push_button.h \
    register_widget.h \
    resource.h \
    setting_dialog.h \
    shadow_widget.h \
    skin_widget.h \
    system_tray.h \
    title_widget.h \
    tool_button.h \
    ui_mainwindow.h

FORMS    += mainwindow.ui

OTHER_FILES += \
    readMe.txt

RESOURCES += \
    360safe.qrc
