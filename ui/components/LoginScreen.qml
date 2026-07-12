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
                radius: Theme.radiusL

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
                radius: Theme.radiusXXL

                Rectangle {
                    id: loginForm
                    color: Theme.white
                    radius: Theme.radiusL
                    width: parent.width - 100
                    height: parent.height - 400
                    anchors.centerIn: parent

                    Rectangle { 
                        id: loginFormPlaceholder
                        width: parent.width - 40
                        height: parent.height - 40
                        anchors.centerIn: parent
                        color:"transparent"

                        ColumnLayout {
                            anchors.fill: parent
                            spacing: Theme.spacingLayout

                            Rectangle {
                                Layout.fillWidth: true
                                Layout.preferredHeight: 40
                                color: Theme.grey
                                radius: Theme.radiusXL

                                Text {
                                    text: qsTr("Login to your account.")
                                    anchors.centerIn: parent
                                   // wrapMode: Text.WordWrap
                                }
                            }

                            Rectangle {
                                Layout.topMargin: Theme.marginMain
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                radius: Theme.radiusXL
                                color: Theme.grey

                                Rectangle {
                                    width: parent.width - 40
                                    height: parent.height - 40
                                    anchors.centerIn: parent
                                    color: "transparent"

                                    ColumnLayout {
                                        anchors.fill: parent

                                        Rectangle {
                                            Layout.leftMargin: Theme.marginMain
                                            Layout.rightMargin: Theme.marginMain
                                            Layout.fillWidth: true
                                            Layout.preferredHeight: 50
                                            radius: Theme.radiusXXL
                                            color: Theme.grey
                                            border.color: Theme.black

                                            TextField {
                                                id: phoneInput
                                                placeholderText: qsTr("Enter your Phone Number")
                                                anchors.fill: parent
                                                color: Theme.black
                                                background: Rectangle {
                                                    height: parent.height
                                                    width: parent.width
                                                    radius: Theme.radiusXXL
                                                    opacity: phoneInput.hovered ? 1.00 : 0.80

                                                    Behavior on opacity {
                                                        NumberAnimation { duration: 200 }
                                                    }
                                                }
                                                horizontalAlignment: TextInput.AlignHCenter
                                                verticalAlignment: TextInput.AlignVCenter
                                                hoverEnabled: true
                                                onAccepted: {
                                                    console.log("User entered phone number:", text)
                                                }
                                            }
                                        }
                                        Rectangle {
                                            Layout.leftMargin: Theme.marginMain
                                            Layout.rightMargin: Theme.marginMain
                                            Layout.fillWidth: true
                                            Layout.preferredHeight: 50
                                            radius: Theme.radiusXXL
                                            border.color: Theme.black
                                            color: Theme.grey

                                            TextField {
                                                id: passwdInput
                                                placeholderText: qsTr("Enter your passcode")
                                                color: Theme.black
                                                anchors.fill: parent
                                                background: Rectangle {
                                                    width: parent.width
                                                    height: parent.height
                                                    radius: Theme.radiusXXL
                                                    opacity: passwdInput.hovered ? 1.00 : 0.80

                                                    Behavior on opacity {
                                                        NumberAnimation { duration: 200 }
                                                    }
                                                }
                                                horizontalAlignment: TextInput.AlignHCenter
                                                verticalAlignment: TextInput.AlignVCenter
                                                hoverEnabled: true
                                                onAccepted: {
                                                    console.log("User entered passcode:", text)
                                                }
                                            }
                                        }
                                        Button {
                                            id: loginBtn
                                            text: qsTr("Login")

                                            Layout.fillWidth: true
                                            Layout.preferredHeight: 40
                                            Layout.leftMargin: Theme.marginMain
                                            Layout.rightMargin: Theme.marginMain
                                            hoverEnabled: true

                                            contentItem: Text {
                                                text: loginBtn.text
                                                color: loginBtn.hovered ? Theme.black : Theme.white
                                                font.pixelSize: 14
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter

                                                Behavior on color {
                                                    ColorAnimation { duration: 200 }
                                                }
                                            }

                                            background: Rectangle {
                                                color: loginBtn.hovered ? Theme.ictfromabc_native_red : Theme.black
                                                radius: Theme.radiusXXL

                                                Behavior on color {
                                                    ColorAnimation { duration: 200 }
                                                }

                                                HoverHandler {
                                                    cursorShape: Qt.PointingHandCursor
                                                }
                                            }
                                        }

                                        // horizontal line
                                        Rectangle {
                                            Layout.margins: Theme.marginMain
                                            Layout.fillWidth: true
                                            Layout.preferredHeight: 2
                                            color: Theme.black
                                            radius: Theme.radiusS
                                        }

                                        Rectangle {
                                            Layout.margins: Theme.marginMain
                                            Layout.fillWidth: true
                                            Layout.fillHeight: true
                                            radius: Theme.radiusXL
                                            color: Theme.white

                                            ColumnLayout {
                                                anchors.fill: parent
                                                anchors.margins: Theme.marginMain
                                                spacing: 0

                                                Rectangle {
                                                    Layout.margins: Theme.marginMain
                                                    Layout.fillWidth: true
                                                    Layout.preferredHeight: 40
                                                    radius: Theme.radiusXL

                                                    Text {
                                                        width: parent.width
                                                        text: "Don't have an account? or Did you forgot your password? Don't worry, We got your back as always :)"
                                                        anchors.centerIn: parent
                                                        wrapMode: Text.WordWrap
                                                    }
                                                }
                                                Rectangle {
                                                    id: fgpsswdNcrtacc_ph
                                                    Layout.fillWidth: true
                                                    Layout.fillHeight: true
                                                    radius: Theme.radiusXL

                                                    RowLayout {
                                                        anchors.fill: parent
                                                        spacing: 12
                                                        
                                                        Button {
                                                            id: createAccbtn
                                                            text: qsTr("Create Account")

                                                            Layout.fillWidth: true
                                                            Layout.preferredHeight:  40
                                                            hoverEnabled: true

                                                            onClicked: Qt.openUrlExternally("https://ictfromabc.com/auth/register")

                                                            contentItem: Text {
                                                                text: createAccbtn.text
                                                                color: createAccbtn.hovered ? Theme.black : Theme.white
                                                                font.pixelSize: 14
                                                                horizontalAlignment: Text.AlignHCenter
                                                                verticalAlignment: Text.AlignVCenter

                                                                Behavior on color {
                                                                    ColorAnimation { duration: 200 }
                                                                }
                                                            }

                                                            background: Rectangle {
                                                                color: createAccbtn.hovered ? Theme.blue : Theme.black
                                                                radius: Theme.radiusXXL

                                                                Behavior on color {
                                                                    ColorAnimation { duration: 200 }
                                                                }

                                                                HoverHandler {
                                                                    cursorShape: Qt.PointingHandCursor
                                                                }
                                                            }
                                                        }
                                                        
                                                        Button {
                                                            id: forgotPasswdBtn
                                                            text: qsTr("Forgot Passcode")

                                                            Layout.fillWidth: true
                                                            Layout.preferredHeight: 40
                                                            hoverEnabled: true

                                                            onClicked: Qt.openUrlExternally("https://www.ictfromabc.com")

                                                            contentItem: Text {
                                                                text: forgotPasswdBtn.text
                                                                color: forgotPasswdBtn.hovered ? Theme.black : Theme.white
                                                                font.pixelSize: 14
                                                                horizontalAlignment: Text.AlignHCenter
                                                                verticalAlignment: Text.AlignVCenter

                                                                Behavior on color {
                                                                    ColorAnimation { duration: 200 }
                                                                }
                                                            }

                                                            background: Rectangle {
                                                                color: forgotPasswdBtn.hovered ? Theme.ictfromabc_native_red : Theme.black
                                                                radius: Theme.radiusXXL

                                                                Behavior on color {
                                                                    ColorAnimation { duration: 200 }
                                                                }

                                                                HoverHandler {
                                                                    cursorShape: Qt.PointingHandCursor
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                Rectangle {
                                                    Layout.fillHeight: true
                                                    Layout.fillWidth: true
                                                    radius: Theme.radiusXL
                                                    
                                                    ColumnLayout {
                                                        anchors.fill: parent
                                                        spacing: 0

                                                        Rectangle {
                                                            Layout.fillWidth: true
                                                            Layout.preferredHeight: 40

                                                            Text {
                                                                text: "Need help?"
                                                                anchors.centerIn: parent
                                                                font.pixelSize: 12
                                                            }
                                                        }
                                                        Rectangle {
                                                            Layout.fillWidth: true
                                                            Layout.fillHeight: true
                                                            radius: Theme.radiusXL

                                                            Text {
                                                                text: "Phone: 071 455 5513"
                                                                anchors.centerIn: parent
                                                                font.pixelSize: 12
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        Rectangle {
                                            id: linkPlaceholder
                                            Layout.fillWidth: true
                                            Layout.preferredHeight: 50
                                            color: "black"
                                            radius: Theme.radiusXXL
                                            Layout.margins: Theme.marginMain

                                            RowLayout {
                                                anchors.fill: parent
                                                spacing: 0
                                                
                                                SocialButton {
                                                    iconSource: "../../assets/youtube-color-svgrepo-com.svg"
                                                    onClicked: Qt.openUrlExternally("https://www.youtube.com/@RavinduBandaranayake")
                                                }
                                                SocialButton {
                                                    iconSource: "../../assets/telegram-svgrepo-com.svg"
                                                    onClicked: Qt.openUrlExternally("https://telegram.org")
                                                }
                                                SocialButton {
                                                    iconSource: "../../assets/facebook-svgrepo-com.svg"
                                                    onClicked: Qt.openUrlExternally("https://www.facebook.com/ravinduthegreat")
                                                }
                                                SocialButton {
                                                    iconSource: "../../assets/website-dashboard-svgrepo-com.svg"
                                                    onClicked: Qt.openUrlExternally("https://www.ictfromabc.com")
                                                    color: Theme.red
                                                }
                                            }
                                        }
                                        Rectangle {
                                            Layout.margins: Theme.marginMain
                                            Layout.preferredHeight: 20
                                            Layout.fillWidth: true
                                            color: "transparent"
                                            Text {
                                                text: "©2026. All rights reserved."
                                                anchors.centerIn: parent
                                                font.pixelSize: 10
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
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