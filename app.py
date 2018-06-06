import sys

from PyQt5.QtWidgets import QWidget, QApplication


class MyAppMainWindow(QWidget):
    def __init__(self):
        super(MyAppMainWindow, self).__init__()
        self.initUI()

    def initUI(self):
        self.setWindowTitle("My First PyQt5 App")
        self.show()


if __name__ == "__main__":
    app = QApplication(sys.argv)
    myApp = MyAppMainWindow()
    sys.exit(app.exec_())
