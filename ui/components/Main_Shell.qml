import QtQuick
import QtQuick.Layouts
import "../theme"

Rectangle {
    Layout.fillHeight: true
    Layout.fillWidth: true
    color: Theme.white
    radius: Theme.radiusM


    Text {
        text: "This is where it's gonna have the video element and other notices with some buttons"
        anchors.centerIn: parent
    }
}