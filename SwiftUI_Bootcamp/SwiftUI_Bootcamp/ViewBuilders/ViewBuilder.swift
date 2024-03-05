//
//  ViewBuilder.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 20/02/2024.
//

import SwiftUI


struct ViewBuilderFunction: View {
    
    
    @ViewBuilder func buildViews() -> some View {
        Image(systemName: "hand.wave")
        Text("ViewBuilderFunction")
    }
    
    var body: some View {
        HStack(spacing: 20) {
            buildViews()
                .debugType()
        }
    }
}

struct ViewBuilderReturnEmptyView:View {
    
    var body: some View {
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
    
    

    var body: some View {
        VStack {
//            spells
            hello
            spells
              
//            Text("ViewBuilderProprtyViews")
//                .opacity(0.8)
//                .debugType()
//            buildViews()
        }  .debugType()
    }
}


struct ViewBuilderNormal:View {
    let array = ["Placeholder 1", "Placeholder 2"]
    var body: some View {
        VStack {
        Image(systemName: "hand.wave")
        Text("Hello")
        Image(systemName: "hand.wave")
            
            List(array, id: \.self) { datum in
                Text(datum)
            }
        }.debugType()
    }
}


struct ViewBuilderSingle:View {
    var body: some View {
        Text("Hello")
        .debugType()
    }
}


struct ViewBuilderMultiViewWithoutLayout:View {
    
    @ViewBuilder func buildViews() -> some View {
        Image(systemName: "hand.wave")
        Divider()
        Text("ViewBuilderFunction")
    }
    
    var body: some View {
        buildViews().background(.red)
        Image(systemName: "hand.wave")
        Text("Hello")
        Image(systemName: "hand.wave")
           
    }
}

struct ViewBuilderConditional:View {
    @State var isTrue = true
    var body: some View {
        VStack {
        Image(systemName: "hand.wave")
            
        if isTrue {
                Text("Hello")
            }
        }
        .debugType()
    }
}

 

#Preview("ViewBuilderConditional") {
    ViewBuilderConditional()
}

#Preview("ViewBuilderMultiViewWithoutLayout") {
    ViewBuilderMultiViewWithoutLayout()
}

#Preview("ViewBuilderReturnEmptyView") {
    ViewBuilderReturnEmptyView()
}

#Preview("ViewBuilderSingle") {
    ViewBuilderSingle()
}

#Preview("ViewBuilderNormal") {
    ViewBuilderNormal()
}
#Preview("ViewBuilderFunction") {
    ViewBuilderFunction()
}

#Preview("ViewBuilderProprtyView") {
    ViewBuilderProprtyView()
}

