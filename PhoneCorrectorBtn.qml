import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Button {
    id: phone_correct_btn
    property color color1: "#d4cece"
    property color color2: "#a6a6a6"
    width: 50
    height: 30



    background: Rectangle {
        id: rect_phone_correct_btn
        radius: 5
        gradient: Gradient {
            id: gradient_phone_correct_btn
            orientation: Gradient.Vertical
            GradientStop { position: 0.9; color: phone_correct_btn.pressed ? phone_correct_btn.color1 : phone_correct_btn.color2 }
            GradientStop { position: 0.6; color: phone_correct_btn.color1 }
        }
    }
    Image {
        id: img_phone_correct_btn
        source: "images/deleteBtn.svg"
        width: 25
        height: 25
        anchors.centerIn: phone_correct_btn
        anchors.margins: 5
    }
}
