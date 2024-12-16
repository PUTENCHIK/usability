import QtQuick 2.15
import QtQuick.Window 2.15

Window
{
    id:win
    width: 640; height: 480; visible: true
    title: qsTr("Hello World")
    minimumWidth: 320
    minimumHeight: 240

    Item
    {
        id: root
        anchors.fill: parent

        Header {
            id:header
            anchors.top: root.top
            anchors.left: root.left
            anchors.right: root.right
        }

        Body {
            id:body
            text: "Start content"
            anchors.top: header.bottom
            anchors.left: root.left
            anchors.right: root.right
            anchors.bottom: footer.top
            anchors.margins: 10
        }

        Footer {
            id:footer
            anchors.bottom: root.bottom
            anchors.left: root.left
            anchors.right: root.right
        }

    }
}
