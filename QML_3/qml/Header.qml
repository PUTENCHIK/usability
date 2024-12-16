import Felgo
import QtQuick
import QtQuick.Window 2.15

Rectangle {
    id:header
    color: "#dcdcdc"

    height: 80

    Text {
        id:header_text
        text: "Header"
        anchors.centerIn: parent
        font.pixelSize: 20
    }
}
