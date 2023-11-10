pragma Singleton

import QtQuick 2.15

Item {
    property int fontsize: 12   //定义字体样式大小
    property string fontname: "Aral"    //定义字体类型
    property int buttonWidth: 100
    property int buttonHeight: 40

    property color themeColor: "black"   //主色调,当前为红色

    property color backgroundColor: Qt.rgba(themeColor.r, themeColor.g, themeColor.b, 0.1)  //没有任何动作的普通颜色
    property color hoveredColor: Qt.rgba(themeColor.r, themeColor.g, themeColor.b, 0.2)     //鼠标飘过的颜色
    property color pressedColor: Qt.rgba(themeColor.r, themeColor.g, themeColor.b, 0.4)     //鼠标按住的颜色
    property color borderColor:Qt.darker(themeColor,1.2)      //边框颜色
    property color borderColor_focus:Qt.darker(themeColor,1.5)      //边框选中颜色
    property double radius: 3       //按钮圆滑

    property color textColor: "black"


    property int themeIndex: -1     //页面下标
    onThemeIndexChanged: {
        var the = themes.get(themeIndex)
        themeColor = the.themeColor
        fontname = the.fontname
        textColor = the.textColor
    }

    property ListModel themes:ListModel{
        ListElement{
            name:"red"
            themeColor:"#cc0000"
            fontname: "Arial"
            textColor:"black"
        }
        ListElement{
            name:"blue"
            themeColor:"#4a86e8"
            fontname: "Arial Black"
        }
        ListElement{
            name:"yellow"
            themeColor:"#ecec00"
            fontname: "DejaVu Sans Mono"
        }
        ListElement{
            name:"black"
            themeColor:"#3e3e3e"
            fontname: "Misc Fixed"
            textColor: "white"
        }

    }

}
