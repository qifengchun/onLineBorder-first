import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

ApplicationWindow {
    id:control
    visible: true
    width: 640
    height: 400
    title: qsTr("登陆")
    SPopup{
        id:tipPopup
    }

    ColumnLayout{
        anchors.centerIn: parent
        STextField{
            id: userInput
            Layout.preferredHeight: 50
            Layout.preferredWidth: 300
            icon: SFonts.fa_user
            showClearButton: true
        }
        STextField{
            id:passwordInput
            Layout.preferredHeight: 50
            Layout.preferredWidth: 300
            icon: SFonts.fa_key
            showClearButton: true
            passwordMode: true
            placeholderText: qsTr("Enter Password")
        }
        Row{
            SButton{
                id:loginButton
                //            anchors.centerIn: passwordInput.AlignVCenter
                Layout.preferredHeight: 30
                Layout.preferredWidth: 150
                //                enabled: (userInput.text && passwordInput.text) ? true:false
                text: qsTr("登陆")
                onClicked: {
                    if(userInput.text && passwordInput.text){
                        var lRet = $Login.signIn(userInput.text,passwordInput.text);
                        //                        console.log(lRet)
                        //                        if(lRet === 0) tipPopup.show(qsTr("Login Success"),"LightGreen",2000)
                        //                        else if(lRet === -1) tipPopup.show(qsTr("User Error"),"Red",5000)
                        //                        else if(lRet === -1) tipPopup.show(qsTr("Password Error"),"Red",5000)

                    }
                }
            }
            SButton{
                id:cancelButton
                //            anchors.centerIn: passwordInput.AlignVCenter
                Layout.preferredHeight: 30
                Layout.preferredWidth: 150
                text: qsTr("取消")
                onClicked: {
                    control.close()
                }
            }
        }
        Connections{
            target: $Login
            function onLoginInfo(lRet,msg){
                if(lRet === 0) tipPopup.show(msg,"LightGreen",2000)
                else if(lRet !== 0) tipPopup.show(msg,"Red",5000)

            }
        }

    }
    background: Image {
        id: name
        source: "qrc:/image/background.png"
    }


}
