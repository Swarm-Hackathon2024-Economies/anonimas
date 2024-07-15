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
        Friend(id: 1, name: "Takuya Ohashi", touchdown: 11, flag: 123),
        Friend(id: 2, name: "Sho Hiraoka", touchdown: 22, flag: 234),
        Friend(id: 3, name: "Keisuke Toma", touchdown: 33, flag: 345),
        Friend(id: 4, name: "Satoshi Yasuda", touchdown: 44, flag: 456),
        Friend(id: 5, name: "Rikuto Isaji", touchdown: 55, flag: 567),
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
