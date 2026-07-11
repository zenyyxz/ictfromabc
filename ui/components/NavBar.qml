import QtQuick
import QtQuick.Layouts
import "../theme"

Rectangle {
    id: navBar
    color: Theme.grey
    Layout.fillWidth: true
    Layout.preferredHeight: 50
    radius: Theme.radiusM

    Text {
        text: "This is gonna be the navbar"
        anchors.centerIn: parent
    }
}