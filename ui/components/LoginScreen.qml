import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "../theme"

ApplicationWindow {
    id: loginScreen
    title: "ICTfromABC - Sri Lanka's Largest ICT Class"
    color: Theme.black
    visible: true
    visibility: ApplicationWindow.FullScreen

    RowLayout {
        spacing: 0
        anchors.fill: parent

        Rectangle {
            Layout.preferredWidth: leftImage.implicitWidth
            Layout.fillHeight: true
            color: Theme.black

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

            color: Theme.blue
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: (rightImage.implicitWidth / rightImage.implicitHeight) * height

            Image {
                id: rightImage
                anchors.fill: parent
                anchors.verticalCenter: parent.verticalCenter
                source: "../../assets/logo.png"
                fillMode: Image.PreserveAspectFit
            }
        }
    }
}