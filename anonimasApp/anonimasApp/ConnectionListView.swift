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
        User(userName: "Sakura Yamamoto", touchdownNumber: 670, flagNumber: 354)
    ]

    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            NavigationView {
                ForEach(users) { user in
                    ConnectionCardView(userName: user.userName, touchdownNumber: user.touchdownNumber, flagNumber: user.flagNumber)
                        .padding(.bottom, 10)
                }
                .searchable(text: $searchText)
            }
        }
    }
}

#Preview {
    ConnectionListView()
}
