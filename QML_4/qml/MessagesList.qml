import QtQuick
import Felgo

Item {
    id: meslist

    property alias path: my_model

    Item {
        id: container
        anchors.fill: parent
        // opacity: 0

        ListModel{
            id:my_model
            // ListElement{ message: "Hello!"; time: "12:00" }
            // ListElement{ message: "Danny you fired!!!"; time: "13:54" }
        }

        Component{
            id:my_delegate
            MyDelegate{
                message:model.message
                time:model.time
                width:parent.width
                height:40
            }
        }

        ListView{
            id:my_list
            anchors.fill:parent
            spacing: 10
            model:my_model
            delegate:my_delegate
        }
    }
}
