import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "../theme"

Button {
    id: startBtn
    property alias iconSource: startBtnImg.source
    property alias btnTxt: startBtnTxt.text

    Layout.fillWidth: true
    Layout.preferredHeight: 50
    Layout.leftMargin: Theme.marginS
    Layout.rightMargin: Theme.marginS
    hoverEnabled: true
    
    background: Rectangle {
        color: startBtn.hovered ? Theme.lightBlue : Theme.white
        radius: Theme.radiusL

        Behavior on color {
            ColorAnimation { duration: 200 }
        }

        RowLayout {
            anchors.fill: parent
            spacing: 6

            Rectangle {
                color: "transparent"
                radius: Theme.radiusL
                Layout.preferredHeight: 30
                Layout.preferredWidth: 30
                Layout.alignment: Qt.AlignVCenter
                Layout.leftMargin: Theme.marginS


                Image {
                    id: startBtnImg
                    sourceSize.width: parent.width
                    sourceSize.height: parent.height
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 30
                radius: Theme.radiusM
                Layout.alignment: Qt.AlignVCenter
                Layout.rightMargin: Theme.marginS

                Text {
                    id: startBtnTxt
                    font.pixelSize: 14
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: Theme.marginMain
                    color: startBtn.hovered ? Theme.black : Theme.blue

                    Behavior on color {
                        ColorAnimation { duration: 200 }
                    }
                }
            }
        }
    }
}