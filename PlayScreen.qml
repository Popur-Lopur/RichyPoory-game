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
            GradientStop { position: 0.0; color: "#2B4648" }
            GradientStop { position: 1.0; color: "#2C5D61" }
        }
    }

    PlayAnswerPanel {
        id: play_panel_answers
        anchors.bottom: parent.bottom
        anchors.left: parent.left
    }

    PlayResultTable {
        id: play_result_table
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 5

    }

    PlayHelpPanel {
        id: play_help_panel
        anchors.top: parent.top
        anchors.right: parent.right

    }


}

