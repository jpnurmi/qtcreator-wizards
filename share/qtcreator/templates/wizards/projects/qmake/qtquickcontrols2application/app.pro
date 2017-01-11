TEMPLATE = app
QT += quick quickcontrols2

SOURCES += \
    $$PWD/main.cpp

RESOURCES += \
    $$PWD/main.qml \
    $$PWD/qtquickcontrols2.conf

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
