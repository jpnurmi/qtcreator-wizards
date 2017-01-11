# Qt Quick application wizard templates for Qt Creator

![Screenshot](https://raw.github.com/jpnurmi/qtcreator-wizards/master/screenshot.png)

## Installation

Locate and cleanup the installed Qt Quick app templates:

    cd ~/Qt/Tools/QtCreator/share/qtcreator/templates/wizards/projects/qmake
    rm -r qtquickapplication qtquickcontrolsapplication qtquickcontrols2application

Link the new Qt Quick app templates:

    ln -s /path/to/qtcreator-wizards/share/qtcreator/templates/wizards/projects/qmake/qtquickapplication
    ln -s /path/to/qtcreator-wizards/share/qtcreator/templates/wizards/projects/qmake/qtquickcontrols2application

Restart Qt Creator. Enjoy!
