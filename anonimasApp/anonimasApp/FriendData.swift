import Foundation
import SwiftData

struct Friend: Identifiable {
    var id: Int
    var name: String
    var touchdown: Int
    var flag: Int
}

class FriendList: ObservableObject {
    @Published var friends: [Friend] = [
        Friend(id: 1, name: "Kento Izumi", touchdown: 11, flag: 123),
        Friend(id: 2, name: "Tetsu Fujino", touchdown: 22, flag: 234),
        Friend(id: 3, name: "Satoshi Toma", touchdown: 33, flag: 345),
        Friend(id: 4, name: "Rikuto Yasuda", touchdown: 44, flag: 456),
        Friend(id: 5, name: "Sho Ohashi", touchdown: 55, flag: 567),
        Friend(id: 6, name: "Takuya Hiraoka", touchdown: 66, flag: 678),
        Friend(id: 7, name: "Keisuke Isaji", touchdown: 77, flag: 789),
    ]
}

@Model
class FriendData: Identifiable {
    var id: Int
    var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}
