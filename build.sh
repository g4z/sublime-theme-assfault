#!/usr/bin/env bash

# do install?
install=0

if [ ! -z "$1" ]; then
    if [ "$1" == "--install" ]; then
        install=1
    fi
fi

if [ ! -d ./dist ]; then
    mkdir ./dist
fi

output="./dist/Theme - Asphalt.sublime-package"

/usr/bin/env zip -x dist -r "$output" *

if [ $? != 0 ]; then
    echo "*** ERROR: Failed creating theme zip archive ***"
else
    echo "Theme zip archive created at $output"
fi

if [ $install == 1 ]; then
    destination="$HOME/.config/sublime-text-3/Installed Packages/"
    echo "Installing theme to: $destination"
    cp -f "$output" "$destination"
fi
