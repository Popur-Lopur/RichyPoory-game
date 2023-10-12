import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Rectangle {

    id: panel_help_panel
    width: 290
    height: 60
    color: "transparent"
    border.color: "black"

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


    }

    HelpBtn {
        id: call_help_btn
       anchors.top: panel_help_panel.top
        anchors.left: half_help_btn.right
        width: fat
        height: high
        anchors.margins: 10
        Image {
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
        Image {
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
        Image {
            source: "images/chance.svg"
            width: 25
            height: 25
            anchors.centerIn: chance_help_btn
            anchors.margins: 5
        }

    }


}
