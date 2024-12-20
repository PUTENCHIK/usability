import Felgo
import QtQuick
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 420
    height: 800
    visible: true
    title: qsTr("Login page")

    ColumnLayout {
        id: root
        property string password: "123123"
        property string value: ""

        spacing: 30
        anchors.centerIn: parent

        function addSymbol(s) {
            if (root.value.length < root.password.length)
                root.value += s;
            else
                console.log("Too many symbols!");
        }

        function remove() {
            root.value = root.value.slice(0, -1);
        }

        function clear() {
            root.value = "";
        }

        Text {
            id: label
            Layout.alignment: Qt.AlignHCenter
            text: "Enter your password (note: " + root.password + "):"
            font.pixelSize: 16
        }

        PasswordRow {
            id: password_row
            Layout.alignment: Qt.AlignHCenter
            length: root.password.length
        }

        InputField {

        }

        Button {
            id: btn_login
            property string def: "Log In"
            property string ok: "Password is valid!"
            property string error: "Try again!"

            Layout.fillWidth: true
            height: 40

            text: def
            font.pixelSize: 16
            palette.buttonText: "white"
            background: Rectangle {
                anchors.fill: parent
                color: parent.hovered ? "#005cd4" : "#036ffc"
            }

            onClicked: {
                let message = root.password === root.value ? ok : error;
                btn_login.text = message;
            }
        }
    }
}
