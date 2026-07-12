import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../theme"

Rectangle {
    id: root 
    property alias iconSource: socialIcon.source
    signal clicked()

    Layout.fillWidth: true
    Layout.preferredHeight: 50
    color: Theme.black
    radius: Theme.radiusXXL

    Behavior on color {
        ColorAnimation { duration: 200 }
    }

    Image {
        id: socialIcon
        width: 40
        height: 40
        anchors.centerIn: parent
        sourceSize.width: width
        sourceSize.height: height
        fillMode: Image.PreserveAspectFit
        layer.enabled: true
        layer.smooth: true

        Behavior on scale {
            NumberAnimation { duration: 150; easing.type: Easing.OutQuad }
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onContainsMouseChanged: socialIcon.scale = containsMouse ? 1.15 : 1.00
            onClicked: root.clicked()
        }
    }
}
