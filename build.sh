#!/usr/bin/env bash

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
