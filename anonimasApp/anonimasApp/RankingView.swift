import SwiftUI

struct RankingView: View {
    @State private var searchText = ""
    let users: [User] = [
        User(userName: "Kento Izumi", touchdownNumber: 823, flagNumber: 286),
        User(userName: "Yuki Tanaka", touchdownNumber: 512, flagNumber: 129),
        User(userName: "Yuki Tanaka", touchdownNumber: 512, flagNumber: 129),
        User(userName: "Yuki Tanaka", touchdownNumber: 512, flagNumber: 129),
        User(userName: "Sakura Yamamoto", touchdownNumber: 670, flagNumber: 354),
        User(userName: "Sakura Yamamoto", touchdownNumber: 670, flagNumber: 354),
        User(userName: "Sakura Yamamoto", touchdownNumber: 670, flagNumber: 354),
        User(userName: "Sakura Yamamoto", touchdownNumber: 670, flagNumber: 354)
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
        VStack {
            ZStack {
                Circle()
                    .fill(gradient)
                    .frame(width: 3000, height: 3000)
                    .offset(CGSize(width: 0, height: -1650))
                MemberCardView()
                    .offset(CGSize(width: 0, height: -270))
            }.zIndex(1)
            ScrollView {
                ForEach(Array(users.enumerated()), id: \.element.id) { index, user in
                    ConnectionCardView(userName: user.userName, touchdownNumber: user.touchdownNumber, flagNumber: user.flagNumber, imageNumber: (index % 4) + 1)
                        .padding(.bottom, 10)
                        .searchable(text: $searchText)
                }
            }.zIndex(2)
        }
    }
}

#Preview {
    RankingView()
}
