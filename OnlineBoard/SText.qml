import QtQuick 2.15
import QtQuick.Controls

Text {
    text: ""
    font.pixelSize: styles[style].fontSize
    font.family: styles[style].fontname
    color: STheme.textColor
    //字符串在文本框中居中
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter

    property string style: "body"
    property var styles: {
        "h1":{

            "fontSize": 20,
            "fontname": "Arial"
        },

        "h2":{

            "fontSize": 16,
            "fontname": "Arial"
        },

        "body":{

            "fontSize": 12,
            "fontname": "Arial"
        },

        "icon":{

            "fontSize": 20,
            "fontname": "Arial"
        }

    }
}
