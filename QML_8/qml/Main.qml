import Felgo
import QtQuick
import QtQuick.Controls

Window {
    width: 420
    height: 800
    title: qsTr("Scrolling traffic light")
    visible: true

    SwipeView {
        id: view
        currentIndex: 0
        anchors.fill: parent

        TrafficlightPage {
            activeColor: "red"
        }

        TrafficlightPage {
            activeColor: "yellow"
        }

        TrafficlightPage {
            activeColor: "green"
        }
    }
    PageIndicator {
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
