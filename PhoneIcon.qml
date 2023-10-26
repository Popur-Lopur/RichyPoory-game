import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Rectangle {
    id: rect_person
    width: 100
    height: 135
    color: "transparent"
    property string file
    property string phone
    property string name


    Image {
        id: img_person
        width: 100
        height: 100
        anchors.top: rect_person.top
        source: file
    }

    Text {
        id: person_name
        text: name
        color: "white"
        anchors.top: img_person.bottom
        font.pixelSize: 15
        anchors.topMargin: 2
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: person_phone
        text: phone
        color: "white"
        anchors.top: person_name.bottom
        font.pixelSize: 15
        anchors.topMargin: 2
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
