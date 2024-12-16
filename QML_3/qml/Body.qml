import Felgo
import QtQuick
import QtQuick.Window 2.15

Rectangle {
    id:body
    color: "#e5e5e5"
    property alias text: body_text.text

    Text {
        id:body_text
        anchors.centerIn: parent
        font.pixelSize: 20
    }
}
