import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../theme"

Button {
    id: sidebarBtn
    property alias iconSource: sideBarItemImgSrc.source
    property alias itemText: txt.text

    Layout.fillWidth: true
    Layout.preferredHeight: 40
    Layout.leftMargin: Theme.marginS
    Layout.rightMargin: Theme.marginS
    hoverEnabled: true

    background: Rectangle {
        id: sideBarItem

        Layout.leftMargin: Theme.marginS
        Layout.rightMargin: Theme.marginS
        color: sidebarBtn.hovered ? Theme.ictfromabc_native_red : Theme.white
        radius: Theme.radiusM
        
        HoverHandler {
            cursorShape: Qt.PointingHandCursor
        }

        Behavior on color {
            ColorAnimation { duration: 200 }
        }

        RowLayout {
            anchors.fill: parent
            spacing: Theme.spacingLayout

            Image {
                id: sideBarItemImgSrc
                Layout.preferredWidth: 30
                Layout.preferredHeight: 30
                Layout.leftMargin: Theme.marginS
                sourceSize.width: width
                sourceSize.height: height
                fillMode: Image.PreserveAspectFit

                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
            }

            Rectangle {
                id: sideBarItemTxt
                Layout.fillWidth: true
                Layout.preferredHeight: 30
                color: Theme.white
                radius: Theme.radiusM
                Layout.rightMargin: Theme.marginS

                Text {
                    id: txt
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: Theme.marginXS
                }
            }
        }
    }
}