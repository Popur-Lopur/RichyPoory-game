import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

import QuestGame 1.0

Window {
    id: mainWindow
    visible: true
    width: 1000
    height: 600
    title: qsTr("Rich-Poor")
    color: "#DCB089"




    StartLabel {
        id: start_label
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter

    }



    StartPanel {
        id: start_panel
        anchors.horizontalCenter: start_label.horizontalCenter
        anchors.top: start_label.bottom
    }

    StackView {
            id: stackView
            initialItem: Item { }
        }

}



