import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Button {
    id: phone_major_btn
    property color color1
    property color color2
    property string telephonePicture
    width: 50
    height: 50
    background: Rectangle {
        id: rect_phone_major_btn
        radius: 10
        gradient: Gradient {
            id: gradient_phone_major_btn
            orientation: Gradient.Vertical
            GradientStop { position: 0.9; color: phone_major_btn.pressed ? phone_major_btn.color1 : phone_major_btn.color2 }
            GradientStop { position: 0.6; color: phone_major_btn.color1 }
        }
    }
    Image {
        id: img_phone_major_btn
        source: telephonePicture
        width: 25
        height: 25
        anchors.centerIn: phone_major_btn
        anchors.margins: 5
    }

}

