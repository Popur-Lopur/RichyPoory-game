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
    property int size: 20

    MenuBtn {
        id: btn_answer1
        width: fat
        height: high
        anchors.margins: 3
        anchors.top: panel_answers.top
        anchors.left: panel_answers.left
        onClicked: {

        }



        Text {
            id: first_answer1

                text: "  A: "
                anchors.left: btn_answer1.left
                anchors.verticalCenter: btn_answer1.verticalCenter
                color: "#EE9C4B"
                font.pixelSize: size

            }

        Text {
            id: first_answer2
                text: "answer"
                font.pixelSize: size
                anchors.left: first_answer1.right
                anchors.verticalCenter: btn_answer1.verticalCenter
                color: "white"

            }
        }


    MenuBtn {
        id: btn_answer2
        width: fat
        height: high
        anchors.margins: 3
        anchors.top: panel_answers.top
        anchors.right: panel_answers.right
        onClicked: {

        }



        Text {
            id: second_answer1
                text: "  B: "
                anchors.left: btn_answer2.left
                anchors.verticalCenter: btn_answer2.verticalCenter
                color: "#EE9C4B"
                font.pixelSize: size

            }

        Text {
            id: second_answer2
                text: "answer"
                font.pixelSize: size
                anchors.left: second_answer1.right
                anchors.verticalCenter: btn_answer2.verticalCenter
                color: "white"

            }
        }


    MenuBtn {
        id: btn_answer3
        width: fat
        height: high
        anchors.margins: 3
        anchors.bottom: panel_answers.bottom
        anchors.left: panel_answers.left
        onClicked: {

        }



        Text {
            id: third_answer1
                text: "  C: "
                anchors.left: btn_answer3.left
                anchors.verticalCenter: btn_answer3.verticalCenter
                color: "#EE9C4B"
                font.pixelSize: size

            }

        Text {
            id: third_answer2
                text: "answer"
                font.pixelSize: size
                anchors.left: third_answer1.right
                anchors.verticalCenter: btn_answer3.verticalCenter
                color: "white"

            }
        }


    MenuBtn {
        id: btn_answer4
        width: fat
        height: high       
        anchors.margins: 3
        anchors.bottom: panel_answers.bottom
        anchors.right: panel_answers.right
        onClicked: {

        }



        Text {
            id: four_answer1
                text: "  D: "
                anchors.left: btn_answer4.left
                anchors.verticalCenter: btn_answer4.verticalCenter
                color: "#EE9C4B"
                font.pixelSize: size

            }

        Text {
            id: four_answer2
                text: "answer"

                font.pixelSize: size
                anchors.left: four_answer1.right
                anchors.verticalCenter: btn_answer4.verticalCenter
                color: "white"


            }
        }
    }


