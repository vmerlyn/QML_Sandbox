import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    id:mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Image Editor")

    MenuBar {
        width: mainWindow.width
        Menu {
            id: fileMenu
               title: qsTr("File")
               MenuItem { text: qsTr("Open");    onTriggered: console.log("Open…") }
               MenuItem { text: qsTr("Save");    onTriggered: console.log("Save…") }
               MenuSeparator {}
               MenuItem { text: qsTr("Quit");    onTriggered: Qt.quit() }
           }
        Menu {
               title: qsTr("Edit")
               MenuItem { text: qsTr("Cut");     onTriggered: console.log("Cut") }
               MenuItem { text: qsTr("Copy");    onTriggered: console.log("Copy") }
               MenuItem { text: qsTr("Paste");   onTriggered: console.log("Paste") }
           }
       }
}
