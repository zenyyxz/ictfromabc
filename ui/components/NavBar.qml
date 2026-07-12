import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../theme"

Rectangle {
    id: navBar
    color: Theme.black
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
                color: Theme.black
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

            RowLayout {
                anchors.fill: parent
                spacing: Theme.spacingLayout

                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 42
                    Layout.leftMargin: Theme.marginS
                    color: Theme.grey
                    radius: Theme.radiusXL

                    RowLayout {
                        anchors.fill: parent
                        spacing: Theme.spacingLayout

                        NavBarIcon {
                            iconSource: "../../assets/stats-svgrepo-com.svg"
                            Layout.leftMargin: Theme.marginS
                            radius: Theme.radiusXXL
                        }
                        NavBarIcon {
                            iconSource: "../../assets/rocket-svgrepo-com.svg"
                        }
                        Item {
                            Layout.fillWidth: true
                        }
                        NavBarIcon {
                            iconSource: "../../assets/atom-02-svgrepo-com.svg"
                        }
                        NavBarIcon {
                            iconSource: "../../assets/settings-minimalistic-svgrepo-com.svg"
                            Layout.rightMargin: Theme.marginS
                            radius: Theme.radiusXXL
                        }
                    }
                }

                Rectangle {
                    Layout.preferredHeight: 40
                    Layout.preferredWidth: 40
                    Layout.rightMargin: Theme.marginS
                    color: Theme.grey
                    radius: Theme.radiusL

                    NavBarIcon {
                        iconSource: "../../assets/profile-round-1346-svgrepo-com.svg"
                        anchors.centerIn: parent
                    }
                }
            }
        }
    }
}