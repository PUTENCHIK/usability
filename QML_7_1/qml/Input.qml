import QtQuick
import Felgo
import QtQuick.Controls 2.5

TextField {
    id: input

    property bool isPassword: false
    property string placeholder: "Enter"

    font.pixelSize: 18

    placeholderText: qsTr(placeholder)
    echoMode: isPassword ? TextInput.Password : TextInput.Normal

    background: Rectangle {
        implicitWidth: 300
        implicitHeight: 40
        color: parent.hovered ? "#dcdcdc" : "#ececec"
    }
}
