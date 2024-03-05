//
//  WhatsAView.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 26/02/2024.
//

import Foundation
import SwiftUI


struct WhatsAView:View {
   
    var body:some View {
        Text("Abdul Ahad")
            .padding()
            .background()
            .printType()
       
    }
    
}
extension View{
    func printType() -> Self {
        let mirror = Mirror(reflecting: self)
        let dynamicType = type(of: mirror.subjectType)
        print(dynamicType)
        return self
    }
}
 

#Preview {
//    ViewBuilder()
    WhatsAView()
//    ViewBuilderReturnEmptyView()
}
