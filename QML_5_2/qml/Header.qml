import Felgo
import QtQuick
import QtQuick.Window 2.15

Rectangle {
    id: header
    height: 100
    color: "#dcdcdc"

    property alias back_available: btn_back.visible

    Rectangle {
        id: btn_back
        width: parent.height
        height: parent.height
        color: mouse.containsMouse ? "#bcbcbc" : header.color

        Text {
            anchors.centerIn: parent
            text: "Назад"
            font.pixelSize: 14
            font.italic: true
        }

        MouseArea{
            id: mouse
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
                container.state = "first"
            }
        }
    }

    Text {
        id:header_text
        text: "Header"
        anchors.centerIn: parent
        font.pixelSize: 20
    }
}
