//
//  ViewBuilderUsage.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 06/03/2024.
//

import Foundation
import SwiftUI


struct ViewBuilderMultiViewWithoutLayout:View {
    
//    @ViewBuilder func buildViews() -> some View {
//        Image(systemName: "hand.wave")
//        Divider()
//        Text("ViewBuilderFunction")
//    }
//    
//    @ViewBuilder
//    var subView:some View{
//        Image(systemName: "hand.wave")
//        Text("subView")
//    }
    
    var body: some View {
        hStackDebug()
            .debugType()
           
    }
}

struct ViewBuilderFunction: View {
    
    
    @ViewBuilder func buildViews(isTrue:Bool = false) -> some View {
        VStack{
          
                Image(systemName: "hand.wave")
                Text("ViewBuilderFunction false")
            
        }
       
        
    }
    
    var body: some View {
        HStack(spacing: 20) {
            buildViews()
//                .debugType()
        }
    }
}


struct ViewBuilderProprtyView: View {
    @ViewBuilder var spells: some View {
        Text("Lumos")
        Divider()
        Text("Obliviate")
       
    }
    
    @ViewBuilder var hello: some View {
            Image(systemName: "hand.wave")
            Text("Hello")
        }
    
    @ViewBuilder var GermanHallo: some View {
         
            Image(systemName: "hand.wave")
            Spacer()
            Text("Hello")
     
          
        }
    
    var body: some View {
        HStack {
            
                hello
                GermanHallo
                spells
                  
            
           
        }  .debugType()
    }
}

struct hStackDebug:View {
   
    @ViewBuilder var hello: some View {
        Text("hello!")
        Image(systemName: "hand.wave")
    }
    
    @ViewBuilder var bye: some View {
        Image(systemName: "hand.wave")
        Text("Goodbye!")
    }
    
    var body: some View {
         
            Spacer()
            hello
            .background(.red)
            bye
            Spacer()
        
    }
}


#Preview("hStackDebug") {
    hStackDebug()
}

#Preview("ViewBuilderFunction") {
    ViewBuilderFunction()
}

#Preview("ViewBuilderProprtyView") {
    ViewBuilderProprtyView()
}

#Preview("ViewBuilderMultiViewWithoutLayout") {
    ViewBuilderMultiViewWithoutLayout()
}
