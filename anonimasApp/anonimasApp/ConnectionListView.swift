import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let userName: String
    let touchdownNumber: Int
    let flagNumber: Int
}


struct ConnectionListView: View {
    @State private var searchText = ""
    let users: [User] = [
        User(userName: "Kento Izumi", touchdownNumber: 823, flagNumber: 286),
        User(userName: "Yuki Tanaka", touchdownNumber: 512, flagNumber: 129),
        User(userName: "Yuki Tanaka", touchdownNumber: 512, flagNumber: 129),
        User(userName: "Yuki Tanaka1", touchdownNumber: 512, flagNumber: 129),
        User(userName: "Sakura Yamamoto", touchdownNumber: 670, flagNumber: 354),
        User(userName: "Sakura Yamamoto", touchdownNumber: 670, flagNumber: 354),
        User(userName: "Sakura Yamamoto", touchdownNumber: 670, flagNumber: 354),
        User(userName: "Sakura Yamamoto", touchdownNumber: 670, flagNumber: 354)
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(
                stops: [
                    Gradient.Stop(color: Color(red: 0.21, green: 0.38, blue: 0.79), location: 0.00),
                    Gradient.Stop(color: Color(red: 0.06, green: 0.16, blue: 0.4), location: 1.00),
                ],
                startPoint: UnitPoint(x: 0, y: 0),
                endPoint: UnitPoint(x: 1, y: 1)
            )
            .edgesIgnoringSafeArea(.all)
            ScrollView {
                ForEach(Array(users.enumerated()), id: \.element.id) { index, user in
                    ConnectionCardView(userName: user.userName, touchdownNumber: user.touchdownNumber, flagNumber: user.flagNumber, imageNumber: (index % 4) + 1)
                        .padding(.bottom, 10)
                        .searchable(text: $searchText)
                }
            }
        }
    }
}

#Preview {
    ConnectionListView()
}
