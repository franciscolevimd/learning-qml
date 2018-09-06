import QtQuick 2.11
import QtQuick.Controls 2.2


ApplicationWindow 
{
    id: window
    visible: true

    width: 650
    height: 600
    title: "Signlas & Slots"

    Button
    {
        text: qsTr("Push")
        onClicked:
        {
            hellObj.sayHello("12345678")
        }

    }
//    Rectangle
//    {
//        id: rect

//        color: "blue"
//        width: 200
//        height: 200

//        signal qmlSignal(string msg)

//        MouseArea
//        {
//            anchors.fill: parent
//            onClicked:
//            {
//                hello.sayHello("12345678")
//            }
//        }
//    }

    Connections
    {
        id:cppConnection
        target:hellObj
        ignoreUnknownSignals: true
        onHelloResp:
        {
            infoLabel.text = 'success:' + String(success) + ', message:' + message
        }
    }

    Text
    {
        id: infoLabel
        x: 173
        y: 328
        width: 96
        height: 16
        color: "#9e1b1b"
        text: qsTr("dadadadad")
        font.pixelSize: 12
    }
}


