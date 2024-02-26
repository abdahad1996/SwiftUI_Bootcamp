//
//  OpaqueType.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 25/02/2024.
//

import SwiftUI

struct OpaqueType: View {
    
    func getMoneyWithoutTax() -> Int {
        return 10
    }
    
    func getMoneyWithTax(val:Int) -> some Equatable {
        return val - 10
    }
    
    var body: some View {
        let money = getMoneyWithoutTax()
        var netMoney = getMoneyWithTax(val:money)
        
        Text("Hello, World!")
    }
}

#Preview {
    OpaqueType()
}
