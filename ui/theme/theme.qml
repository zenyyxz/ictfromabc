// ui/theme/theme.qml
pragma Singleton
import QtQuick

QtObject {
    // colors
    // Colors
    readonly property color blue: "#0000FF" // Blue
    readonly property color green: "#008000" // Green
    readonly property color red: "#FF0000" // Red
    readonly property color black: "#121212" // Dark main background
    readonly property color grey: "#8c8c8c"
    readonly property color white: "#FFFFFF"
    readonly property color darkGrey: "#151517"
    readonly property color ictfromabc_native_red: "#D53F17"
    readonly property color lightBlue: "#2879A2"
    
    // Radii
    readonly property real radiusXXL: 40.0
    readonly property real radiusXL: 20.0
    readonly property real radiusL: 12.0
    readonly property real radiusM: 8.0
    readonly property real radiusS: 4.0

    // Spacing
    readonly property real spacingLayoutXS: 2.0
    readonly property real spacingLayout: 5.0
    readonly property real spacingLayoutM: 8.0
    
    // Margin
    readonly property real marginMain: 10.0 
    readonly property real marginS: 5.0
    readonly property real marginXS: 2.0

    // Border
    readonly property real borderS: 1.0
}