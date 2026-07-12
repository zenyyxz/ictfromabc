import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../theme"

Rectangle {
    id: sideBarItem
    property alias iconSource: sideBarItemImgSrc.source
    property alias itemText: txt.text

    Layout.fillWidth: true
    Layout.preferredHeight: 40
    // Layout.margins: Theme.marginMain
    Layout.leftMargin: Theme.marginS
    Layout.rightMargin: Theme.marginS
    color: Theme.white
    radius: Theme.radiusM

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
            Layout.fillHeight: true
            color: Theme.white
            radius: Theme.radiusM

            Text {
                id: txt
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
}