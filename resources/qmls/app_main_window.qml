import QtQuick 2.5
import QtQuick.Controls 1.4

ApplicationWindow {
    id: mainWindow
    visible: true
    width:800
    height:600
    color: "#CFCFCF"

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
        maximumValue: mainWindow.width
    }

    SpinBox {
        id: spinBox
        x: 353
        y: 182
        width: 95
        anchors.horizontalCenter: parent.horizontalCenter
        value:sliderHorizontal.value
        maximumValue: 10000
    }
}
