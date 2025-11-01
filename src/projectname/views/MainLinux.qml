import QtQuick
import PrismCpp 1.0
import PrismUI 1.0
import QtQuick.Window


BorderlessWindow_linux {
    color: "transparent"
    title : "mainwindow"

    contentUrl: CppUtility.transUrl("qrc:/projectname/views/exampleContent.qml")


}
