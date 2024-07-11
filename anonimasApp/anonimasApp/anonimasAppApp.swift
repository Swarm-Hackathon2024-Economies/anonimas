import SwiftUI
import SwiftData

@main
struct anonimasAppApp: App {
    @StateObject private var friendList = FriendList()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(friendList)
                .modelContainer(for: FriendData.self)
        }
    }
}
