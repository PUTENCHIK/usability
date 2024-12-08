import Felgo
import QtQuick
import QtQuick.Window 2.15

Rectangle {
    id:body
    color: "#e5e5e5"

    Text {
        id:body_text
        text: "Content"
        anchors.centerIn: parent
        font.pixelSize: 20
    }
}
