import Foundation
import Combine

protocol FriendDataContextProvider {
    var friendDataPublisher: Published<[FriendData]>.Publisher { get }
}

class DefaultFriendDataContextProvider: ObservableObject, FriendDataContextProvider {
    @Published var friendData: [FriendData]

    var friendDataPublisher: Published<[FriendData]>.Publisher{ $friendData }

//    static var shared = DefaultFriendDataContextProvider()

    init(friendData: [FriendData]) {
        self.friendData = friendData
    }
}
