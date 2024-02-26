//
//  ViewBuilder.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 20/02/2024.
//

import SwiftUI


struct Greeting: View {
    
    @ViewBuilder var hello: some View {
        Image(systemName: "hand.wave")
        Text("Hello")
    }
    
    @ViewBuilder var bye: some View { Text("And Goodbye!")
        Image(systemName: "hand.wave")
    }
    
    var body: some View {
        HStack(spacing: 20) {
            hello
            Spacer()
            bye
        }
    }
}
//struct ViewBuilder: View {
//    
//     
//    
//    @State var isTrue = true
//    @Namespace var namespace
//    
//    var body: some View {
////        let _ = print("", self.namespace, terminator: " -- ")
////        let _ = Self._printChanges()
////        let _ = Self._logChanges()
////        Text("Hello, worldssss!").debug()
////        Image(systemName: "globe")
////            .imageScale(.large)
////            .background(Color.blue)
////            .debug()
////        VStack(spacing: 20) {
////            Image(systemName: "globe")
////                .imageScale(.large)
////                .foregroundStyle(.tint)
////            Text("Hello, worldsss!")
////        }.debug()
////        if isTrue {
////            Text("Hello, worlds!")
////        }else{
////            EmptyView()
////        }
//        bye
//            
//    }
//    
//    @ViewBuilder var bye: some View { Text("And Goodbye!")
//        Image(systemName: "hand.wave")
//    }
////    @ViewBuilder
//// var customBody:some View {
////        Image(systemName: "globe")
////            .imageScale(.large)
////            .foregroundStyle(.tint)
////        Text("Hello, worldsss!")
////    }
//}

struct ViewBuilderReturnEmptyView:View {
    
    var body: some View {
        let _ = Self._logChanges()
            
        EmptyView()
//            .debug()
    }
}

struct ViewBuilderProprtyView: View {
    @ViewBuilder var spells: some View {
        Text("Lumos")
        Text("Obliviate")
    }
    
    @ViewBuilder var hello: some View {
            Image(systemName: "hand.wave")
            Text("Hello")
        }
    
    @ViewBuilder func buildViews() -> some View {
        Image(systemName: "hand.wave")
        Text("Bye")
    }

    var body: some View {
        VStack {
            Greeting()
            spells
            hello
            Text("ViewBuilderProprtyView")
            buildViews()
        }
    }
}

#Preview {
//    ViewBuilder()
//    ViewBuilderProprtyView()
    ViewBuilderReturnEmptyView()
}
