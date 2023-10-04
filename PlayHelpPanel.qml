import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12


Rectangle {

    id: panel_help
    width: 290
    height: 50
    color: "transparent"
    radius: 5
    border.color: "black"


    HelpBtn {
        id: half_help_btn
        anchors.centerIn: parent
        anchors.margins: 10

    }

    HelpBtn {
        id: call_help_btn
        anchors.top: half_help_btn.top
        anchors.right: half_help_btn.left
        anchors.margins: 10

    }

    HelpBtn {
        id: reset_help_btn
        anchors.top: half_help_btn.top
        anchors.left: half_help_btn.right
        anchors.margins: 10

    }
}

