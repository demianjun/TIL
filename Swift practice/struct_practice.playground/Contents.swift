import UIKit

struct User {
    var friends: [Friends] = []
    var blocks: [Friends] = []
}

struct Friends: Equatable {
    let name: String
}

/*
 ↑ User와 Friends 타입은 수정 금지
 ↓ FriendList 타입은 수정 허용
 */

struct FriendList {
    var user: User
    init(user: User) {
        self.user = user
    }
    
    mutating func addFriend(name: String) -> User{
        let a = Friends(name: name)
        user.friends.append(a)
        print(user.friends)
        return self.user
    }
    
    mutating func blockFriend(name: String) -> User{
        let a = Friends(name: name)
        
        if let index = user.friends.firstIndex(of: a) {
            user.friends.remove(at: index)
            print( user.friends)
        }
        
        if !user.blocks.contains(a) {
            user.blocks.append(a)
        }
        
        print(user.blocks)
        return self.user
    }
}


var user = User()

var friendList = FriendList(user: user)
user = friendList.addFriend(name:"원빈")
user = friendList.addFriend(name: "장동건")
user = friendList.addFriend(name: "정우성")
user.friends   // 원빈, 장동건, 정우성

user = friendList.blockFriend(name: "정우성")
user.friends   // 원빈, 장동건
user.blocks    // 정우성

