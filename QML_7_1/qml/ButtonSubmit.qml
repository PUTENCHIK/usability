import QtQuick
import Felgo
import QtQuick.Controls 2.5

Button {
    id: btn

    text: "Log In"
    font.pixelSize: 16
    palette.buttonText: "white"

    background: Rectangle {
        implicitWidth: parent.width
        implicitHeight: 40

        color: hovered ? "#005cd4" : "#036ffc"
    }
}
