import QtQuick

Rectangle {
    property alias itemText: footer_item.text

    width: parent.width / 3
    anchors.margins: 2
    color: "#dcdcdc"

    Text {
        id:footer_item
        anchors.centerIn: parent
        font.pixelSize: 20
    }
}
