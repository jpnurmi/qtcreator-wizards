#!/bin/bash

PREFIXES="$HOME /C"

if [ -z $DESTDIR ]; then
    for p in $PREFIXES; do
        QTDIR="$p/Qt"
        if [ -d $QTDIR ]; then
            DESTDIR="$QTDIR/Tools/QtCreator"
            break
        fi
    done
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
