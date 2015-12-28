import VPlayApps 1.0
import QtQuick 2.0

Rectangle {
    id: item
    height: input.height

    border.width: dp(1)
    border.color: Theme.dividerColor

    property alias text: input.text
    property alias hintText: input.hintText

    AppTextInput {
        id: input

        anchors.fill: parent
        anchors.leftMargin: mm
        anchors.rightMargin: mm
    }
}
