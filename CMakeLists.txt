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
    SOURCES
        src/main.cxx
)

# Link everything together
target_link_libraries(ICTFromABC PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Quick
    Qt6::Qml
)

