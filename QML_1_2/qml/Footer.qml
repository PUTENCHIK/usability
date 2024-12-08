import Felgo
import QtQuick
import QtQuick.Window 2.15

Rectangle {
    id:footer
    color: "#ececec"

    height: 80

    FooterItem {
        id:item1
        itemText: "1"
        anchors.top: footer.top
        anchors.bottom: footer.bottom
        anchors.left: footer.left
        anchors.right: item2.left
    }

    FooterItem {
        id:item2
        itemText: "2"
        width: footer.width / 3
        anchors.top: footer.top
        anchors.bottom: footer.bottom
        anchors.horizontalCenter: footer.horizontalCenter
    }

    FooterItem {
        id:item3
        itemText: "3"
        anchors.top: footer.top
        anchors.bottom: footer.bottom
        anchors.right: footer.right
        anchors.left: item2.right
    }
}
