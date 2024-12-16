import QtQuick
import Felgo
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: send_message
    height: 60

    signal newMessage(string msg)
        Row {
            anchors.fill: parent

            TextField {
                id: edtText
                selectByMouse: true
                anchors.fill: parent
                placeholderText: "Напишите сообщение"
                font.pointSize: 10;
                color: "black"
            }
            Button {
                id: btnAddItem
                height: parent.height
                anchors.right:parent.right
                text: "Отправить"
                onClicked: {
                    newMessage(edtText.text);
                    edtText.clear();
                }
            }
        }
}
