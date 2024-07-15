import SwiftUI
import SwiftData

struct ConnectionListView: View {
    @State private var searchText = ""
    @EnvironmentObject var friendList: FriendList

    @Environment(\.modelContext) private var context
    @Query private var friendData: [FriendData]

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
                ForEach(getFriendsByIds(ids: friendData.map{data in data.id}, from: friendList.friends), id: \.id) { friend in
                    ConnectionCardView(id:friend.id ,userName: friend.name, touchdownNumber: friend.touchdown, flagNumber: friend.flag, imageNumber: (friend.id % 4) + 1)
                        .padding(.bottom, 10)
                        .searchable(text: $searchText)
                }
            }
        }
    }
    func getFriendsByIds(ids: [Int], from friends: [Friend]) -> [Friend] {
        friends.filter { ids.contains($0.id) }
    }

}

#Preview {
    ConnectionListView()
        .environmentObject(FriendList())
}
