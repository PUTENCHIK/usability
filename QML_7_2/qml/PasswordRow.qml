import QtQuick
import Felgo
import QtQuick.Layouts 1.2

RowLayout {
    id: password_row
    property int length: 6

    spacing: 10

    Repeater {
        model: length
        delegate: Text {
            text: "*"
            font.pixelSize: 40
            color: index < root.value.length ? "black" : "#808080"
        }
    }
}
