:: Kill the python process
taskkill /f /im python.exe
:: pyrcc
pyrcc5 -o ./resources/resources.py ./resources/resources.qrc
:: start app.py
python app.py