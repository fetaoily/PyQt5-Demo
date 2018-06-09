:: Kill the python process
taskkill /f /im python.exe

:: pyrcc
pyrcc5 -o ./resources/resources.py ./resources/resources.qrc

::pyinstaller -D -w --clean --noupx --icon=icon.ico app.py
pyinstaller -F -w --clean --noupx --icon=icon.ico app.py