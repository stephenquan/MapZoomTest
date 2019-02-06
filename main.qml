import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2
import QtPositioning 5.8
import QtLocation 5.9

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Map Zoom Test")

    ColumnLayout {
        anchors.fill: parent

        Map {
            id: map
            Layout.fillWidth: true
            Layout.fillHeight: true
            plugin: Plugin { preferred: [ "esri" ] }
            center: QtPositioning.coordinate(34.0560, -117.1960) // ESRI Redlands
            zoomLevel: 21
            maximumZoomLevel: 21
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                text: qsTr("Zoom: %1").arg(map.zoomLevel.toFixed(2))
            }

            Label {
                text: qsTr("Max: %1").arg(map.maximumZoomLevel)
            }
        }
    }
}
