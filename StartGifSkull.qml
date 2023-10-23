import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12


Rectangle {

    id: gifs
    property string gifPath

    width: 100
    height: 100
    color: "transparent"

    AnimatedImage {
        source: gifPath
        width: parent.width
        height: parent.height

    }
}

