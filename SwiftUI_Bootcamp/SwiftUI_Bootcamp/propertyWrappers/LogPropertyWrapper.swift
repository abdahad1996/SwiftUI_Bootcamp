//
//  LogPropertyWrapper.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 04/02/2024.
//

import SwiftUI

@propertyWrapper
struct Lowercased {
    private(set) var value: String = ""

    var wrappedValue: String {
        get { value }
        set { value = newValue.lowercased() }
    }

    init(wrappedValue: String) {
        self.value = wrappedValue.lowercased()
    }
    
    public var projectedValue: Int {
            2
    }
    
    
  
    private func foo() { print("Foo") }
}

struct User {
    @Lowercased var username: String
    
     func getStoredValue() -> Int{
         return $username
    }
     var email: String

}

class User2:ObservableObject {
    @Published var userName:String = ""
    
    init() {
       let publisher1 =  _userName.projectedValue
       let publisher2 = $userName
    }
}




struct LogPropertyWrapper: View {
    var user = User(username: "SwiftCoder",email:"a.ahad@live.com")

    var body: some View {
        Text("Hello, World!")
        Text("\(user.username)")
        Text("\(user.email)")
         



    }
}

#Preview {
    LogPropertyWrapper()
}
