import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Rectangle {

    id: panel_result_table
    width: 290
    height: 380
    radius: 70
    gradient: Gradient {
        orientation: Gradient.Vertical
        GradientStop { position: 0.9; color: "#061149" }
        GradientStop { position: 0.6; color: "#132272" }

    }

    PlayRectResult {
        id: rectangl_result_15
        anchors.top: panel_result_table.top
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "#EE9C4B"
        indexAnswer: 15
        textResult: "15.  3,000,000"
    }

    PlayRectResult {
        id: rectangl_result_14
        anchors.top: rectangl_result_15.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "white"
        indexAnswer: 14
        textResult: "14.  1,500,000"
    }

    PlayRectResult {
        id: rectangl_result_13
        anchors.top: rectangl_result_14.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "white"
        indexAnswer: 13
        textResult: "13.  800,000"
    }

    PlayRectResult {
        id: rectangl_result_12
        anchors.top: rectangl_result_13.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "white"
        indexAnswer: 12
        textResult: "12.  400,000"
    }

    PlayRectResult {
        id: rectangl_result_11
        anchors.top: rectangl_result_12.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "white"
        indexAnswer: 11
        textResult: "11.  200,000"
    }

    PlayRectResult {
        id: rectangl_result_10
        anchors.top: rectangl_result_11.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "#EE9C4B"
        indexAnswer: 10
        textResult: "10.  100,000"
    }

    PlayRectResult {
        id: rectangl_result_9
        anchors.top: rectangl_result_10.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "white"
        indexAnswer: 9
        textResult: "9.  50,000"
    }

    PlayRectResult {
        id: rectangl_result_8
        anchors.top: rectangl_result_9.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "white"
        indexAnswer: 8
        textResult: "8.  25,000"
    }

    PlayRectResult {
        id: rectangl_result_7
        anchors.top: rectangl_result_8.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "white"
        indexAnswer: 7
        textResult: "7.  15,000"
    }

    PlayRectResult {
        id: rectangl_result_6
        anchors.top: rectangl_result_7.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "white"
        indexAnswer: 6
        textResult: "6.  10,000"
    }

    PlayRectResult {
        id: rectangl_result_5
        anchors.top: rectangl_result_6.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "#EE9C4B"
        indexAnswer: 5
        textResult: "5.  5000"
    }

    PlayRectResult {
        id: rectangl_result_4
        anchors.top: rectangl_result_5.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "white"
        indexAnswer: 4
        textResult: "4.  3000"
    }

    PlayRectResult {
        id: rectangl_result_3
        anchors.top: rectangl_result_4.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "white"
        indexAnswer: 3
        textResult: "3.  2000"
    }

    PlayRectResult {
        id: rectangl_result_2
        anchors.top: rectangl_result_3.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "white"
        indexAnswer: 2
        textResult: "2.  1000"
    }

    PlayRectResult {
        id: rectangl_result_1        
        anchors.bottom: panel_result_table.bottom
        anchors.horizontalCenter: panel_result_table.horizontalCenter
        anchors.margins: 5
        textColor: "white"
        indexAnswer: 1
        textResult: "1.  500"
    }
}

