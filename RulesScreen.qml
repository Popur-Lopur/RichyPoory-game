import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Page {
    visible: true
    width: 731
    height: 699
    background: Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            orientation: Gradient.Vertical
            GradientStop { position: 0.0; color: "#132272" }
            GradientStop { position: 1.0; color: "#4B5DBE" }
        }
    }

    Text {
        id: rule_header
        text: "ПРАВИЛА ИГРЫ"
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
        font.pixelSize: 30
        color: "white"
    }


    Text {
        id: first_rule
        text: '* Чтобы выиграть в игре "$$$ RICHY-POORY $$$" вы должны ответить на 15 вопросов'
        anchors.top: rule_header.bottom
        anchors.left: parent.left
        font.pixelSize: 16
        color: "white"
        anchors.margins: 5
    }

    Text {
        id: second_rule
        text: '* В игре вам помогут 3 подсказки: '
        anchors.top: first_rule.bottom
        anchors.left: parent.left
        font.pixelSize: 16
        color: "white"
        anchors.margins: 5
    }

    Text {
        id: half
        text: "50/50 - Убирает 2 неправильных ответа"
        anchors.top: second_rule.bottom
        anchors.left: parent.left
        font.pixelSize: 16
        color: "white"
        anchors.margins: 5
        anchors.leftMargin: 20

    }

    Image {
        id: phone
        source: "images/phone.svg"
        width: 25
        height: 25
        anchors.top: half.bottom
        anchors.left: half.left
        anchors.margins: 5
    }

    Image {
        id: reset
        source: "images/reset.svg"
        width: 25
        height: 25
        anchors.top: phone.bottom
        anchors.left: half.left
        anchors.margins: 5
    }

    Image {
        id: chance
        source: "images/chance.svg"
        width: 25
        height: 25
        anchors.top: reset.bottom
        anchors.left: half.left
        anchors.margins: 5
    }

    Text {
        id: phone_text
        text: " - нужно успеть набрать номер за отведенное время"
        anchors.top: half.bottom
        anchors.left: phone.right
        font.pixelSize: 16
        color: "white"
        anchors.margins: 5
    }

    Text {
        id: reset_text
        text: " - меняет вопрос на другой"
        anchors.top: phone.bottom
        anchors.left: reset.right
        font.pixelSize: 16
        color: "white"
        anchors.margins: 5
    }

    Text {
        id: chance_text
        text: " - дает право на ошибку"
        anchors.top: reset.bottom
        anchors.left: chance.right
        font.pixelSize: 16
        color: "white"
        anchors.margins: 5
    }

    Text {
        id: rule_finish
        text: "Проиграть по правилам для мужика честь, а Google  и у бабы есть"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 100
        font.bold: true
        font.pixelSize: 20
        color: "white"
    }

    MenuBtn {
        id: btn_return_menu
        text: "Играть"
        width: 140
        height: 50
        anchors.top: rule_finish.bottom
        anchors.horizontalCenter: rule_finish.horizontalCenter
        anchors.margins: 5

        onClicked: {
            if(stackView.depth > 0) {
                    stackView.pop();
                }
            stackView.push("PlayScreen.qml");
            questgame.togetherMod();
            questgame.numberRect();
            questgame.nextQuestion();
        }
    }
}

