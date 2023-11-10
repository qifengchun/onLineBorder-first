import QtQuick 2.15
import QtQuick.Controls
Popup {
    anchors.centerIn: parent

    background: Rectangle{
        id:bgrect
        radius: STheme.radius
        opacity: 0.7
    }
    SText{
        id:contentText
        anchors.centerIn: parent
    }

    Timer{
        id:timer
        onTriggered: close()
    }

    function show(msg,bgcolor,timeout){
        contentText.text = msg
        bgrect.color = bgcolor
        timer.interval = timeout
        timer.start()
        open()
    }

}
