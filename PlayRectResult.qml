import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

import QuestGame 1.0

Rectangle {
    id: play_rect

    property bool answerIsCorrect
    property string textResult
    property string textColor
    property int indexAnswer
    property int realIndexAnswer

    width: 130
    height: 20
    color: play_rect.answerIsCorrect ? "#EE9C4B" : "transparent"
    radius: 10

    Text {
        text: textResult
        anchors.centerIn: parent
        font.bold: true
        font.pixelSize: 15
        horizontalAlignment: Text.AlignLeft
        color: play_rect.answerIsCorrect ? "#black" : textColor
    }

    Connections {
        target: questgame
        onRectangleIndexChanged: {
            play_rect.realIndexAnswer = index

            if (play_rect.realIndexAnswer === play_rect.indexAnswer)
            {
                play_rect.answerIsCorrect = true
            }
            else
            {
                play_rect.answerIsCorrect = false
            }
        }
    }
}
