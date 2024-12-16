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

        MouseArea {
            id:mouse1
            anchors.fill: parent
            onClicked: {
                body.text = "Item 1 chosen"
                item1.chosen = !item1.chosen
                item2.chosen = false
                item3.chosen = false
            }
        }
    }

    FooterItem {
        id:item2
        itemText: "2"
        width: footer.width / 3
        anchors.top: footer.top
        anchors.bottom: footer.bottom
        anchors.horizontalCenter: footer.horizontalCenter

        MouseArea {
            id:mouse2
            anchors.fill: parent
            onClicked: {
                body.text = "Item 2 chosen"
                item1.chosen = false
                item2.chosen = !item2.chosen
                item3.chosen = false
            }
        }
    }

    FooterItem {
        id:item3
        itemText: "3"
        anchors.top: footer.top
        anchors.bottom: footer.bottom
        anchors.right: footer.right
        anchors.left: item2.right

        MouseArea {
            id:mouse3
            anchors.fill: parent
            onClicked: {
                body.text = "Item 3 chosen"
                item1.chosen = false
                item2.chosen = false
                item3.chosen = !item3.chosen
            }
        }
    }
}
