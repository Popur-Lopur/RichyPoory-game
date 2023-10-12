import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12


Rectangle {
    id: rect_quest
    width: 600
    height: 110
    border.color: "#fff5ee"
    border.width: 3
    radius: 10
    gradient: Gradient {
        orientation: Gradient.Vertical
        GradientStop { position: 0.9; color: "#061149" }
        GradientStop { position: 0.6; color: "#132272" }

    }

    Text {
        id: text_question
        anchors.centerIn: parent
        text: "This is question for answer?"
        font.pixelSize: 20
        color: "#fff5ee"
    }

}
