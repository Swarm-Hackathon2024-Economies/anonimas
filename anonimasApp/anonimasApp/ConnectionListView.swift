import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let userName: String
    let touchdownNumber: Int
    let flagNumber: Int
}


struct ConnectionListView: View {
    @State private var searchText = ""
    @EnvironmentObject var friendData: FriendList

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
                ForEach(friendData.friends.filter { $0.isPulled }, id: \.id) { friend in
                    ConnectionCardView(userName: friend.name, touchdownNumber: friend.touchdown, flagNumber: friend.flag, imageNumber: (friend.id % 4) + 1)
                        .padding(.bottom, 10)
                        .searchable(text: $searchText)
                }
            }
        }
    }
}

#Preview {
    ConnectionListView()
        .environmentObject(FriendList())
}
