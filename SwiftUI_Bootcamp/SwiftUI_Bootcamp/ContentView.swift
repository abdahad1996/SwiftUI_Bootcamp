//
//  ContentView.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 04/02/2024.
//

import SwiftUI


struct ContentView: View {
    let person = Person(name: "John", age: 30)
    
    init() {
        
    
    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}




