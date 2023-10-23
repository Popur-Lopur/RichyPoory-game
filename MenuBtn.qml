import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12



Button {
    id: menu_btn
    property color color1: "#132272"
    property color color2: "#061149"


    background: Rectangle {
        id: rect_btn
        border.color: "#fff5ee"
        border.width: 2
        radius: 10
        gradient: Gradient {
            id: gradient_btn
            orientation: Gradient.Vertical
            GradientStop { position: 0.9; color: menu_btn.pressed ? menu_btn.color1 : menu_btn.color2 }
            GradientStop { position: 0.6; color: menu_btn.color1 }
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
