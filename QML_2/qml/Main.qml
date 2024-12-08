import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12

Window {
    width: 640
    height: 480
    minimumWidth: 320
    minimumHeight: 240
    visible: true
    title: qsTr("QML_2. Layouts")

    ColumnLayout {
        id:container
        anchors.fill:parent

        Header {
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
        }

        Body {
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Footer {
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
        }
    }
}
