import QtQuick
import Felgo

Item {
    id:deleg
    property string message: "?"
    property string time: "?"

    Rectangle{
        id:rect
        border.color:"#3b3b3b"
        radius:5
        anchors.fill:parent
        gradient:Gradient{
            GradientStop{position:0;color:"#3d3d3d"}
            GradientStop{position:1;color:"#525252"}
        }
    }
    Row {
        id:row
        anchors.left:parent.left
        anchors.right: parent.right
        height:parent.height
        anchors.margins: 16

        Text{
            text:message;
            color: "white"
            anchors.verticalCenter: row.verticalCenter
            anchors.left: parent.left
        }
        Text{
            text:time
            color: "white"
            anchors.verticalCenter: row.verticalCenter
            anchors.right: parent.right
        }
    }
}
