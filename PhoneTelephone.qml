import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

Rectangle {
    id: telephone_rect
    width: 290
    height: 380
    radius: 70
    gradient: Gradient {
        orientation: Gradient.Vertical
        GradientStop { position: 0.9; color: "#061149" }
        GradientStop { position: 0.6; color: "#132272" }
    }

    signal visibleChange
    signal checkCall(string number)

    PhoneBtn {
        id: number1
        textNumber: "1"
        anchors.bottomMargin: 5
        anchors.bottom: number4.top
        anchors.right: number4.right
        onClicked: phone_input_number.numberphone += textNumber


    }
    PhoneBtn {
        id: number2
        textNumber: "2"
        anchors.bottomMargin: 5
        anchors.bottom: number5.top
        anchors.right: number5.right
        onClicked: phone_input_number.numberphone += textNumber


    }
    PhoneBtn {
        id: number3
        textNumber: "3"
        anchors.bottomMargin: 5
        anchors.bottom: number6.top
        anchors.right: number6.right
        onClicked: phone_input_number.numberphone += textNumber
    }
    PhoneBtn {
        id: number4
        textNumber: "4"
        anchors.bottomMargin: 5
        anchors.bottom: number7.top
        anchors.right: number7.right
        onClicked: phone_input_number.numberphone += textNumber



    }
    PhoneBtn {
        id: number5
        textNumber: "5"
        anchors.bottomMargin: 5
        anchors.bottom: number8.top
        anchors.right: number8.right
        onClicked: phone_input_number.numberphone += textNumber

    }
    PhoneBtn {
        id: number6
        textNumber: "6"
        anchors.bottomMargin: 5
        anchors.bottom: number9.top
        anchors.right: number9.right
        onClicked: phone_input_number.numberphone += textNumber
    }
    PhoneBtn {
        id: number7
        textNumber: "7"
        anchors.bottomMargin: 5
        anchors.bottom: numberFall.top
        anchors.right: numberFall.right
        onClicked: phone_input_number.numberphone += textNumber

    }
    PhoneBtn {
        id: number8
        textNumber: "8"
        anchors.bottomMargin: 5
        anchors.bottom: number0.top
        anchors.right: number0.right
        onClicked: phone_input_number.numberphone += textNumber

    }
    PhoneBtn {
        id: number9
        textNumber: "9"
        anchors.bottomMargin: 5
        anchors.leftMargin: 5
        anchors.bottom: numberCall.top
        anchors.right: numberCall.right
        onClicked: phone_input_number.numberphone += textNumber
    }
    PhoneBtn {
        id: number0
        textNumber: "0"
        anchors.margins: 5
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: phone_input_number.numberphone += textNumber
    }

    PhoneMajorBtn {
        id: numberFall
        anchors.margins: 5
        anchors.right: number0.left
        anchors.bottom: parent.bottom
        color1: "#fa0000"
        color2: "#b60c0c"
        telephonePicture: "images/phoneEnd.svg"
        onClicked: {
            visibleChange();
        }


    }

    PhoneMajorBtn {
        id: numberCall
        anchors.margins: 5
        anchors.left: number0.right
        anchors.bottom: parent.bottom
        color1: "#03dd03"
        color2: "#0cbb0f"
        telephonePicture: "images/phoneCall.svg"
        onClicked: {
            checkCall(phone_input_number.numberphone);
        }


    }

    PhoneInputNumber {
        id: phone_input_number
        anchors.bottom: number1.top
        anchors.left: number1.left
        anchors.bottomMargin: 5
        numberphone: ""

    }

    PhoneCorrectorBtn {
        id: phone_corrector_btn
        anchors.bottom: number3.top
        anchors.left: phone_input_number.right
        anchors.leftMargin: 5
        anchors.bottomMargin: 5
        onClicked: phone_input_number.numberphone = phone_input_number.numberphone.slice(0, -1)

    }
}
