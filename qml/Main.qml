import VPlayApps 1.0
import VPlay 2.0
import QtQuick 2.0

import "pages"
import "common"

App {
    //licenseKey: "<generate one from http://v-play.net/licenseKey>"

    readonly property int mm: dp(10)

    onInitTheme: {
        Theme.appButton.textSize = sp(14)

        Theme.colors.tintColor = "cornflowerblue"
    }

    Navigation {

        NavigationItem {
            title: qsTr("Teams")
            icon: IconType.male

            NavigationStack { TeamsPage { } }
        }

        NavigationItem {
            title: qsTr("Categories")
            icon: IconType.list

            NavigationStack { Page { } }
        }

        NavigationItem {
            title: qsTr("Game")
            icon: IconType.playcircle

            NavigationStack { Page { } }
        }

        NavigationItem {
            title: qsTr("Settings")
            icon: IconType.gear

            NavigationStack { SettingsPage { } }
        }

        NavigationItem {
            title: qsTr("Credits")
            icon: IconType.copyright

            NavigationStack { Page { } }
        }
    }

    Settings {
        id: settings

        property bool allowCharadeChanges: false
        property int numOfRounds: 10
        property int timePerRound: 180000

        TeamSettings {
            id: team1
        }

        Component.onCompleted: {
            var numOfRoundsStored = getValue("numOfRounds")
            if(numOfRoundsStored !== undefined)
                numOfRounds = numOfRoundsStored;

            var timePerRoundStored = getValue("timePerRound")
            if(timePerRoundStored !== undefined)
                timePerRound = timePerRoundStored;

            var allowCharadeChangesStored = getValue("allowCharadeChanges")
            if(allowCharadeChangesStored !== undefined)
                allowCharadeChanges = allowCharadeChangesStored;

            console.debug("[Settings] numOrRounds: " + numOfRounds);
            console.debug("[Settings] timePerRound: " + timePerRound);
            console.debug("[Settings] allowCharadeChanges: " + allowCharadeChanges);

            console.debug("[Settings] team1.name: " + team1.name);
        }

        Component.onDestruction: {
            setValue("numOfRounds", numOfRounds);
            setValue("timePerRound", timePerRound);
            setValue("allowCharadeChanges", allowCharadeChanges);

            setValue("team1", team1);
        }
    }
}

