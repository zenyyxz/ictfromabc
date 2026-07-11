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
        color: "transparent"
        anchors.centerIn: parent

        ColumnLayout {
            spacing: 0
            anchors.fill: parent
            NavBar {}

            RowLayout {
                Layout.topMargin: Theme.spacingLayout
                spacing: Theme.spacingLayout
                SideBar {}
                Main_Shell {}
            }
        }
    }
}