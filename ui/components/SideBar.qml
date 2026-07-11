import QtQuick
import QtQuick.Layouts
import "../theme"

Rectangle {
    id: sideBar
    color: Theme.grey
    radius: Theme.radiusM
    Layout.preferredWidth: tabOne.width * 0.10
    Layout.fillHeight: true
}