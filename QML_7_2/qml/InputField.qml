import QtQuick
import Felgo
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Grid {
    property int btn_width: 80
    property int btn_height: 40

    rows: 4; columns: 3
    spacing: 10

    Repeater {
        model: 9
        delegate: Button {
            width: btn_width
            height: btn_height

            text: index+1
            background: Rectangle {
                anchors.fill: parent
                color: parent.hovered ? "#bcbcbc" : "#ececec"
            }

            onClicked: {
                root.addSymbol(index+1)
            }
        }
    }

    Button {
        id: remove
        width: btn_width
        height: btn_height

        text: "remove"
        background: Rectangle {
            anchors.fill: parent
            color: parent.hovered ? "#bcbcbc" : "#ececec"
        }

        onClicked: {
            root.remove()
        }
    }

    Button {
        id: zero
        width: btn_width
        height: btn_height

        text: "0"
        background: Rectangle {
            anchors.fill: parent
            color: parent.hovered ? "#bcbcbc" : "#ececec"
        }

        onClicked: {
            root.addSymbol('0')
        }
    }

    Button {
        id: clear
        width: btn_width
        height: btn_height

        text: "clear"
        background: Rectangle {
            anchors.fill: parent
            color: parent.hovered ? "#bcbcbc" : "#ececec"
        }

        onClicked: {
            root.clear()
        }
    }
}
