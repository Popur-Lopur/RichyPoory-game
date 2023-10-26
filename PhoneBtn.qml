import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Button {
    id: phone_btn
    property color color1: "#f4f5f4"
    property color color2: "#c1c7c1"
    property string textNumber
    width: 50
    height: 50



    background: Rectangle {
        id: rect_phone_btn
        radius: 10
        gradient: Gradient {
            id: gradient_phone_btn
            orientation: Gradient.Vertical
            GradientStop { position: 0.9; color: phone_btn.pressed ? phone_btn.color1 : phone_btn.color2 }
            GradientStop { position: 0.6; color: phone_btn.color1 }
        }
    }
    contentItem: Text {
        font.pixelSize: 20
        text: textNumber
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter

        color: phone_btn.down ? "green" : "black"
    }
}
