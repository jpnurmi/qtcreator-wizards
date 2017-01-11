TEMPLATE = app
QT += quick

SOURCES += \\
    $$PWD/main.cpp

RESOURCES += \\
    $$PWD/main.qml

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
