import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Page {
    id: page
    property alias backgroundColor:back_fon.color

    ColumnLayout {
        id: cl
        anchors.fill: parent
        spacing: 10

        Header {
            id: header
            Layout.fillWidth: true
            back_available: stack_view.depth > 1
        }

        Rectangle{
            id:back_fon
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

    }
}
