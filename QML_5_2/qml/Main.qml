import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12

Window {
    width: 640
    height: 480
    minimumWidth: 320
    minimumHeight: 240
    visible: true
    title: qsTr("QML_5. Состояния и переходы")

    ColumnLayout {
        id:container
        anchors.fill:parent

        states:[
            State {
                name: "first"
                PropertyChanges {target: header; back_available: false}
                PropertyChanges {target: body; innerText: "First item"}
                PropertyChanges {target: footer; chosen_item: 1}
            },
            State {
                name: "second"
                PropertyChanges {target: header; back_available: true}
                PropertyChanges {target: body; innerText: "Second item"}
                PropertyChanges {target: footer; chosen_item: 2}
            },
            State {
                name: "third"
                PropertyChanges {target: header; back_available: true}
                PropertyChanges {target: body; innerText: "Third item"}
                PropertyChanges {target: footer; chosen_item: 3}
            }
        ]
        state: "first"

        Header {
            id: header
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
        }

        Body {
            id: body
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Footer {
            id: footer
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
        }
    }
}
