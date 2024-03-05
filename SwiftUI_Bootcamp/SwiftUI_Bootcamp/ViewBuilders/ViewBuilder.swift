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

struct ViewBuilderReturnEmptyView:View {
    
    var body: some View {
        let _ = Self._logChanges()
            
        EmptyView()
           .debugType()
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
//            Greeting()
//            spells
//            hello
            Text("ViewBuilderProprtyViews")
                .opacity(0.8)
                .debugType()
//            buildViews()
        }
    }
}

#Preview {
//    ViewBuilder()
    ViewBuilderProprtyView()
//    ViewBuilderReturnEmptyView()
}
