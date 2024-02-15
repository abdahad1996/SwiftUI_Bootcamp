//
//  CounterView.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 15/02/2024.
//

import SwiftUI

struct CounterView: View {
    @State var counter = 0
    var body: some View {
        VStack{
            Button(action: {
                self.counter += 1
            }) {
                Text("Tap me")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Capsule().fill(Color.blue))
            }
            
            if counter > 0{
                Text("tapped \(counter) times")
            }
            
            else{
                Text("not tapped yet")
            }
                
        }.debug()
    }
}

#Preview {
    CounterView()
}

extension View {
    func debug() -> Self {
        let type = Mirror(reflecting: self).subjectType
        print(type)
        return self
    }
}
