import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Button {
    id: play_btn
    property color color1: "#132272"
    property color color2: "#061149"
    property int checkTarget
    property int targets
    property string textForTarget
    property string textForAnswer

    background: Rectangle {
        id: rect_play_btn
        border.color: "#fff5ee"
        border.width: 2
        radius: 10
        gradient: Gradient {
            id: gradient_play_btn
            orientation: Gradient.Vertical
            GradientStop { position: 0.9; color: play_btn.pressed ? play_btn.color1 : play_btn.color2 }
            GradientStop { position: 0.6; color: play_btn.color1 }
        }
    }
    Text {
        id: answer_target
        text: "  " + textForTarget + ": "
        anchors.left: play_btn.left
        anchors.verticalCenter: play_btn.verticalCenter
        color: "#EE9C4B"
        font.pixelSize: size
    }

    Text {
        id: answer_text
        text: textForAnswer
        font.pixelSize: size
        anchors.left: answer_target.right
        anchors.verticalCenter: play_btn.verticalCenter
        color: "white"

    }

    onClicked: {
        questgame.checkTarget()
        if (play_btn.checkTarget === play_btn.targets) {
            console.log("Значение совпадает!")
            questgame.numberRect();
            questgame.nextQuestion();



        }
        else {
            console.log("Значение не совпадает.")
            stackView.push("GameOverScreen.qml");


        }
    }
}

