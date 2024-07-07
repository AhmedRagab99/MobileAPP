import SwiftUI
import Foundation

public struct User: Hashable,Identifiable {
    public var id = UUID()
    public var name:String = "user name"
    public var age: Int = 123
    public var isAuth: Bool = false
}

