//
//  State.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 13/02/2024.
//

import SwiftUI
import Foundation


import SwiftUI

struct teststate: View {
    @State private var value = 1234.5667
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Slider(value: $value, in: 0...100, step: 1)
            ChildOne(Int(value))
            ChildOne(Int(value))
//                .id(value)
        }
        .padding()
        .debug()
        
    }
}

struct ChildOne: View {
//    @State private var a: Int
    var a:Int
    @Namespace var namespace
    @State var isBool = false
    let x: Int
    
    init(_ a: Int) {
//        print("child one changed")
        self.a = a
        x = a
    }
    
    var body: some View {
        let _ = print(self.a, self.namespace, terminator: " -- ")
        let _ = Self._printChanges()
//        let _ = print(Mirror(reflecting: ChildOne(Int(5)).body))

        if isBool{
            Text("a = \(a), x = \(x)")
        }else{
            Text("a = \(a), x = \(x)")
        }
         
    }
    
    
}

//final class Model: ObservableObject {
//    @Published var flag: Bool
//
//    init(flag: Bool) {
//        self.flag = flag
//    }
//}
//
//struct Foo: View {
//    @StateObject private var model: Model
//
//    init(model: Model) {
//        // Error: cannot assign to property: 'model' is a get-only property
//        _model = StateObject(wrappedValue: model)
//    }
//
//    var body: some View {
//        Text("Hello, world!")
//    }
//}

#Preview {
    teststate()
}

