cmake_minimum_required(VERSION 3.16)
project(ImageEditor LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC OFF)

find_package(Qt6 REQUIRED COMPONENTS
    Core
    Gui
    Qml
    Quick
    QuickControls2
)

# Compile the Qt resource (qml.qrc) into the binary
qt6_add_resources(QML_RESOURCES qml.qrc)

# Copy qtquickcontrols2.conf into the build output dir
# configure_file(
#   "${CMAKE_SOURCE_DIR}/qtquickcontrols2.conf"
#   "${CMAKE_BINARY_DIR}/qtquickcontrols2.conf"
#   COPYONLY
# )

add_executable(${PROJECT_NAME}
    main.cpp
    ${QML_RESOURCES}
    qml/main.qml
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
        Qt6::Core
        Qt6::Gui
        Qt6::Qml
        Qt6::Quick
        Qt6::QuickControls2
)
