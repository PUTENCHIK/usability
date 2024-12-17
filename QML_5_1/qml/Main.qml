import Felgo
import QtQuick
import QtQuick.Window
import QtQuick.Layouts 1.12

Window {
    property int fixedWidth: 320
    property int fixedHeight: 600

    property int margin: 40

    width: fixedWidth
    height: fixedHeight
    minimumWidth: fixedWidth
    maximumWidth: fixedWidth
    minimumHeight: fixedHeight
    maximumHeight: fixedHeight

    visible: true
    title: qsTr("Светофорчик по клику")

    Rectangle {
        id: rect
        color: "#dfdfdf"
        width: parent.width - 2*margin
        height: parent.height - 2*margin
        anchors.centerIn: parent

        states:[
            State {
                name: "stop"
                PropertyChanges {target: rect_red; color: "red"}
                PropertyChanges {target: rect_yellow; color: "black"}
                PropertyChanges {target: rect_green; color: "black"}
            },
            State {
                name: "caution"
                PropertyChanges {target: rect_red; color: "black"}
                PropertyChanges {target: rect_yellow; color: "yellow"}
                PropertyChanges {target: rect_green; color: "black"}
            },
            State {
                name: "go"
                PropertyChanges {target: rect_red; color: "black"}
                PropertyChanges {target:rect_yellow; color: "black"}
                PropertyChanges {target:rect_green; color: "green"}
            }
        ]
        state: "stop"

        transitions:[
            Transition {
                from: "stop"
                to: "caution"
                ColorAnimation {
                    property: "color"
                    duration: 500
                }
            },
            Transition {
                from: "caution"
                to: "go"
                ColorAnimation {
                    property: "color"
                    duration: 500
                }
            },
            Transition {
                from: "go"
                to: "stop"
                ColorAnimation {
                    property: "color"
                    duration: 500
                }
            }
        ]

        MouseArea{
            anchors.fill:parent
                onClicked: {
                if (parent.state === "stop") {
                    parent.state = "caution";
                } else if (parent.state === "caution") {
                    parent.state = "go";
                } else {
                    parent.state = "stop";
                }
            }
        }

        ColumnLayout {
            anchors.fill: parent

            Rectangle {
                id: rect_red
                width: 150
                height: 150
                color: "red"
                Layout.alignment: Qt.AlignHCenter
            }

            Rectangle {
                id: rect_yellow
                width: 150
                height: 150
                color: "yellow"
                Layout.alignment: Qt.AlignHCenter
            }

            Rectangle {
                id: rect_green
                width: 150
                height: 150
                color: "green"
                Layout.alignment: Qt.AlignHCenter
            }
        }
    }
}
