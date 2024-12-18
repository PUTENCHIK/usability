import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("Stack_View")

    property int defMargin:10
    // name: value

    StackView {
        id: stack_view
        anchors.fill: parent
        initialItem: page_red
    }

    MyPage {
        id: page_red
        backgroundColor: "red"
        Layout.fillHeight: true
        // onButtonClicked: {
        //     stack_view.push(page_yellow)
        // }
    }

    MyPage {
        id: page_yellow
        backgroundColor: "yellow"
        Layout.fillHeight: true
        visible: false
        // onButtonClicked: {
        //     stack_view.push(page_green)
        // }
    }

    MyPage {
        id: page_green
        backgroundColor: "green"
        Layout.fillHeight: true
        visible: false
        // onButtonClicked: {
        //     stack_view.pop(page_red)
        // }
    }
}
