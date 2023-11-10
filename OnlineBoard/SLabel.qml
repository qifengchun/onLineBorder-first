import QtQuick 2.15
import QtQuick.Controls
import "."

Label {
    text: ""
    font.pixelSize: STheme.fontsize
    font.family: STheme.fontname
    color: STheme.textColor
    property bool showborder: false     //是否展示边宽
    property bool showbackground: false //是否展示背景
    background: Rectangle{
        radius: STheme.radius
        implicitHeight: STheme.buttonHeight
        implicitWidth: STheme.buttonWidth
        border.color: STheme.borderColor
        color: showbackground ? STheme.backgroundColor : "transparent"
        border.width: showborder? 1:0   //是否显示边宽
    }
}
