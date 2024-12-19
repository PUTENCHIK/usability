import QtQuick
import Felgo
import QtQuick.Controls 2.5

Button {
    id: btn

    text: "Clear"
    font.pixelSize: 16

    background: Rectangle {
        implicitWidth: parent.width
        implicitHeight: 40

        color: hovered ? "#dcdcdc" : "#ececec"
    }

    onClicked: {
        login.clear()
        password.clear()
    }
}
