import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "theme"
import "components"

ApplicationWindow {
    id: root
    visible: true
    title: "ictfromabc"

    visibility: ApplicationWindow.FullScreen
    color: "transparent"
    opacity: 0.5

    // listens to signals from C++ authManager
    Connections {
        target: authManager

        function onLoginSuccess() {
            viewLoader.sourceComponent = mainWorkspaceComponent
        }
    }
    
    Rectangle {
        id: tabOne
        width: parent.width - Theme.marginMain
        height: parent.height - Theme.marginMain
        radius: Theme.radiusM
        color: "transparent"
        anchors.centerIn: parent

        Loader {
            id: viewLoader
            anchors.fill: parent
        }
    }

    // --- View Components ---
    Component {
        id: mainWorkspaceComponent
        ColumnLayout {
            spacing: 0
            anchors.fill: parent
            NavBar {}

            RowLayout {
                Layout.topMargin: Theme.spacingLayout
                spacing: Theme.spacingLayout
                SideBar {}
                Main_Shell {}
            }
        }
    }

    Component {
        id: loginScreenComponent
        Rectangle {
            anchors.fill: parent
            color: Theme.ictfromabc_native_red // Preserves the clean background wrap around the form panels

            LoginScreen {}
        }
    }

    // --- Startup Logic
    Component.onCompleted: {
        // Query the C++ backend on boot
        if (authManager.hasSavedToken()) {
            viewLoader.sourceComponent = mainWorkspaceComponent
        } else {
            viewLoader.sourceComponent = loginScreenComponent
        }
    }
}