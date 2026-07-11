import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "../theme"

ApplicationWindow {
    id: loginScreen
    title: "ICTfromABC - Sri Lanka's Largest ICT Class"
    color: Theme.ictfromabc_native_red
    visible: true
    visibility: ApplicationWindow.FullScreen

    Rectangle {
        width: parent.width - Theme.spacingLayout
        height: parent.height - Theme.spacingLayout
        color: "transparent"
        radius: Theme.radiusM
        anchors.centerIn: parent

        RowLayout {
            spacing: Theme.spacingLayout
            anchors.fill: parent

            Rectangle {
                Layout.preferredWidth: leftImage.implicitWidth
                Layout.fillHeight: true
                color: Theme.black
                radius: Theme.radiusM

                Image {
                    id: leftImage
                    anchors.centerIn: parent
                    source: "../../assets/loginScreenText.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: Theme.black
                radius: Theme.radiusM

                Rectangle {
                    id: loginForm
                    color: Theme.white
                    radius: Theme.radiusL
                    width: parent.width - 100
                    height: parent.height - 400
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                Layout.fillHeight: true
                Layout.preferredWidth: (rightImage.implicitWidth / rightImage.implicitHeight) * height
                radius: Theme.radiusM

                Image {
                    id: rightImage
                    anchors.fill: parent
                    source: "../../assets/logo.png"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }
    }
}