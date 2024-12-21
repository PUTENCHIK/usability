import QtQuick
import Felgo
import QtQuick.Layouts 1.2

Item {
    property string activeColor: "red"

    ColumnLayout {
        id: cl
        width: 200
        height: 620
        spacing: 10

        Rectangle{
            id: red_segment
            Layout.fillWidth: true
            height: width

            color: activeColor == "red" ? "red" : "black"
        }

        Rectangle{
            id: yellow_segment
            Layout.fillWidth: true
            height: width

            color: activeColor == "yellow" ? "yellow" : "black"
        }

        Rectangle{
            id: green_segment
            Layout.fillWidth: true
            height: width

            color: activeColor == "green" ? "green" : "black"
        }

    }
}
