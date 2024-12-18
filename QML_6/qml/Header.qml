import QtQuick
import Felgo
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2


RowLayout {
    id: root
    property alias back_available: btn_back.visible
    property int btns_size: 30
    height: 100
    spacing: 20

    Button {
        id: btn_back
        text: "Назад"
        font.pixelSize: 14
        font.italic: true

        onClicked: {
            stack_view.pop()
        }
    }

    Button {
        id: btn_to_red
        width: parent.btns_size
        height: parent.btns_size

        background: Rectangle {
            color: parent.hovered ? "#ff8080" : "red"
        }

        onClicked: {
            stack_view.pop(page_red)
        }
    }

    Button {
        id: btn_to_yellow
        width: parent.btns_size
        height: parent.btns_size

        background: Rectangle {
            color: parent.hovered ? "#ffffaa" : "yellow"
        }

        onClicked: {
            stack_view.push(page_yellow)
        }
    }

    Button {
        id: btn_to_green
        width: parent.btns_size
        height: parent.btns_size

        background: Rectangle {
            color: parent.hovered ? "#80ff80" : "green"
        }

        onClicked: {
            stack_view.push(page_green)
        }
    }
}
