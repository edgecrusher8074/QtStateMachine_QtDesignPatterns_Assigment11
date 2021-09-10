import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window
{
    width: 1280
    height: 720
    visible: true
    title: qsTr("QStateMachine QML")

    Column
    {
        id: mainColumn
        width: 330
        height: 330
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 16

        LightBulb {
            id: lightbulb
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row
        {
            id: columnRow
            width: 200
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 16

            Button
            {
                id: onButton
                text: qsTr("On")
                onClicked: lightbulb.isOn = true
            }

            Button
            {
                id: offButton
                text: qsTr("Off")
                onClicked: lightbulb.isOn = false
            }
        }
    }
}
