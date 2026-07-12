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
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: Theme.black

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
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: Theme.blue
        }
    }
}