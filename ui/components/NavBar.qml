import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../theme"

Rectangle {
    id: navBar
    color: Theme.grey
    Layout.fillWidth: true
    Layout.preferredHeight: 50
    radius: Theme.radiusM

    RowLayout {
        anchors.fill: parent
        spacing: Theme.spacingLayout

        Rectangle {
            Layout.preferredHeight: 45
            Layout.fillWidth: true
            color: Theme.white
            radius: Theme.radiusL
        }
        Rectangle {
            Layout.preferredHeight: 40
            Layout.fillWidth: true
            color: "transparent"

            TextField {
                id: searchBox
                placeholderText: qsTr("Search...")
                anchors.fill: parent
                color: Theme.grey
                font.pixelSize: 14
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                hoverEnabled: true

                background: Rectangle {
                    color: Theme.white
                    radius: Theme.radiusXXL

                    Image {
                        width: 30
                        height: 30
                        source: "../../assets/search-alt-2-svgrepo-com.svg"
                        sourceSize.width: width
                        sourceSize.height: height
                        anchors.left: parent.left
                        anchors.leftMargin: Theme.marginMain
                        anchors.verticalCenter: parent.verticalCenter
                        fillMode: Image.PreserveAspectFit
                    }
                }
            }
        }
        Rectangle {
            Layout.preferredHeight: 45
            Layout.fillWidth: true
            color: Theme.white
            radius: Theme.radiusM

            Rectangle {
                width: 40
                height: 40
                color: Theme.white
                border.color: Theme.black
                radius: Theme.radiusL
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: Theme.marginS

                Image {
                    width: 20
                    height: 20
                    source: "../../assets/profile-round-1346-svgrepo-com.svg"
                    fillMode: Image.PreserveAspectFit
                    sourceSize.width: width
                    sourceSize.height: height
                    anchors.centerIn: parent
                }
            }
        }
    }
}