import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Rectangle {
    id: number_telephone
    width: 105
    height: 30
    border.color: "black"
    radius: 5
    color: "white"
    property string numberphone

    Text {
        id: number_text
        text: numberphone
        font.pixelSize: 15
        anchors.centerIn: parent
    }

}
