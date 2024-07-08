
import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let description: String
}

struct NavigationView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude:  33.154321, longitude: -96.835426),
        span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
    )
    
    @State private var locations: [Location] = [
        //        Location(name: "東京タワー", coordinate: CLLocationCoordinate2D(latitude: 35.6586, longitude: 139.7454), description: "東京のランドマーク"),
        Location(name: "Toyota-Stadium", coordinate: CLLocationCoordinate2D(latitude:  33.154321, longitude: -96.835426), description: "Toyota-Stadium")
    ]
    
    @State private var selectedLocation: Location?
    @State private var showingSheet = false
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { location in
            MapAnnotation(coordinate: location.coordinate) {
                Image(systemName: "building.columns.circle.fill")
                    .foregroundColor(.red)
                    .onTapGesture {
                        selectedLocation = location
                        showingSheet = true
                    }
            }
        }
        .mapControls() {
            MapCompass()
                .mapControlVisibility(.visible)
            MapPitchToggle()
                .mapControlVisibility(.visible)
            MapScaleView()
                .mapControlVisibility(.visible)
            MapUserLocationButton()
                .mapControlVisibility(.visible)
        }
        .sheet(isPresented: $showingSheet) {
            if let location = selectedLocation {
                ArenaContentView(location: location)
                    .presentationDetents([.medium])
                    .presentationDragIndicator(.visible)
            }
        }
    }
}


#Preview {
    NavigationView()
}
