import QtQuick

Rectangle {
    property alias itemText: footer_item.text
    property bool chosen: false

    width: parent.width / 3
    anchors.margins: 2
    color: chosen ? "#dcdcdc" : "#ececec"

    Text {
        id:footer_item
        anchors.centerIn: parent
        font.pixelSize: 20
        color: parent.chosen ? "#101010" : "#aaaaaa"
    }
}
