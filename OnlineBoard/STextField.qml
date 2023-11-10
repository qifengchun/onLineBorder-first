import QtQuick 2.15
import QtQuick.Controls
import "."

TextField{
    id:control
    property string icon: ""
    property bool showClearButton: false
    property bool passwordMode: false
    property bool passwordVisible: false
    leftPadding: icon ? lefticon.width : 2     //左边预留的间隔
    placeholderText: qsTr("Enter Name")        //预设空间字
    echoMode: (passwordMode && !passwordVisible) ? TextInput.Password : TextInput.Normal
    font.family: STheme.fontname
    SLabel{     //写图标
        id:lefticon
        text: icon
        width: icon ? parent.height:0
        height: parent.height
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.family: SFonts.solid
    }
    RoundButton{
        id:clearButton
        width: parent.height*0.8
        height: width
        font.family: SFonts.solid
        focusPolicy: Qt.NoFocus
        visible: showClearButton && parent.activeFocus && parent.text
        anchors.right: parent.right
        anchors.rightMargin: 2
        anchors.verticalCenter: parent.verticalCenter
        flat: true
        text:showClearButton ? SFonts.fa_clearButton :""
        onClicked: if(showClearButton) clear()
        background: Rectangle{
            color: "transparent"
        }
    }
    RoundButton{
        id:pwButton
        width: parent.height*0.8
        height: width
        font.family: SFonts.solid
        focusPolicy: Qt.NoFocus
        visible: passwordMode && parent.activeFocus && parent.text
        anchors.right: clearButton.left
        anchors.rightMargin: 1
        anchors.verticalCenter: parent.verticalCenter
        flat: true
        text:(passwordMode && passwordVisible) ? SFonts.fa_eyeClose :
                                                 (passwordMode && !passwordVisible) ? SFonts.fa_eyeOpen : ""
        onPressed: {
            passwordVisible = true
        }
        onReleased:{
            passwordVisible = false
        }

        background: Rectangle{
            color: "transparent"
        }
    }

    background: Rectangle{
        radius: STheme.radius
        implicitHeight: parent.height
        implicitWidth: parent.width
        border.color: control.focus ? STheme.borderColor_focus: STheme.borderColor
        color: control.focus ? STheme.hoveredColor : STheme.backgroundColor
        border.width: 1
    }
    Rectangle{
        width: 1
        visible: icon
        height: parent.height-2
        x: lefticon.x + lefticon.width-2
        color: STheme.borderColor

    }

}
