//
//  OnChangeModifier.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 07/03/2024.
//

import Foundation
import SwiftUI

struct OnChangeModifierView:View {
    @State var text:String
    @State var color:Color = .yellow
    var body: some View {
        VStack(spacing: 20) {
            Text("Onchange TextField")
            TextField("Enter Text", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            Text("\(text)")
                .foregroundStyle(color)
        }
        .onChange(of: text) { oldValue, newValue in
            print(oldValue)
            print(newValue)
            if newValue == "Red"{
                color = .red
            }
            
        }
        //        .onChange(of: text) { [text] newValue in
        //            print(text)
        //            print(newValue)
        //            if newValue == "Red"{
        //                color = .red
        //            }
        //        }
    }
}

#Preview {
    OnChangeModifierView(text: "")
}
