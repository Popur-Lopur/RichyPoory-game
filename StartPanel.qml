import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12


Rectangle {
    id: panel_start

    property int high: 50
    property int fat: 140

    color: "transparent"
    radius: 5
    width: 150
    height: 200


    MenuBtn {
        id: btn_newgame
        width: fat
        height: high
        text: "Новая Игра"
        anchors.bottom: btn_rules.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.margins: 5

        onClicked: {

            stackView.push("PlayScreen.qml");
            questgame.togetherMod();
            questgame.numberRect();
            questgame.newGameIndex();



        }
    }


    MenuBtn {
        id: btn_rules
        width: fat
        height: high
        text: "Правила"
        anchors.bottom: btn_exit.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.margins: 5
        onClicked: {
            stackView.clear();
            stackView.push("RulesScreen.qml");
        }
    }

    MenuBtn {
        id: btn_exit
        width: fat
        height: high
        text: "Выход"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.margins: 5
        onClicked: {            
             Qt.quit();
        }
    }
}



