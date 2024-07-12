import SwiftUI


struct TeamView: View {
    @State private var searchText = ""
    @State private var selectedIndex: Int?
    
    let items = Array(1...9)
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let gradient = LinearGradient(
        stops: [
            Gradient.Stop(color: Color(red: 0.21, green: 0.38, blue: 0.79), location: 0.00),
            Gradient.Stop(color: Color(red: 0.06, green: 0.16, blue: 0.4), location: 1.00),
        ],
        startPoint: UnitPoint(x: 0, y: 0),
        endPoint: UnitPoint(x: 1, y: 1)
    )
    
    var body: some View {
        ZStack {
            Image("Screen-Back")
                .resizable()
                .frame(height: 990)
            ScrollView {
                VStack(alignment: .center) {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(items, id: \.self) { item in
                            ZStack {
                                Image(selectedIndex == item ? "Flag-Selected" : "Flag-Unselected")
                                    .resizable()
                                    .scaledToFit()
                                    .shadow(radius: 10, x: 5, y: 5)
                                    .frame(width: 100, height: 100)
                                    .onTapGesture {
                                        selectedIndex = item
                                    }
                                Image("TeamIcon-\(item)")
                                    .resizable()
                                    .scaledToFit()
                                    .shadow(radius: 10, x: 5, y: 5)
                                    .frame(width: 65, height: 65)
                                    .onTapGesture {
                                        selectedIndex = item
                                    }
                            }
                        }
                    }
                    .frame(maxWidth: 350, alignment: .center)
                }
                .offset(CGSize(width: 0, height: 400))
                .padding()
            }
            Image("COWBOYS-player")
                .resizable()
                .frame(width: 345, height: 292)
                .offset(CGSize(width: 0, height: -240))
            HStack {
                Image("COWBOYS-logo")
                    .offset(CGSize(width: 0, height: -30))
                ZStack {
                    Rectangle()
                        .frame(width: 182, height: 90)
                        .foregroundColor(.black.opacity(0.5))
                        .cornerRadius(8)
                    VStack(alignment:.leading, spacing: 0) {
                        VStack(alignment:.leading, spacing: 0) {
                            Text("Menber")
                                .font(.custom("SF-Pro", size: 14))
                            Text("64,123")
                                .font(.title2)
                                .bold()
                        }
                        VStack(alignment:.leading, spacing: 0) {
                            Text("TeamPoint")
                                .font(.custom("SF-Pro", size: 14))
                            Text("1,614,123")
                                .font(.title2)
                                .bold()
                        }
                    }
                    .foregroundColor(.white)
                    .frame(width: 182, alignment: .leading)
                    .offset(CGSize(width: 18.0, height: 0))
                }
                .offset(CGSize(width: 0, height: -10))
            }
            .offset(CGSize(width: 0, height: -150))
        }
    }
}

#Preview {
    TeamView()
}
