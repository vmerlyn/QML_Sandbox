import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400; height: 300
    title: qsTr("Hello QML")

    // A simple label in the center
    Label {
        text: qsTr("Hello, World!")
        anchors.centerIn: parent
        font.pointSize: 24
    }

    //Component.onCompleted: {
    //    console.log("Controls style:", QtQuick.Controls.Control.styleName)
    //}
}
