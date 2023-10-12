import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Rectangle {

    id: panel_result_table
    width: 290
    height: 300
    color: "transparent"
    radius: 5
    border.color: "black"


    property int high: 20
    property int fat: 290


    Rectangle {
        id: rectangl_result_15
        width: fat
        height: high
        color: "transparent"
        anchors.top: panel_result_table.top
        anchors.right: panel_result_table.right

        Text {
            text: "15.  3,000,000"
            color: "#EE9C4B"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }

    Rectangle {
        id: rectangl_result_14
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_15.bottom
        anchors.right: panel_result_table.right
        Text {
            text: "14.  1,500,000"
            color: "white"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft
        }
    }

    Rectangle {
        id: rectangl_result_13
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_14.bottom
        anchors.right: panel_result_table.right
        Text {
            text: "13.  800,000"
            color: "white"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }

    Rectangle {
        id: rectangl_result_12
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_13.bottom
        anchors.right: panel_result_table.right
        Text {
            text: "12.  400,000"
            color: "white"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }

    Rectangle {
        id: rectangl_result_11
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_12.bottom
        anchors.right: panel_result_table.right
        Text {
            text: "11.  200,000"
            color: "white"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }

    Rectangle {
        id: rectangl_result_10
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_11.bottom
        anchors.right: panel_result_table.right
        Text {
            text: "10.  100,000"
            color: "#EE9C4B"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }

    Rectangle {
        id: rectangl_result_9
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_10.bottom
        anchors.right: panel_result_table.right
        Text {
            text: "9.  50,000"
            color: "white"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }

    Rectangle {
        id: rectangl_result_8
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_9.bottom
        anchors.right: panel_result_table.right
        Text {
            id: rectangl_text
            text: "8.  25,000"
            color: "white"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }

    Rectangle {
        id: rectangl_result_7
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_8.bottom
        anchors.right: panel_result_table.right
        Text {
            text: "7.  15,000"
            color: "white"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }

    Rectangle {
        id: rectangl_result_6
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_7.bottom
        anchors.right: panel_result_table.right
        Text {
            text: "6.  10,000"
            color: "white"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }

    Rectangle {
        id: rectangl_result_5
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_6.bottom
        anchors.right: panel_result_table.right
        Text {
            text: "5.  5,000"
            color: "#EE9C4B"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }

    Rectangle {
        id: rectangl_result_4
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_5.bottom
        anchors.right: panel_result_table.right
        Text {
            text: "4.  3,000"
            color: "white"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }

    Rectangle {
        id: rectangl_result_3
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_4.bottom
        anchors.right: panel_result_table.right
        Text {
            text: "3.  2,000"
            color: "white"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }

    Rectangle {
        id: rectangl_result_2
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_3.bottom
        anchors.right: panel_result_table.right
        Text {
            text: "2.  1,000"
            color: "white"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }

    Rectangle {
        id: rectangl_result_1
        width: fat
        height: high
        color: "transparent"
        anchors.top: rectangl_result_2.bottom
        anchors.right: panel_result_table.right
        Text {
            text: "1.  500"
            color: "white"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft

        }
    }
}

