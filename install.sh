#!/bin/bash

# :: Kill the python process
killall -9 python

# :: pyrcc
pyrcc5 -o ./resources/resources.py ./resources/resources.qrc

#pyinstaller -D -w --clean --noupx --icon=icon.ico app.py
pyinstaller -F -w --clean --noupx --icon=qicon.ico app.py