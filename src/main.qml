import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Browser")
    Label {
        text: qsTr("QML Browser")
        anchors.centerIn: parent
    }
    ColumnLayout {
        anchors.fill: parent
        TextField {
            text: "qml file url"
            Layout.fillWidth: true
            height: 40
            onAccepted: {
                loader.source=text
            }
        }
        Loader {
            id: loader
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }

}
