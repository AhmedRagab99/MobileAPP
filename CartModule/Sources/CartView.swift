import SwiftUI
import UserModule

public func isEvenNumber(with number:Int) -> Bool {
    return number % 2 == 0
}
public struct CartView: View {

    public init() {}
    @StateObject var userViewModel = UserAuthViewModel()
    public var body: some View {
        VStack {
            Text("From the Cart view module")
            List(userViewModel.users,id: \.self) { user in
                HStack {
                    VStack(alignment:.leading) {
                        Text(user.name)
                        Text(user.age.description)
                    }
                    Toggle(isOn: Binding(projectedValue: .constant(user.isAuth)), label: {
                        Text("")
                    })
                }
            }
        }.onAppear(perform: {
            self.userViewModel.updateUsers()
        })
    }

}
