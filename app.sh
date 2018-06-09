#!/usr/bin/env bash

#:: Kill the python process
killall -9 python

#:: pyrcc
pyrcc5 -o ./resources/resources.py ./resources/resources.qrc

#:: start app.py
python app.py