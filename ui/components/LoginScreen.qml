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
                                    text: "Login to your account."
                                    anchors.centerIn: parent
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
                                            Layout.margins: Theme.marginMain
                                            Layout.fillWidth: true
                                            Layout.preferredHeight: 60
                                            radius: Theme.radiusXXL
                                            color: Theme.grey
                                            border.color: Theme.black

                                            Text {
                                                text: "Enter your Phone Number"
                                                color: Theme.black
                                                anchors.centerIn: parent
                                            }
                                        }
                                        Rectangle {
                                            Layout.margins: Theme.marginMain
                                            Layout.fillWidth: true
                                            Layout.preferredHeight: 60
                                            radius: Theme.radiusXXL
                                            border.color: Theme.black
                                            color: Theme.grey

                                            Text {
                                                text: "Enter your passcode."
                                                color: Theme.black
                                                anchors.centerIn: parent
                                            }
                                        }

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
                                                Layout.margins: Theme.marginMain
                                                spacing: 0

                                                Rectangle {
                                                    Layout.margins: Theme.marginMain
                                                    Layout.fillWidth: true
                                                    Layout.preferredHeight: 40
                                                    radius: Theme.radiusXL

                                                    Text {
                                                        text: "Don't have an account? or Did you forgot your password?\nDon't worry, We got your back as always :)"
                                                        anchors.centerIn: parent
                                                    }
                                                }
                                                Rectangle {
                                                    Layout.fillWidth: true
                                                    Layout.fillHeight: true
                                                    radius: Theme.radiusXL

                                                    RowLayout {
                                                        anchors.fill: parent
                                                        spacing: 10

                                                        Rectangle {
                                                            Layout.preferredWidth: parent.width / 2
                                                            Layout.preferredHeight: 60
                                                            radius: Theme.radiusXL
                                                            color: Theme.blue
                                                            Layout.leftMargin: 10

                                                            Text {
                                                                text: "Create Account"
                                                                anchors.centerIn: parent
                                                                color: Theme.white
                                                            }
                                                        }
                                                        Rectangle {
                                                            Layout.fillWidth: true
                                                            Layout.preferredHeight: 60
                                                            radius: Theme.radiusXL
                                                            color: Theme.red
                                                            Layout.rightMargin: 10

                                                            Text {
                                                                text: "Reset Your Passcode"
                                                                anchors.centerIn: parent
                                                                color: Theme.black
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
                                                            }
                                                        }
                                                        Rectangle {
                                                            Layout.fillWidth: true
                                                            Layout.fillHeight: true
                                                            radius: Theme.radiusXL

                                                            Text {
                                                                text: "Phone: 071 455 5513"
                                                                anchors.centerIn: parent
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

                                            RowLayout {
                                                anchors.fill: parent
                                                spacing: 0
                                                
                                                Rectangle {
                                                    Layout.preferredWidth: linkPlaceholder.width/3
                                                    Layout.fillHeight: true 
                                                    radius: Theme.radiusXL
                                                    color: "transparent"
                                                    Image {
                                                        width: 50
                                                        height: 50
                                                        source: "../../assets/youtube-color-svgrepo-com.svg"
                                                        fillMode: Image.PreserveAspectFit
                                                        anchors.centerIn: parent

                                                        sourceSize.width: width
                                                        sourceSize.height: height
                                                    }
                                                }
                                                Rectangle {
                                                    Layout.preferredWidth: linkPlaceholder.width/3
                                                    Layout.fillHeight: true
                                                    color: "transparent"
                                                    Image {
                                                        height: 50
                                                        width: 50
                                                        source: "../../assets/telegram-svgrepo-com.svg"
                                                        fillMode: Image.PreserveAspectFit
                                                        anchors.centerIn: parent

                                                        sourceSize.width: width
                                                        sourceSize.height: height
                                                    }
                                                }
                                                Rectangle {
                                                    Layout.preferredWidth: linkPlaceholder.width/3
                                                    Layout.fillHeight: true
                                                    radius: Theme.radiusXL
                                                    color: "transparent"
                                                    Image {
                                                        width: 50
                                                        height: 50
                                                        fillMode: Image.PreserveAspectFit
                                                        source: "../../assets/facebook-svgrepo-com.svg"
                                                        anchors.centerIn: parent

                                                        sourceSize.width: width
                                                        sourceSize.height: height
                                                    }
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