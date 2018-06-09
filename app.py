import sys

from PyQt5 import QtQuick
# from PyQt5.QtCore import QUrl
from PyQt5.QtGui import QIcon
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtWidgets import QWidget, QApplication

from resources import resources

print(QtQuick)
print(resources)


class MyAppMainWindow(QWidget):
    def __init__(self):
        super(MyAppMainWindow, self).__init__()
        self.initUI()

    def initUI(self):
        self.setWindowTitle("My First PyQt5 App")
        self.setWindowIcon(QIcon('icon.ico'))
        self.show()


if __name__ == "__main__":
    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()
    # engine.load("resources/qmls/app_main_window.qml")
    # engine.load(QUrl("qrc:/resources/qmls/app_main_window.qml"))
    engine.load(":/resources/qmls/app_main_window.qml")
    # myApp = MyAppMainWindow()
    sys.exit(app.exec_())
