import VPlayApps 1.0
import QtQuick 2.0

import QtQuick.Layouts 1.1

Page {
    title: qsTr("Teams")

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: mm

        Item {
            clip: true

            Layout.fillWidth: true
            Layout.fillHeight: true

            ListView {
                id: listView

                model: ListModel { id: listModel }
                delegate: SimpleRow {
                    iconSource: IconType.gamepad
                    text: name
                    detailText: name
                }

                anchors.fill: parent
            }
        }
    }

    Component.onCompleted: init();

    function init() {
        listModel.append({"name": "asd"});
        listModel.append({"name": "asd"});
        listModel.append({"name": "asd"});
        listModel.append({"name": "aaa"});
    }
}

