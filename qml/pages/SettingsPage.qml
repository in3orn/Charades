import VPlayApps 1.0
import QtQuick 2.0

import QtQuick.Layouts 1.1

import "../common"

Page {
    title: qsTr("Settings")

    ColumnLayout {
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
            margins: mm
        }


        AppText {
            text: qsTr("Number of rounds")
        }

        Field {
            id: numOfRoundsField
            hintText: qsTr("Number of rounds")

            onTextChanged: {
                var value = parseInt(text);
                if(value !== undefined)
                    settings.numOfRounds = value;
            }

            Layout.fillWidth: true
        }

        AppText {
            text: qsTr("Time per round")
        }

        Field {
            id: timePerRoundField
            hintText: qsTr("Time per round")

            onTextChanged: {
                var value = parseInt(text);
                if(value !== undefined)
                    settings.timePerRound = value;
            }

            Layout.fillWidth: true
        }

        AppText {
            text: qsTr("Allow charade changes")
        }

        AppSwitch {
            id: allowCharadeChangesSwitch

            onCheckedChanged: settings.allowCharadeChanges = checked;

            Layout.alignment: Qt.AlignCenter
        }

        Field {
            id: teamField
            hintText: qsTr("Team name")

            onTextChanged: {
                settings.team11.name = value;
            }

            Layout.fillWidth: true
        }
    }

    function init() {
        numOfRoundsField.text = settings.numOfRounds;
        timePerRoundField.text = settings.timePerRound;
        allowCharadeChangesSwitch.checked = settings.allowCharadeChanges;
    }

    Component.onCompleted: init();
}

