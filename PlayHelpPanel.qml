import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

import QuestGame 1.0


Rectangle {

    id: panel_help_panel
    width: 290
    height: 60
    color: "transparent"
    signal visibleChange

    property int high: 40
    property int fat: 60

    HelpBtn {
        id: half_help_btn
        anchors.top: panel_help_panel.top
        anchors.left: panel_help_panel.left
        width: fat
        height: high
        text: "50/50"

        anchors.margins: 10
        onClicked: {
            questgame.viewTarget();
            enabled = false;
            half_help_btn.text = ""
            img_half_btn.source = "images/krestik.svg"
        }
        Image {
            id: img_half_btn
            width: 40
            height: 40
            anchors.centerIn: half_help_btn
            anchors.margins: 5
        }

    }

    HelpBtn {
        id: call_help_btn
        anchors.top: panel_help_panel.top
        anchors.left: half_help_btn.right
        width: fat
        height: high
        anchors.margins: 10
        onClicked: {
            numbergenerator.genName();
            visibleChange();
            enabled = false;
            img_call_btn.source = "images/krestik.svg"
            img_call_btn.width = 40
            img_call_btn.height = 40

        }
        Image {
            id: img_call_btn
            source: "images/phone.svg"
            width: 25
            height: 25
            anchors.centerIn: call_help_btn
            anchors.margins: 5
        }



    }

    HelpBtn {
        id: reset_help_btn
        anchors.top: panel_help_panel.top
        anchors.left: call_help_btn.right
        width: fat
        height: high
        anchors.margins: 10
        onClicked: {
            enabled = false;
            img_reset_btn.source = "images/krestik.svg"
            img_reset_btn.width = 40
            img_reset_btn.height = 40

        }
        Image {
            id: img_reset_btn
            source: "images/reset.svg"
            width: 25
            height: 25
            anchors.centerIn: reset_help_btn
            anchors.margins: 5
        }


    }

    HelpBtn {
        id: chance_help_btn
        anchors.top: panel_help_panel.top
        anchors.left: reset_help_btn.right
        width: fat
        height: high
        anchors.margins: 10
        onClicked: {
            enabled = false;
            img_chance_btn.source = "images/krestik.svg"
            img_chance_btn.width = 40
            img_chance_btn.height = 40

        }
        Image {
            id: img_chance_btn
            source: "images/chance.svg"
            width: 25
            height: 25
            anchors.centerIn: chance_help_btn
            anchors.margins: 5
        }

    }
}
