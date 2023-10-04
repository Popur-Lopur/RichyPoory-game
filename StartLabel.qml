import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Label {
    id: label_start
    width: 500
    height: 50
    background: Rectangle {
        anchors.fill: parent
        border.color: "black"
        color: "transparent"

        Text {
            id: text_label
            anchors.centerIn: parent
            text: "$$$ RICH-POOR $$$"
            font.pixelSize: 40
            color: "green"
        }
    }
}

