import QtQuick
import QtQuick.Layouts
import "../theme"

Rectangle {
    id: lessonCard
    property alias lessonDes: lessonDesTxt.text
    property alias lessonImgSrc: lessonCardImg.source

    width: 300
    height: 300
    color: Theme.white
    radius: Theme.radiusM

    ColumnLayout {
        anchors.fill: parent
        spacing: 6

        Rectangle {
            Layout.preferredWidth: lessonCard.width * 0.90
            Layout.preferredHeight: lessonCard.height * 0.40
            color: Theme.grey
            radius: Theme.radiusM
            border.color: Theme.grey
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
            Layout.topMargin: Theme.marginMain

            Image {
                id: lessonCardImg
                width: parent.width
                height: parent.height
                sourceSize.width: width
                sourceSize.height: height
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
            }
        }
        Rectangle {
            Layout.preferredWidth: lessonCard.width * 0.80
            Layout.fillHeight: true
            color: "transparent"
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

            Text {
                id: lessonDesTxt
                width: parent.width
                height: parent.height
                wrapMode: Text.WordWrap
                clip: true
                font.pixelSize: 14
            }
        }
    }
}