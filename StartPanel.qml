import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Item {
    id: pn1
    width: 150
    height: 500

    property int high: 100

    Rectangle {
        id: panel_start
        color: "transparent"
        radius: 5
        anchors.fill: parent
        border.color: "black"

        ColumnLayout {
            id: colText
            spacing: 4
            anchors.fill: parent



            MenuBtn {
                id: btn_newgame
                Layout.preferredWidth: pn1.width
                Layout.preferredHeight: high
                text: "New Game"

                onClicked: {
                    stackView.push("PlayScreen.qml");

                }
            }


            MenuBtn {
                id: btn_rules
                Layout.preferredWidth: pn1.width
                Layout.preferredHeight: high
                text: "Rules"
                onClicked: {

                }
            }

            MenuBtn {
                id: btn_exit
                Layout.preferredWidth: pn1.width
                Layout.preferredHeight: high
                text: "Exit"
                onClicked: {

                }
            }
        }
    }
}


