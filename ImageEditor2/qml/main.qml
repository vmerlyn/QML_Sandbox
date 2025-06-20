import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Window {
    id:mainWindow
    visible: true
    title: qsTr("Hello QML")

    RowLayout {
        id: gridLayout
        anchors.fill:parent

        Button {
            text: "One"
            display: AbstractButton.TextOnly
        }

        Label {
            text: qsTr("Image Editor")
            font.pointSize: 12
        }

        RadioButton {
            id: radioButton
            text: qsTr("Radio Button")
        }

        CheckBox {
            id: checkBox
            text: qsTr("Check Box")
        }

        Dial {
            id: dial
        }

        RangeSlider {
            id: rangeSlider
            second.value: 0.75
            first.value: 0.25
        }

        SpinBox {
            id: spinBox
        }

        Tumbler {
            id: tumbler
            model: 10
        }
    }



    MenuBar {
        id: menuBar
        width: mainWindow.width
        Menu {
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
