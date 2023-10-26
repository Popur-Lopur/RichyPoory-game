import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtCharts 2.3
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.12

import NumberGenerator 1.0

Rectangle {
    id: phone_window
    width: 600
    height: 380
    color: "transparent"


       PhoneIcon {
           id: first_icon
           file: "images/unknown.png"           
           phone: numbergenerator.genNumber()
           anchors.margins: 10
           anchors.top: parent.top
           anchors.left: parent.left

       }

       PhoneIcon {
           id: second_icon
           file: "images/unknown.png"
           phone: numbergenerator.genNumber()
           anchors.margins: 10
           anchors.top: parent.top
           anchors.right: parent.right

       }

       PhoneIcon {
           id: third_icon
           file: "images/unknown.png"           
           phone: numbergenerator.genNumber()
           anchors.margins: 10
           anchors.top: first_icon.bottom
           anchors.left: parent.left

       }

       PhoneIcon {
           id: four_icon
           file: "images/unknown.png"           
           phone: numbergenerator.genNumber()
           anchors.margins: 10
           anchors.top: second_icon.bottom
           anchors.right: parent.right

       }

       PhoneTelephone {
           id: phone_telephone
           anchors.bottom: parent.bottom
           anchors.horizontalCenter: parent.horizontalCenter


       }

       Connections {
           target: phone_telephone
           onVisibleChange: pnone_panel.visible = false
           onCheckCall: {
               if (first_icon.phone === number) {
                   if (first_icon.name === "Пушистик") {
                       console.log("п")
                   }
                   else if (first_icon.name === "Гений") {
                       console.log("г")
                   }
                   else if (first_icon.name === "Толик Алкоголик") {
                       console.log("т")
                   }
                   else if (first_icon.name === "Саня") {
                       console.log("с")
                   }
                   else {
                       console.log("первый номер не набран")
                   }


               }
               else if (second_icon.phone === number) {
                   if (second_icon.name === "Пушистик") {
                       console.log("п")
                   }
                   else if (second_icon.name === "Гений") {
                       console.log("г")
                   }
                   else if (second_icon.name === "Толик Алкоголик") {
                       console.log("т")
                   }
                   else if (second_icon.name === "Саня") {
                       console.log("с")
                   }
                   else {
                       console.log("второй номер не набран")
                   }
               }
               else if (third_icon.phone === number) {
                   if (third_icon.name === "Пушистик") {
                       console.log("п")
                   }
                   else if (third_icon.name === "Гений") {
                       console.log("г")
                   }
                   else if (third_icon.name === "Толик Алкоголик") {
                       console.log("т")
                   }
                   else if (third_icon.name === "Саня") {
                       console.log("с")
                   }
                   else {
                       console.log("третий номер не набран")
                   }
               }
               else if (four_icon.phone === number) {
                   if (four_icon.name === "Пушистик") {
                       console.log("п")
                   }
                   else if (four_icon.name === "Гений") {
                       console.log("г")
                   }
                   else if (four_icon.name === "Толик Алкоголик") {
                       console.log("т")
                   }
                   else if (four_icon.name === "Саня") {
                       console.log("с")
                   }
                   else {
                       console.log("четвертый номер не набран")
                   }
               }
               else {
                   console.log("нет такого номера")
               }
           }
       }

       Connections {
           target: numbergenerator
           onNameNumber1Changed: first_icon.name = numbergenerator.nameNumber1
           onNameNumber2Changed: second_icon.name = numbergenerator.nameNumber2
           onNameNumber3Changed: third_icon.name = numbergenerator.nameNumber3
           onNameNumber4Changed: four_icon.name = numbergenerator.nameNumber4
       }
}
