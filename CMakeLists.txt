cmake_minimum_required(VERSION 3.16)
project(ICTFromABC CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include_directories(include)

# Find required modules
find_package(Qt6 COMPONENTS REQUIRED Core Gui Quick Qml Network)

# Standard project setup
qt_standard_project_setup()

# Declare target (leave sources out; let the QML module handle them)
qt_add_executable(ICTFromABC)

# QML Modules configuration
qt_add_qml_module(ICTFromABC
    URI ictfromabc_uri
    VERSION 1.0
    QML_FILES
        ui/ictfromabcUI.qml
        ui/components/NavBar.qml
        ui/components/NavBarIcon.qml
        ui/components/SideBar.qml
        ui/components/Main_Shell.qml
        ui/components/HLine.qml
        ui/components/SideBarItem.qml
        ui/components/SocialButton.qml
        ui/components/LoginScreen.qml
        ui/theme/theme.qml
        ui/theme/qmldir
    RESOURCES
        assets/arrow-right-rectangle-svgrepo-com.svg
        assets/book-svgrepo-com.svg
        assets/card-tick-svgrepo-com.svg
        assets/connect-svgrepo-com.svg
        assets/facebook-svgrepo-com.svg
        assets/file-text-svgrepo-com.svg
        assets/notification-unread-lines-svgrepo-com.svg
        assets/profile-round-1346-svgrepo-com.svg
        assets/telegram-svgrepo-com.svg
        assets/search-alt-2-svgrepo-com.svg
        assets/video-frame-play-vertical-svgrepo-com.svg
        assets/website-dashboard-svgrepo-com.svg
        assets/website-click-svgrepo-com.svg
        assets/youtube-color-svgrepo-com.svg
        assets/loginScreenText.png
        assets/logo.png
    SOURCES
        src/main.cxx
        include/authmanager.hxx
        src/authmanager.cxx
)

# Link everything together
target_link_libraries(ICTFromABC PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Quick
    Qt6::Qml
)

