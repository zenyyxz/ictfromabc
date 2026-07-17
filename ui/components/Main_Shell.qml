import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "../theme"

Rectangle {
    id: mainShell
    Layout.fillHeight: true
    Layout.fillWidth: true
    color: Theme.white
    radius: Theme.radiusM

    // notifications icon
    Button {
        width: 50
        height: 50
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: Theme.marginMain

        background: Rectangle {
            z: 100
            radius: (width + height) / 2
            color: Theme.white
            border.color: Theme.black
            border.width: 3

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

    Rectangle {
        width: 600
        height: 150
        color: Theme.white
        anchors.centerIn: parent

        GridLayout {
            columns: 3
            rows: 3
            anchors.fill: parent

            StartBtns {
                iconSource: "../../assets/video-frame-play-vertical-svgrepo-com.svg"
                btnTxt: "Watch Lectures"
            }
            StartBtns {
                iconSource: "../../assets/rocket-svgrepo-com.svg"
                btnTxt: "Do Quizes"
            }
            StartBtns {
                iconSource: "../../assets/paper-svgrepo-com.svg"
                btnTxt: "Do Papers"
            }
            StartBtns {
                iconSource: "../../assets/voice-square-svgrepo-com.svg"
                btnTxt: "Hear Voice Notes"
            }
            StartBtns {
                iconSource: "../../assets/atom-02-svgrepo-com.svg"
                btnTxt: "Read Short Notes"
            }
            StartBtns {
                iconSource: "../../assets/file-text-svgrepo-com.svg"
                btnTxt: "Read Tutes"
            }
            Item {
                Layout.fillHeight: true
            }
        }
    }
}