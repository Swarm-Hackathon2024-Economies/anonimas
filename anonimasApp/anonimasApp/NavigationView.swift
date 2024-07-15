import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let description: String
}

struct NavigationView: View {
    @State private var region = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 33.154321, longitude: -96.835426),
        span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
    ))
    
    @State private var locations: [Location] = [
        Location(name: "Toyota-Stadium", coordinate: CLLocationCoordinate2D(latitude: 33.154321, longitude: -96.835426), description: "Toyota-Stadium")
    ]
    
    @State private var selectedLocation: Location?
    @State private var showingSheet = false
    
    var body: some View {
        Map(position: $region) {
            ForEach(locations) { location in
                Marker(location.name, coordinate: location.coordinate)
                    .tint(.orange)
            }
        }
        .mapControls {
            MapCompass()
            MapPitchToggle()
            MapScaleView()
            MapUserLocationButton()
        }
        .onTapGesture { _ in
            if let location = locations.first {
                selectedLocation = location
                showingSheet = true
            }
        }
        .sheet(isPresented: $showingSheet) {
            SheetContent(location: selectedLocation, onDismiss: rejectSheetPopUp)
        }
    }
    
    func rejectSheetPopUp() {
        self.showingSheet = false
    }
}

struct SheetContent: View {
    let location: Location?
    let onDismiss: () -> Void
    
    @State private var locations: [Location] = [
        Location(name: "Toyota-Stadium", coordinate: CLLocationCoordinate2D(latitude: 33.154321, longitude: -96.835426), description: "Toyota-Stadium")
    ]
    
    var body: some View {
        if let location = locations.first {
            ArenaContentView(location: location, cornerRadius: CGFloat(1.0))
                .presentationDetents([.medium])
                .presentationDragIndicator(.visible)
        } else {
            Text("No location selected")
                .onAppear(perform: onDismiss)
        }
    }
}

#Preview {
    NavigationView()
}
