import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Button {
    id: menu_btn

    background: Rectangle {
        border.color: "#fff5ee"
        border.width: 2
        radius: 10
        gradient: Gradient {
            orientation: Gradient.Vertical
            GradientStop { position: 0.9; color: menu_btn.pressed ? "#132272" : "#061149" }
            GradientStop { position: 0.6; color: "#132272" }
        }
    }
    contentItem: Text {
        font.pixelSize: 20
        text: menu_btn.text
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter

        color: menu_btn.down ? "#EE9C4B" : "#fff5ee"
    }
}
