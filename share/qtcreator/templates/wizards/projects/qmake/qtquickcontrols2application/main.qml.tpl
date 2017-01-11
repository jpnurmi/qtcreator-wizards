import QtQuick %{QtQuickVersion}
import QtQuick.Window %{QtQuickWindowVersion}
import QtQuick.Layouts %{QtQuickLayoutsVersion}
import QtQuick.Controls %{QtQuickControls2Version}

ApplicationWindow {
    id: window
    width: 360
    height: 360
    visible: true
@if %{HasHeader}

    header: ToolBar { }
@endif
@if %{HasFooter}

    footer: ToolBar { }
@endif
@if %{HasDrawer}

    Drawer {
        id: drawer
        width: window.width / 2
        height: window.height
    }
@endif
@if %{HasButton}

    Button {
        id: button
        text: "Button"
        anchors.centerIn: parent
    }
@endif
@if %{HasStackView}

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Page { }
    }
@endif
}
