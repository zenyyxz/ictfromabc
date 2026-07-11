import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "theme"
import "components"

ApplicationWindow {
    id: root
    visible: true
    title: "ictfromabc"

    visibility: ApplicationWindow.FullScreen
    color: "transparent"
    opacity: 0.5
    
    Rectangle {
        id: tabOne
        width: parent.width - Theme.marginMain
        height: parent.height - Theme.marginMain
        radius: Theme.radiusM
        color: Theme.white
        anchors.centerIn: parent

        ColumnLayout {
            spacing: 0
            anchors.fill: parent
            NavBar {}

            RowLayout {
                spacing: 0
                Rectangle {
                    Layout.preferredWidth: tabOne.width * 0.20
                    Layout.fillHeight: true
                    color: "blue"
                }
                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color: "green"
                }
            }
        }
    }
}