#!/bin/bash

if [ -z $DESTDIR ]; then
    DESTDIR="$HOME/Qt/Tools/QtCreator"
fi

UNAME=`uname -s | tr '[:upper:]' '[:lower:]'`
if [ $UNAME != "linux" ]; then
    echo "ERROR: Supported platforms: Linux" # TODO
    exit 1
fi

SRCDIR=`dirname $0`
SRCDIR=`(cd "$SRCDIR"; /bin/pwd)`
WIZDIR="share/qtcreator/templates/wizards/projects/qmake"

ADD="qtquickapplication qtquickcontrols2application"
REMOVE="qtquickapplication qtquickcontrolsapplication qtquickcontrols2application"

if [ ! -d "$DESTDIR/$WIZDIR" ]; then
    echo "ERROR: No such directory: $DESTDIR/$WIZDIR"
    echo "Usage: DESTDIR=/path/to/qtcreator ./install.sh"
    exit 1
fi

echo "DESTDIR=$DESTDIR"
cd "$DESTDIR/$WIZDIR"

for r in $REMOVE; do
    if [ -e $r ]; then
        echo "rm -r $WIZDIR/$r"
        rm -r $r
    fi
done

for a in $ADD; do
    if [ ! -L "$a" ]; then
        echo "ln -s $WIZDIR/$a"
        ln -s "$SRCDIR/$WIZDIR/$a"
    fi
done
