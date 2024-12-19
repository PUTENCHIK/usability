import Felgo
import QtQuick
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 400
    height: 720
    title: qsTr("Login Page")

    ColumnLayout {
        id: main
        anchors.centerIn: parent
        spacing: 15

        Input {
            id: login
            placeholder: "Username"
        }

        Input {
            id: password
            placeholder: "Password"
            isPassword: true
        }

        RowLayout {

            spacing: 20

            Item {
                Layout.fillWidth: true
            }

            ButtonClear {
                id: clear

            }

            ButtonSubmit {
                id: submit
            }

            Item {
                Layout.fillWidth: true
            }
        }
    }
}
