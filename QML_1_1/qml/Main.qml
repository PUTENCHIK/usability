import Felgo
import QtQuick
import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 800
    height: 800
    visible: true
    title: qsTr("Pudge PRIME")

    Rectangle {
        id:body
        anchors.centerIn: parent
        width: parent.width*0.4
        height: parent.height*0.35
        color: "#ad8f78"
    }

    Rectangle {
        id: leftJacket
        anchors.left: body.left
        anchors.top: body.top
        anchors.topMargin: -body.height*0.1
        width: body.width*0.2
        height: body.height*0.9
        color: "#220b08"
    }

    Rectangle {
        id: rightJacket
        anchors.right: body.right
        anchors.top: body.top
        anchors.topMargin: -body.height*0.1
        width: body.width*0.2
        height: body.height*0.9
        color: "#220b08"
    }

    Rectangle {
        id: head
        anchors.horizontalCenter: body.horizontalCenter
        anchors.bottom: body.top
        anchors.bottomMargin: -body.width*0.15
        width: body.width*0.3
        height: body.width*0.3
        color: "#cd8f78"
    }

    Rectangle {
        id: jaw
        anchors.horizontalCenter: head.horizontalCenter
        anchors.bottom: head.bottom
        // anchors.bottomMargin: -body.width*0.15
        width: head.width*1.3
        height: head.width*0.3
        color: "#463f3e"
    }

    Rectangle {
        id: crest
        anchors.horizontalCenter: head.horizontalCenter
        anchors.bottom: head.top
        // anchors.bottomMargin: -body.width*0.15
        width: head.width*0.15
        height: head.width*0.15
        color: "#41613e"
    }

    Rectangle {
        id: leftEye
        anchors.left: head.left
        anchors.top: head.top
        anchors.leftMargin: head.width*0.23
        anchors.topMargin: head.height*0.25
        width: head.width*0.1
        height: head.width*0.1
        color: "#bac3df"
    }

    Rectangle {
        id: rightEye
        anchors.right: head.right
        anchors.top: head.top
        anchors.rightMargin: head.width*0.23
        anchors.topMargin: head.height*0.25
        width: head.width*0.1
        height: head.width*0.1
        color: "#bac3df"
    }

    Rectangle {
        id: leftShoulder
        anchors.right: body.left
        anchors.top: body.top
        width: body.width*0.25
        height: body.width*0.25
        color: "#ad8f78"
    }

    Rectangle {
        id: leftArm
        anchors.horizontalCenter: leftShoulder.horizontalCenter
        anchors.top: leftShoulder.bottom
        width: leftShoulder.width*0.8
        height: body.height*0.5
        color: "#ad8f78"
    }

    Rectangle {
        id: leftFist
        anchors.horizontalCenter: leftArm.horizontalCenter
        anchors.top: leftArm.bottom
        width: leftShoulder.width*0.9
        height: leftShoulder.height
        color: "#463f3e"
    }

    Rectangle {
        id: rightShoulder
        anchors.left: body.right
        anchors.top: body.top
        width: body.width*0.25
        height: body.width*0.25
        color: "#ad8f78"
    }

    Rectangle {
        id: rightArm
        anchors.horizontalCenter: rightShoulder.horizontalCenter
        anchors.top: rightShoulder.bottom
        width: rightShoulder.width*0.8
        height: body.height*0.5
        color: "#ad8f78"
    }

    Rectangle {
        id: rightFist
        anchors.horizontalCenter: rightArm.horizontalCenter
        anchors.top: rightArm.bottom
        width: rightShoulder.width*0.9
        height: rightShoulder.height
        color: "#463f3e"
    }

    Rectangle {
        id: belt
        anchors.top: body.bottom
        width: body.width*0.9
        height: body.height*0.1
        anchors.horizontalCenter: body.horizontalCenter
        color: "#220b08"
    }

    Rectangle {
        id: leftLeg
        anchors.left: belt.left
        anchors.top: belt.bottom
        width: belt.width*0.45
        height: body.height*0.67
        color: "#11241b"
    }

    Rectangle {
        id: rightLeg
        anchors.right: belt.right
        anchors.top: belt.bottom
        width: belt.width*0.45
        height: body.height*0.67
        color: "#11241b"
    }

    Rectangle {
        id: leftFoot
        anchors.right: leftLeg.right
        anchors.rightMargin: leftLeg.width*0.25
        anchors.top: leftLeg.bottom
        width: leftLeg.width*1.2
        height: body.height*0.15
        color: "#ad8f78"
    }

    Rectangle {
        id: rightFoot
        anchors.left: rightLeg.left
        anchors.leftMargin: rightLeg.width*0.25
        anchors.top: rightLeg.bottom
        width: rightLeg.width*1.2
        height: body.height*0.15
        color: "#ad8f78"
    }
}
