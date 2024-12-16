import QtQuick

Rectangle {
    id:item
    property bool chosen: false
    property alias itemText: item_text.text

    width: parent.width / 3
    anchors.margins: 2
    color: chosen ? "#dcdcdc" : "#ececec"

    Text {
        id:item_text
        anchors.centerIn: parent
        font.pixelSize: 20
    }
}
