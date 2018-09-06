import QtQuick 2.11

Rectangle
{
    id: root
    color: Qt.rgba(Math.random(), Math.random(), Math.random(), 1)

    signal activated(real xPosition, real yPosition)
    signal messageRecived(string person,string notice)

    property  int side: 100
    width: side; height: side

    MouseArea
    {
        anchors.fill: parent
        onPressed: root.activated(mouse.x, mouse.y)
    }

    Component.onCompleted:
    {
        console.log("The rectangle's color is ", color)
        root.messageRecived.connect(sendToPost)
        root.messageRecived.connect(sendToTelegraph)
        root.messageRecived.connect(sendToEmail)
        root.messageRecived("Levi", "Camaras a todos")
    }

    function sendToPost(person, notice)
    {
        console.log("Sending to post: " + person + ", " + notice)
    }
    function sendToTelegraph(person, notice)
    {
        console.log("Sending to telegraph: " + person + ", " + notice)
    }
    function sendToEmail(person, notice)
    {
        console.log("Sending to email: " + person + ", " + notice)
    }
}

//Rectangle
//{
//    id: rect
//    width: 100; height: 100

//    MouseArea
//    {
//        id: mouseArea
//        anchors.fill: parent
//    }

//    Connections
//    {
//        target: mouseArea
//        onClicked:
//        {
//            rect.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
//            console.log("2) Clicked mouse at ", mouse.x, mouse.y)
//        }
//    }
////    MouseArea
////    {
////        anchors.fill: parent
////        onPressedChanged:
////        {
////            console.log("Mouse area is pressed?", pressed)
////        }
//////        onClicked:
//////        {
//////            rect.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
//////            console.log("Clicked mouse at ", mouse.x, mouse.y)
//////        }
////    }
//}
