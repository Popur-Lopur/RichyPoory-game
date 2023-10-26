import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Page {

    visible: true
    width: 731
    height: 699
    background: Rectangle {
        anchors.fill: parent
    }

    StartGifSkull {
        id: gameover_gif
        anchors.fill: parent
        gifPath: "images/gameover.gif"

        MenuBtn {
            id: game_over_newgame
            anchors.bottom: parent.bottom
            anchors.right: parent.horizontalCenter
            text: "Играть"
            width: 140
            height: 50
            onClicked: {

                stackView.push("PlayScreen.qml");
                questgame.togetherMod();
                questgame.newGameNumberRect();
                questgame.newGameIndex();
                questgame.newGameCheckTarget();

            }
        }

        MenuBtn {
            id: game_over_exit
            anchors.bottom: parent.bottom
            anchors.left: parent.horizontalCenter
            text: "Выход"
            width: 140
            height: 50
            onClicked: {
                 Qt.quit();
            }
        }
    }
}
