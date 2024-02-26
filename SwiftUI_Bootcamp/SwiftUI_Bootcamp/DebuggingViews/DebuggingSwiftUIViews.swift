//
//  DebuggingSwiftUIViews.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 24/02/2024.
//

import SwiftUI

struct DebuggingSwiftUIViewsWithPrints: View {
    @State var isTrue = true
    var body: some View {
         VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button(action: {
                isTrue.toggle()
            }) {
                Text("Toggle")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Capsule().fill(Color.blue))
            }
            if isTrue {
                Text("istrue")
            }else{
                EmptyView()
            }
         }
         .printOutput("viewchanged")
         
         
        
    }
}

struct DebuggingSwiftUIViewsWithPrintChanges: View {
    @State var isTrue = true
    var body: some View {
#if DEBUG
        let _ = Self._printChanges()
#endif
        
         VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button(action: {
                isTrue.toggle()
            }) {
                Text("Toggle")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Capsule().fill(Color.blue))
            }
            if isTrue {
                Text("istrue")
            }else{
                EmptyView()
            }
             
             
         }.debugAction {
             assert(isTrue)
         }
         
        
    }
}

struct DebuggingSwiftUIViewsWithMirrorApis: View {
    @State var isTrue = true
    var body: some View {
        
         VStack {
            Text("Hello, World!")
            Button(action: {
                isTrue.toggle()
            }) {
                Text("Toggle")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Capsule().fill(Color.blue))
            }
            if isTrue {
                Text("istruess")
            }else{
                EmptyView()
            }
             
         }.debugType()
         
        
    }
}

extension View {
    func printOutput(_ value: Any) -> Self {
        print(value)
        return self
    }
    
    func debugAction(_ closure: () -> Void) -> Self {
            #if DEBUG
            closure()
            #endif

            return self
        }
   
        func debugType() -> Self {
            let type = Mirror(reflecting: self).subjectType
            print(type)
            return self
        }
    
    
}
#Preview {
//    DebuggingSwiftUIViewsWithPrints()
//    DebuggingSwiftUIViewsWithPrintChanges()
    DebuggingSwiftUIViewsWithMirrorApis()
}
