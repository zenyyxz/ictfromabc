import QtQuick
import QtQuick.Layouts
import "../theme"

Rectangle {
    id: sideBar
    color: Theme.grey
    radius: Theme.radiusM
    Layout.preferredWidth: tabOne.width * 0.10
    Layout.fillHeight: true

    ColumnLayout  {
        anchors.fill: parent
        spacing: 6

        SideBarItem {
            iconSource: "../../assets/facebook-svgrepo-com.svg"
            itemText: "Facebook"
        }
    }
}