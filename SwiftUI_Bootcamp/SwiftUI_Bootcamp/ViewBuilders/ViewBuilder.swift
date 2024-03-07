//
//  ViewBuilder.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 20/02/2024.
//

import SwiftUI



struct ViewBuilderReturnEmptyView:View {
    
    var body: some View {
        EmptyView()
           .debugType()
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
        VStack{
            Text("Hello")
            Image(systemName: "hand.wave")
           
        } .debugType()
        
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


#Preview("ViewBuilderReturnEmptyView") {
    ViewBuilderReturnEmptyView()
}

#Preview("ViewBuilderSingle") {
    ViewBuilderSingle()
}

#Preview("ViewBuilderNormal") {
    ViewBuilderNormal()
}


