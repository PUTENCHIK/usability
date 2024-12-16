import QtQuick
import Felgo

Rectangle {

    id: item
    property string startColor: "black"
    property string endColor: "white"

    gradient: Gradient {
        GradientStop{ position: 0; color: startColor }
        GradientStop{ position: 1; color: endColor }
    }
}
