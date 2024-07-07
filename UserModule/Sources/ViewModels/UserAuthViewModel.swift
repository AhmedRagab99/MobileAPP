import SwiftUI

public class UserAuthViewModel: ObservableObject {
    @Published public var users : [User] = [User]()
    public init() {}

    public func updateUsers() {
        users = [
            User(name: "Ahmed",
                 age: 20,
                 isAuth:false),
            
            User(name: "Mahmoud"
                 ,age: 30,
                 isAuth: true),
            User(name: "Amr",
                 age:20,
                 isAuth:false),
            User(name: "Omar",
                 age:20,
                 isAuth:true),
        ]
    }
}
