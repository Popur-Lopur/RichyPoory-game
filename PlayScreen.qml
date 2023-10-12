import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Page {
    visible: true
    width: 1000
    height: 600
    background: Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            orientation: Gradient.Vertical
            GradientStop { position: 0.0; color: "#132272" }
            GradientStop { position: 1.0; color: "#4B5DBE" }
        }
    }

    PlayAnswerPanel {
        id: play_panel_answers
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.margins: 5
    }

    PlayQuestLabel {
        id: play_quest_label
        anchors.bottom:play_panel_answers.top
        anchors.horizontalCenter: play_panel_answers.horizontalCenter
        anchors.margins: 5

    }

    PlayHelpPanel {
        id: play_help_panel
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.margins: 5
    }

    PlayResultTable {
        id: play_result_table
        anchors.top: play_help_panel.bottom
        anchors.right: parent.right
        anchors.margins: 5

    }

    PlayMoneyGif {
        id: play_money_gif
        anchors.top: play_result_table.bottom
        anchors.right: parent.right
    }





}

