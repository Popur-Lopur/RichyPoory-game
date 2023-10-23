import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

import QuestGame 1.0

Rectangle {

    id: panel_answers
    width: 700
    height: 140
    color: "transparent"
    radius: 5


    property int high: 65
    property int fat: 345
    property int size: 20

    PlayBtn {
        id: btn_1answer
        width: fat
        height: high
        anchors.margins: 3
        anchors.top: panel_answers.top
        anchors.left: panel_answers.left
        checkTarget: 1
        textForTarget: "A"
    }

    PlayBtn {
        id: btn_2answer
        width: fat
        height: high
        anchors.margins: 3
        anchors.top: panel_answers.top
        anchors.right: panel_answers.right
        checkTarget: 2
        textForTarget: "B"
    }

    PlayBtn {
        id: btn_3answer
        width: fat
        height: high
        anchors.margins: 3
        anchors.bottom: panel_answers.bottom
        anchors.left: panel_answers.left
        checkTarget: 3
        textForTarget: "C"
    }

    PlayBtn {
        id: btn_4answer
        width: fat
        height: high
        anchors.margins: 3
        anchors.bottom: panel_answers.bottom
        anchors.right: panel_answers.right
        checkTarget: 4
        textForTarget: "D"
    }

    Connections {
        target: questgame
        onAnswer1Changed: {
            btn_1answer.textForAnswer = answer1
        }
        onAnswer2Changed: {
            btn_2answer.textForAnswer = answer2
        }
        onAnswer3Changed: {
            btn_3answer.textForAnswer = answer3
        }
        onAnswer4Changed: {
            btn_4answer.textForAnswer = answer4
        }
        onTargetChanged: {
            btn_1answer.targets = target
            btn_2answer.targets = target
            btn_3answer.targets = target
            btn_4answer.targets = target
        }
    }
}


