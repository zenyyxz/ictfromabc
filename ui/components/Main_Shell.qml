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

    Rectangle {
        width: 50
        height: 50
        radius: (width + height) / 2
        color: Theme.white
        border.color: Theme.black
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: Theme.marginMain

        Image {
            width: 40
            height: 40
            source: "../../assets/notification-unread-lines-svgrepo-com.svg"
            sourceSize.width: width
            sourceSize.height: height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }
}