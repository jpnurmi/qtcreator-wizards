import QtQuick %{QtQuickVersion}
import QtQuick.Window %{QtQuickWindowVersion}
import QtQuick.Layouts %{QtQuickLayoutsVersion}

Window {
    id: window
    width: 360
    height: 360
    visible: true

    Text {
        id: label
        text: "Hello"
        anchors.centerIn: parent
    }
}
