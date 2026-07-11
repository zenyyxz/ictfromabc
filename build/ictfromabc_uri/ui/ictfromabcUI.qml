import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "theme"

ApplicationWindow {
    id: root
    visible: true
    title: "ictfromabc"

    visibility: ApplicationWindow.FullScreen
    color: Theme.black
    
    Rectangle {
        id: tabOne
        width: parent.width - Theme.marginMain
        height: parent.height - Theme.marginMain
        radius: Theme.radiusM
        color: Theme.white
        anchors.centerIn: parent
    }
}