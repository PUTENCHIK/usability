import Felgo
import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 420
    height: 800
    visible: true
    title: qsTr("Списки. Модели. представления")

    Page {
        id: main_page
        anchors.fill: parent

        Background {
            id: background
            startColor: "#4a3f69"
            endColor: "#2a2045"
            anchors.fill: parent
        }

        MessagesList {
            id: messagesList
            anchors.margins: 20
            anchors.fill: parent
        }

        footer: SendMessage {
            id: send_message
            width: parent.width

            onNewMessage: {
                var newMsg = {};
                newMsg.message = msg;
                newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                messagesList.path.append(newMsg);
            }
        }
    }
}
