import SwiftUI
import MapKit

struct ArenaContentView: View {
    let location: Location
    
    var body: some View {
        VStack {
            HStack {
                Text(location.name)
                    .font(.title)
                    .padding(.horizontal)
                Spacer()
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
}

#Preview {
    ArenaContentView(location: .init(name: "test", coordinate: CLLocationCoordinate2D(latitude: 33.000, longitude: 180.000), description: "this is test"))
}
