import QtQuick
import QtQuick.Layouts
import "../theme"

Rectangle {
    id: root
    property alias iconSource: navBarBtnIcn.source
    
    Layout.preferredWidth: 35
    Layout.preferredHeight: 35
    color: Theme.white
    radius: Theme.radiusL

    Image {
        id: navBarBtnIcn
        width: 20
        height: 20
        anchors.centerIn: parent
        sourceSize.width: width
        sourceSize.height: height
        fillMode: Image.PreserveAspectFit
    }
}