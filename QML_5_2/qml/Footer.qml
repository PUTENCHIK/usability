import Felgo
import QtQuick
import QtQuick.Window 2.15

Rectangle {
    id:footer
    height: 100
    color: "#ececec"

    property int chosen_item: 0

    FooterItem {
        id:item1
        itemText: "1"
        chosen: parent.chosen_item == 1
        anchors.top: footer.top
        anchors.bottom: footer.bottom
        anchors.left: footer.left
        anchors.right: item2.left

        MouseArea{
            anchors.fill:parent
            onClicked: {
                container.state = "first"
            }
        }
    }

    FooterItem {
        id:item2
        itemText: "2"
        chosen: parent.chosen_item == 2
        width: footer.width / 3
        anchors.top: footer.top
        anchors.bottom: footer.bottom
        anchors.horizontalCenter: footer.horizontalCenter

        MouseArea{
            anchors.fill:parent
            onClicked: {
                container.state = "second"
            }
        }
    }

    FooterItem {
        id:item3
        itemText: "3"
        chosen: parent.chosen_item == 3
        anchors.top: footer.top
        anchors.bottom: footer.bottom
        anchors.right: footer.right
        anchors.left: item2.right

        MouseArea{
            anchors.fill:parent
            onClicked: {
                container.state = "third"
            }
        }
    }
}
