import Qt 4.7

Rectangle {
    width: 200
    height: 323
    Text {
        text: "Hello World"
        anchors.centerIn: parent
    }
    Button {
        text: "foobar"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
