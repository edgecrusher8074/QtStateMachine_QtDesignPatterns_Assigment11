import QtQuick 2.0

Item {
    property bool isOn

    onIsOnChanged:
    {
        if(isOn)
        {
            state = "active"
        }
        else
        {
            state = "inactive"
        }

    }

    id: light
    width: 150
    height: 150

    Rectangle
    {
        id: fakeCircle
        color: "darkgray"
        radius: width
        anchors.fill: parent
    }

    states:
    [
        State
        {
            name: "active"
            PropertyChanges {
                target: fakeCircle
                color: "darkgreen"
            }
        },
        State{
            name: "inactive"
            PropertyChanges {
                target: fakeCircle
                color: "darkgray"
            }
        }

    ]
}
