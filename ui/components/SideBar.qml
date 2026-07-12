import QtQuick
import QtQuick.Layouts
import "../theme"

Rectangle {
    id: sideBar
    color: Theme.black
    radius: Theme.radiusM
    Layout.preferredWidth: tabOne.width * 0.11
    Layout.fillHeight: true

    ColumnLayout  {
        anchors.fill: parent
        spacing: 6

        SideBarItem {
            iconSource: "../../assets/book-svgrepo-com.svg"
            itemText: "My Lessons"
        }

        Rectangle {
            Layout.preferredHeight: 140
            Layout.fillWidth: true
            Layout.margins: Theme.marginS
            color: Theme.grey
            radius: Theme.radiusM

            ColumnLayout {
                anchors.fill: parent
                spacing: 0

                SideBarItem {
                    iconSource: "../../assets/arrow-right-rectangle-svgrepo-com.svg"
                    itemText: "A/L 2028"
                }
                SideBarItem {
                    iconSource: "../../assets/arrow-right-rectangle-svgrepo-com.svg"
                    itemText: "A/L 2027"
                }
                SideBarItem {
                    iconSource: "../../assets/arrow-right-rectangle-svgrepo-com.svg"
                    itemText: "A/L 2026"
                }
            }
        }
        SideBarItem {
            iconSource: "../../assets/arrow-right-rectangle-svgrepo-com.svg"
            itemText: "A/L Video Modules"
        }
        SideBarItem {
            iconSource: "../../assets/arrow-right-rectangle-svgrepo-com.svg"
            itemText: "GIT"
        }
        HLine {}
    }
}