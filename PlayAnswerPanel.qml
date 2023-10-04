import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12


Rectangle {

    id: panel_answers
    width: 700
    height: 140
    color: "transparent"
    radius: 5
    border.color: "black"

    property int high: 65
    property int fat: 345

    MenuBtn {
        id: btn_answer1
        width: fat
        height: high
        text: "answer"
        anchors.margins: 3
        anchors.top: panel_answers.top
        anchors.left: panel_answers.left
        onClicked: {

        }
    }

    MenuBtn {
        id: btn_answer2
        width: fat
        height: high
        text: "answer"
        anchors.margins: 3
        anchors.top: panel_answers.top
        anchors.right: panel_answers.right
        onClicked: {

        }
    }

    MenuBtn {
        id: btn_answer3
        width: fat
        height: high
        text: "answer"
        anchors.margins: 3
        anchors.bottom: panel_answers.bottom
        anchors.left: panel_answers.left
        onClicked: {

        }
    }

    MenuBtn {
        id: btn_answer4
        width: fat
        height: high
        text: "answer"
        anchors.margins: 3
        anchors.bottom: panel_answers.bottom
        anchors.right: panel_answers.right
        onClicked: {

        }
    }
}

