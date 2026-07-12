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
            Layout.topMargin: Theme.marginS

        }
        HLine {
            Layout.margins: Theme.marginS
            color: Theme.white
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
        HLine {
            Layout.margins: Theme.marginS
            color: Theme.white
        }
        SideBarItem {
            iconSource: "../../assets/video-frame-play-vertical-svgrepo-com.svg"
            itemText: "A/L Video Modules"
        }
        SideBarItem {
            iconSource: "../../assets/arrow-right-rectangle-svgrepo-com.svg"
            itemText: "GIT"
        }
        HLine {
            color: Theme.white
            Layout.margins: Theme.marginS
        }
        SideBarItem {
            iconSource: "../../assets/arrow-right-rectangle-svgrepo-com.svg"
            itemText: "O/L Courses"
        }
        HLine {
            color: Theme.white
            Layout.margins: Theme.marginS
        }
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 140
            Layout.margins: Theme.marginS
            radius: Theme.radiusM
            color: Theme.grey
            
            ColumnLayout {
                anchors.fill: parent
                spacing: 0

                SideBarItem {
                    iconSource: "../../assets/file-text-svgrepo-com.svg"
                    itemText: "Tutes"
                }
                SideBarItem {
                    iconSource: "../../assets/file-text-svgrepo-com.svg"
                    itemText: "Past Papers"
                }
                SideBarItem {
                    iconSource: "../../assets/file-text-svgrepo-com.svg"
                    itemText: "PDFs"
                }
            }
        }
        HLine {
            Layout.margins: Theme.marginS
            color: Theme.white
        }
        SideBarItem {
            iconSource: "../../assets/card-tick-svgrepo-com.svg"
            itemText: "Payments"
        }
        SideBarItem {
            iconSource: "../../assets/connect-svgrepo-com.svg"
            itemText: "Socials"
        }
        HLine {
            Layout.margins: Theme.marginS
            color: Theme.white
        }
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: Theme.white
            radius: Theme.radiusXL
            Layout.margins: Theme.marginS

            Rectangle {
                width: parent.width - Theme.marginMain
                height: parent.height - Theme.marginMain
                radius: Theme.radiusXXL
                color: Theme.red
                anchors.centerIn: parent

                Text {
                    text: "<b><font color='#121212'>ict</font><font color='#FFFFFF'>fromabc</font></b>"
                    anchors.centerIn: parent
                }
            }
        }
        HLine {
            Layout.margins: Theme.marginS
            color: Theme.white
        }
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 40
            color: Theme.grey
            radius: Theme.radiusXL
            Layout.margins: Theme.marginS

            Rectangle {
                width: parent.width - Theme.marginMain
                height: parent.height - Theme.marginMain
                radius: Theme.radiusXXL
                color: Theme.white
                anchors.centerIn: parent

                Text {
                    text: "version: 0.1"
                    anchors.centerIn: parent
                }
            }
        }
        Item {
            Layout.fillHeight: true
        }
    }
}