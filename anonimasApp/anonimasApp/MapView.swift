import SwiftUI
import MapKit

struct MapView: View {
    // 東京駅の座標
      @State private var position: MapCameraPosition = .region(.init(
        center: .toyota_stadium,
          span: .init(latitudeDelta: 0.002, longitudeDelta: 0.002)
      ))
    @State private var selectedMarker: CLLocationCoordinate2D?

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
//            MapUserLocationButton()
        }
//        .onChange(of: selectedMarker) { oldValue, newValue in
//            if newValue == .toyota_stadium {
//                print("Toyota Stadium marker tapped!")
//                // ここで他のアクションを実行できます
//                // 例: シートを表示したり、別の状態を変更したりなど
//            }
//        }
    }
}

#Preview {
    MapView()
}

extension CLLocationCoordinate2D {
    static let toyota_stadium = CLLocationCoordinate2D(latitude:  33.154321, longitude: -96.835426)
}

