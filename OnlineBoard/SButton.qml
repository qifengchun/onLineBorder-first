import QtQuick 2.15
import QtQuick.Controls

Button {
    id:control
    text: qsTr("Button")
    contentItem: Text{
        id:contentText
        font.pixelSize: STheme.fontsize
        text: control.text
        opacity: enabled ? 1.0 :0.0 //设置为透明 0为透明，1为完全不透明
        //设置居中对齐
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: false    //是否为粗体
        font.family: STheme.fontname
        Behavior on color {     //按钮颜色切换
            ColorAnimation {
                //                from: "white"
                //                to: "black"
                duration: 100
            }
        }
    }
    background: Rectangle {
        implicitWidth: STheme.buttonWidth
        implicitHeight: STheme.buttonHeight
        opacity: enabled ? 1 : 0.3
        //设置按钮不同动作的颜色变化
        color: control.hovered ? (control.pressed ? STheme.pressedColor :STheme.hoveredColor):STheme.backgroundColor
        border.color: STheme.borderColor
        border.width: 1
        radius: STheme.radius

        Behavior on color {     //按钮颜色切换
            ColorAnimation {
                //                from: "white"
                //                to: "black"
                duration: 100
            }
        }
    }

}
