//
//  OnChangeModifier.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 07/03/2024.
//

import Foundation
import SwiftUI

class OnReceiveModel: ObservableObject {
    @Published var data: [String] = []
    func fetchData() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) { [self] in
            data = ["abdul", "bilal", "danial","bastian"]
        }
    }
}
struct OnRecieveModifierView:View {
    @StateObject var vm = OnReceiveModel()
    @State var count = 0
    var body: some View {
        VStack(spacing: 20) {
           
            
            List(vm.data, id: \.self) { data in
                Text(data)
            }
            Text("\(count)")
                .padding()
                .background(Capsule().stroke(Color.blue, lineWidth: 2))
        }
        
        .task {
            vm.fetchData()
        }
        .onReceive(vm.$data, perform: { newValue in
            count = newValue.count
        })
        
    }
}

#Preview {
    OnRecieveModifierView()
}

 
