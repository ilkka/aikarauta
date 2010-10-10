/* Pushbutton component
 * Largely pilfered from Qt Components
 * Qt Components is Copyright (C) 2010 Nokia Corporation and/or its
 * subsidiary(-ies). All rights reserved.
 */

import Qt 4.7

Item {
    id: pushbutton
    Common { id: mx }

    property string text: "Button"
    property bool checkable: false
    property bool checked: false

    signal clicked

    width: Math.max(text.width + 20, 110)
    height: Math.max(text.height + 12, 23)

    Text {
        id: text
        font.pixelSize: mx.fontSize
        color: mx.fontColor
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: pushbutton.state==="pressed"?1:0
        anchors.horizontalCenterOffset: pushbutton.state==="pressed"?1:0
        text: pushbutton.text
    }
}
