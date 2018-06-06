# PyQt5-Demo

### Qt platform plugin "windows"
****
    import os
    import sys
    import PyQt5
    
    dirname = os.path.dirname(PyQt5.__file__)
    plugin_path = os.path.join(dirname, 'Qt', 'plugins', 'platforms')
    os.environ['QT_QPA_PLATFORM_PLUGIN_PATH'] = plugin_path

    from PyQt5 import QtWidgets
    app = QtWidgets.QApplication(sys.argv)
****
### pip install
    pip install pyqt5
    pip install pyqt5-tools
    pip install pyinstaller
****
### pack
    install.sh
    install.bat
****
    