import SwiftUI
import MapKit

struct ArenaContentView: View {
    let location: Location
    var cornerRadius: CGFloat
    @State private var isHovered = false
    
    var body: some View {
        VStack {
            HStack {
                Text(location.name)
                    .font(.title)
                    .padding(.horizontal)
                Spacer()
                Button {
                    usePureMap()
                } label: {
                    HStack {
                                            Image(systemName: "location.fill")
                                            Text("Go!")
                                        }
                    .padding(.horizontal, 20)
                                        .padding(.vertical, 10)
                                        .background(
                                            Group {
                                                if isHovered {
                                                    Color.blue.opacity(0.8)
                                                } else {
                                                    Color.blue
                                                }
                                            }
                                        )
                                        .foregroundColor(.white)
                                        .font(.headline)
                                        .clipShape(RoundedRectangle(cornerRadius: self.cornerRadius))
                                        .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 2)
                                        .scaleEffect(isHovered ? 1.05 : 1.0)
                                        .animation(.easeInOut(duration: 0.2), value: isHovered)
                                    }
                .offset(y: 20)
                                    .buttonStyle(PlainButtonStyle())
                                    .onHover { hovering in
                                        isHovered = hovering
                                    }
                                    .padding(.trailing, 20)
                
            }
            HStack {
                Text("this is \(location.description)")
                    .padding(.horizontal)
                Spacer()
            }
            Image("Badge")
                .resizable()
                .frame(width: 300, height: 110)
                .scaledToFill()
                .clipShape(Rectangle())
                .padding(.horizontal)
            ScrollView(.horizontal) {
                HStack{
                    Image("Stadium1")
                    Image("Stadium2")
                    Image("Stadium3")
                }.frame(width: 100, height: 200)
            }
        }
    }
    func usePureMap() {
            let coordinates = CLLocationCoordinate2D(latitude: 35.08528700676618, longitude:  137.1711767920404)
            let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinates, addressDictionary: nil))
            mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
    }
}

#Preview {
    ArenaContentView(location: .init(name: "test", coordinate: CLLocationCoordinate2D(latitude: 33.000, longitude: 180.000), description: "this is test"), cornerRadius: CGFloat(1.0))
}
