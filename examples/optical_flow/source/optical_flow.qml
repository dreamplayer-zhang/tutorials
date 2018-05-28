R""(
    import Chameleon 1.0
    import QtQuick 2.3
    import QtQuick.Window 2.2
    Window {
        id: window
        visible: true
        width: Width
        height: Height
        Timer {
            interval: 20
            running: true
            repeat: true
            onTriggered: {
                dvs_display.trigger_draw();
                flow_display.trigger_draw();
            }
        }
        BackgroundCleaner {
            width: window.width
            height: window.height
        }
        DvsDisplay {
            objectName: "dvs_display"
            id: dvs_display
            width: window.width
            height: window.height
            canvas_size: Qt.size(Width, Height)
        }
        FlowDisplay {
            objectName: "flow_display"
            id: flow_display
            width: window.width
            height: window.height
            canvas_size: Qt.size(Width, Height)
            speed_to_length: 10000
        }
    }
)""
