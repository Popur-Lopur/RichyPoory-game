import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Button {
    id: help_btn

    background: Rectangle {
        width: 50
        height: 30



        gradient: Gradient {
            orientation: Gradient.Vertical
            GradientStop { position: 0.9; color: help_btn.pressed ? "#434343" : "#000000" }
            GradientStop { position: 0.6; color: "#434343" }
        }
    }
    contentItem: Text {
        font.pixelSize: 20
        text: help_btn.text
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter

        color: help_btn.down ? "#7fff00" : "#fff5ee"
    }
}
