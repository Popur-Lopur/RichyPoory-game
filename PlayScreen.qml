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

    PlayAnswerPanel {
        id: play_panel_answers
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
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
        anchors.horizontalCenter: play_result_table.horizontalCenter
        anchors.margins: 5
    }

    PlayResultTable {
        id: play_result_table
        anchors.top: play_help_panel.bottom
        anchors.horizontalCenter: play_quest_label.horizontalCenter
        anchors.margins: 5

    }

    PhonePanel {
        id: pnone_panel
        anchors.top: play_help_panel.bottom
        anchors.horizontalCenter: play_quest_label.horizontalCenter
        anchors.margins: 5
        visible: false

        Connections {
            target: play_help_panel
            onVisibleChange: pnone_panel.visible = true
        }

//        Connections {
//            target: pnone_panel
//            onVisibleChange: pnone_panel.visible = false
//        }
    }
}

