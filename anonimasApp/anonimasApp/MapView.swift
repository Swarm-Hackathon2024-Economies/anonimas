import SwiftUI
import MapKit

struct MapView: View {
      @State private var position: MapCameraPosition = .region(.init(
        center: .toyota_stadium,
          span: .init(latitudeDelta: 0.002, longitudeDelta: 0.002)
      ))

    var body: some View {
        Map(position: $position){
            Marker("Toyota-Stadium",
                   systemImage: "building.columns",coordinate: .toyota_stadium)
        }.mapControls() {
            MapCompass()
                .mapControlVisibility(.visible)
            MapPitchToggle()
                .mapControlVisibility(.visible)
            MapScaleView()
                .mapControlVisibility(.visible)
            MapUserLocationButton()
                .mapControlVisibility(.visible)
        }
    }
}

#Preview {
    MapView()
}

extension CLLocationCoordinate2D {
    static let toyota_stadium = CLLocationCoordinate2D(latitude:  33.154321, longitude: -96.835426)
}

