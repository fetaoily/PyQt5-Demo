import QtQuick 2.5
import QtQuick.Controls 1.4

ApplicationWindow {
    id: mainWindow
    visible: true
    width:800
    height:600
    color: "#CFCFCF"


    menuBar: MenuBar{}
    toolBar: ToolBar{
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        Button {
            id: button1
            x: 12
            y: 4
            property int counter: 0
            text: qsTr("Button01")
        }

        Button {
            id: button2
            x: 110
            y: 4
            text: qsTr("Button02")
        }

        Button {
            id: buttonFullScreen
            x: 204
            y: 4
            text: qsTr("ShowFullScreen")

        }

        Button {
            id: buttonShowNormal
            x: 313
            y: 4
            text: qsTr("ShowNormal")
        }

    }
    statusBar: StatusBar{
        id: statusBar1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        Button {
            id: statusBarBtn01
            text: qsTr("状态栏")
            anchors.left: parent.left
            anchors.leftMargin: 1
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 1
            anchors.top: parent.top
            anchors.topMargin: 1
        }
    }

    Label {
        id: label
        color: "#df3333"
        text: qsTr("Label哈哈蛤嘻嘻嘻")
        anchors.top: parent.top
        anchors.topMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: sliderHorizontal.value
    }

    Slider {
        id: sliderHorizontal
        x: 133
        y: 165
        width: 564
        height: 22
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        minimumValue: 0
        maximumValue: 48
    }

    SpinBox {
        id: spinBox
        x: 353
        y: 182
        width: 95
        anchors.horizontalCenter: parent.horizontalCenter
        value:sliderHorizontal.value
        maximumValue: 48
    }

    Image {
        id: image
        x: 134
        y: 113
        width: 100
        height: 100
        source: "../images/minions.jpg"
    }

    Connections {
        target: button1
        onClicked: {
            button1.counter++
            button1.text = "计数:"+button1.counter
            print("clicked button1")
            console.info(mainWindow)

        }
    }

    Connections {
        target: button2
        onClicked:{
            button2.text = Date().toString()
            print("clicked button2")
            mainWindow.title = button2.text
        }
    }

    Connections {
        target: statusBarBtn01
        onClicked:{
            statusBarBtn01.text = "状态栏:"+Date().toString()
            print("clicked")
        }
    }

    Connections {
        target: buttonFullScreen
        onClicked: {
            mainWindow.showFullScreen()
            print("clicked")
        }
    }

    Connections {
        target: buttonShowNormal
        onClicked: {
            mainWindow.showNormal()
            print("clicked")
        }
    }
}
