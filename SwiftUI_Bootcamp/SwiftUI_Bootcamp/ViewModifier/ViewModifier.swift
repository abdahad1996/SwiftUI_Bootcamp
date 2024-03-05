//
//  ViewModifier.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 27/02/2024.
//

import Foundation
import SwiftUI

struct ColorModifier:ViewModifier{
    let color:Color
    
    func body(content: Content) -> some View {
            content
                .background(color)
        }
    
    
}
//1
struct ViewModifierView1:View {
   
    var body:some View {
        Text("Abdul Ahadf")
            .modifier(ColorModifier(color: .red))
            .printType()
       
       
    }
    
}

//2
struct ViewModifierView2:View {
   
    var body:some View {
        ModifiedContent(content: Text("Hello, Worlds!"), modifier: ColorModifier(color: .red))
            .printType()
       
       
    }
    
}

//2
struct ViewModifierView3:View {
   
    var body:some View {
        Text("Abdul Ahads")
            .bgColor(.red)
            .debugType()
       
    }
    
    
}

extension View {
    func bgColor(_ color: Color) -> some View {
        modifier(ColorModifier(color: color))
    }
}

//1 multiple modifiers
struct ViewModifierView4:View {
   
    var body:some View {
        Text("Abdul Ahada")
            .background(.red)
            .printType()
       
       
    }
    
}


 
#Preview("ViewModifierView1"){
    ViewModifierView1()
}
#Preview("ViewModifierView2"){
    ViewModifierView2()
}
#Preview("ViewModifierView3"){
    ViewModifierView3()
}
#Preview("ViewModifierView4"){
    ViewModifierView4()
}
