//
//  AppStorage.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 08/03/2024.
//

import SwiftUI

struct AppStorageView: View {
    @AppStorage("isSwitchOn") private var isSwitchOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isSwitchOn) {
                Text("Toggle me please")
            }
            .padding()
            
            Text("The switch is \(isSwitchOn ? "ON" : "OFF")")
                .padding()
        }
    }
}
struct AppStorage_WhatCanBeStored: View {
    @AppStorage("myBool") var myBool = true
    @AppStorage("myInt") var myInt = 21
    @AppStorage("myDouble") var myDouble = 1.99
    @AppStorage("myString") var myString = "ABCabc"
    @AppStorage("myUrl") var myUrl = URL(string: "https://www.google.com")!
    @AppStorage("myData") var myData = Data("Hello 👋 ".utf8)
    // @AppStorage("myDate") var myDate = Date() // error
    var body: some View {
        VStack(spacing: 20) {
            Text("Currently, you can store: Bool, Int, Double, String, URL, Data.").font(.largeTitle)
            Text("Stored in AppStorage").bold()
            Text("\(myBool.description)")
            Text("\(myInt)")
            Text("\(myDouble)")
            Text("\(myString)")
            Link("\(myUrl)", destination: myUrl).font(.title2)
            Text("\(String(decoding: myData, as: UTF8.self))")
        }
        .font(.title)
    }
}


struct AppStorage_StoreStruct: View {
    
    @AppStorage("UserAppStorage") var userData = UserAppStorage(name: "Joe Duran", age: 26).encode()!
    
    @State private var userName = ""
    @State private var age = 0
    var body: some View {
        VStack(spacing: 20) {
            
            Text("AppStorage")
            Text("Name: \(userName)").bold()
            Text("Age: \(age)").bold()
        }
        .font(.title)
        .onAppear {
            // We need to convert the Data to primitive types
            getAppStorageData()
        }
    }
    func getAppStorageData() {
        if let appUser = UserAppStorage.decode(userData: userData) {
            userName = appUser.name
            age = appUser.age
        }
    }
}








#Preview("AppStorage_StoreStruct") {
    AppStorage_StoreStruct()
}
#Preview("AppStorage_WhatCanBeStored"){
    AppStorage_WhatCanBeStored()
}
#Preview("AppStorageView") {
    AppStorageView()
}

struct UserAppStorage: Codable {
    var name = ""
    var age = 0
    
    func encode() -> Data? {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(self) {
            return encoded
        } else {
            return nil
        }
    }
    
    static func decode(userData: Data) -> UserAppStorage? {
        let decoder = JSONDecoder()
        if let user = try? decoder.decode(UserAppStorage.self, from: userData) {
            return user
        } else {
            return nil
        }
    }
}
