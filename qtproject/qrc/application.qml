import QtQuick 2.11
import QtQuick.Controls 2.4


ApplicationWindow
{
    id: window
    visible: true

    width: 650
    height: 600
    title: "Calculator"





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


    Grid {
        id: grid
        x: 6
        y: 70
        width: 332
        height: 54
        spacing: 5
        rows: 1
        columns: 3

        Button
        {
            id: button1
            width: 45
            height: 45
            text: "1"
            clip: false
            flat: false
            display: AbstractButton.TextOnly
        }

        Button
        {
            id: button2
            width: 45
            height: 45
            text: "2"
            clip: true
            flat: false
            display: AbstractButton.TextOnly
        }

        Button
        {
            id: button3
            width: 45
            height: 45
            text: "3"
            flat: false
            display: AbstractButton.TextOnly
        }
    }

    Button
    {
        id: nextButton
        x: 260
        y: 197
        width: 131
        height: 42
        text: qsTr("Next")
        visible: true
        background: Rectangle
        {
            radius: 8
            border.width: 1
            border.color: "#26282a"
            color: nextButton.down ? "#d6d6d6" : "#f6f6f6"
        }
    }
}


