import Felgo
import QtQuick
import QtQuick.Window 2.15

Rectangle {
    property alias innerText: body_text.text

    id:body
    color: "#e5e5e5"

    Text {
        id: body_text
        anchors.centerIn: parent
        font.pixelSize: 20
    }
}
