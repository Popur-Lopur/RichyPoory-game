import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

import QuestGame 1.0


Window {
    id: mainWindow
    visible: true
    width: 731
    height: 699
    title: qsTr("Richy-Poory")
    color: "#DCB089"
    Image {
            id: backgroundImage
            source: "images/fon.png"  // замените этот путь на путь к вашему изображению
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }


    StartPanel {
        id: start_panel
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
    }

    StartGifSkull {
       id: start_gif_skull_right
       anchors.right: parent.right
       anchors.bottom: parent.bottom
       anchors.margins: 15
       gifPath: "images/skull.gif"
   }

    StartGifSkull {
       id: start_gif_skull_left
       anchors.left: parent.left
       anchors.bottom: parent.bottom
       anchors.margins: 15
       gifPath: "images/skull.gif"
   }

    StackView {
            id: stackView
            initialItem: Item { }
        }
}



