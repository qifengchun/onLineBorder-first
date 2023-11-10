pragma Singleton

import QtQuick 2.15
import "."
Item {
    id:fonts
    //加载第一种字体资源文件
    readonly property FontLoader fontAwesomeSolid: FontLoader{
        source:"qrc:/fonts/Font Awesome 6 Free-Solid-900.otf"
    }
    //重命名以上资源文件描述
    readonly property string solid: fontAwesomeSolid.name

    //加载第二种字体资源
    readonly property FontLoader fontAwesomeBrands: FontLoader{
        source:"qrc:/fonts/Font Awesome 6 Brands-Regular-400.otf"
    }
    readonly property string brands: fontAwesomeBrands.name
    readonly property string fa_search: "\uf075"    //信息图标
    readonly property string fa_clearButton: "\uf55a"    //删除图标
    readonly property string fa_eyeOpen: "\uf06e"    //睁眼图标
    readonly property string fa_eyeClose: "\uf070"    //闭眼图标
    readonly property string fa_user: "\uf007"    //用户图标
    readonly property string fa_key: "\uf00c"    //密码图标
    //加载第三种字体资源
    readonly property FontLoader fontAwesomeRegular: FontLoader{
        source:"qrc:/fonts/Font Awesome 6 Free-Regular-400.otf"
    }
    readonly property string regular: fontAwesomeRegular.name



}
