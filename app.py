import sys

from PyQt5 import QtQuick
from PyQt5.QtCore import QObject, pyqtSlot, QTimer
from PyQt5.QtGui import QIcon
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtWidgets import QWidget, QApplication, QLabel

from resources import resources

print(QtQuick)
print(resources)


class MyAppMainWindow(QWidget):
    def __init__(self):
        super(MyAppMainWindow, self).__init__()
        self.initUI()

    def initUI(self):
        ##
        self.resize(800, 600)
        ##
        self.label = QLabel(self)
        self.label.setText("哈哈哈哈")
        ##
        screen = QApplication.primaryScreen()
        qpixmap = screen.grabWindow(0)
        print(qpixmap)
        self.label.setPixmap(qpixmap)
        ##
        self.setWindowTitle("My First PyQt5 App")
        self.setWindowIcon(QIcon('icon.ico'))
        #
        self.show()


class ScreenCaptureWindow(QWidget):
    def __init__(self):
        super(ScreenCaptureWindow, self).__init__()
        self.index = 0
        self.resize(800, 600)
        self.setWindowTitle("录屏实况")
        self.label = QLabel(self)
        self.timer = QTimer()
        self.timer.timeout.connect(self.capture_screen)
        self.capture_screen()

    def capture_screen(self):
        self.index += 1
        screen = QApplication.primaryScreen()
        screen_img = screen.grabWindow(0)
        self.label.setPixmap(screen_img)
        print(screen_img)
        print("截图:" + str(self.index))

    def capture_screen_start(self):
        self.show()
        self.timer.start(100)

    def capture_screen_stop(self):
        self.hide()
        self.timer.stop()


class MyClass(QObject):
    def __init__(self):
        super(MyClass, self).__init__()
        self.scw = ScreenCaptureWindow()

    @pyqtSlot(str)
    def screen_capture_start(self):
        self.scw.capture_screen_start()

    @pyqtSlot(str)
    def screen_capture_stop(self):
        self.scw.capture_screen_stop()


if __name__ == "__main__":
    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()
    # engine.load("resources/qmls/app_main_window.qml")
    # engine.load(QUrl("qrc:/resources/qmls/app_main_window.qml"))
    engine.load(":/resources/qmls/app_main_window.qml")
    con = MyClass()
    context = engine.rootContext()
    context.setContextProperty("con", con)
    # myApp = MyAppMainWindow()
    sys.exit(app.exec_())
