//
//  OnChangeModifier.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 07/03/2024.
//

import Foundation
import SwiftUI

struct OnSubmitView: View {
    @State private var name = ""
    @State private var continueOnboarding = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("ON SUBMIT")
                TextField("name", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .submitLabel(.continue)
                    .onSubmit {
                        continueOnboarding = true
                    }.padding()
            }
            .navigationDestination(isPresented: $continueOnboarding) {
                Text("Next Step")
            }
            .font(.title)
            
        }
    }
}

struct OnSubmit_SubmitScope: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var continueOnboarding = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                GroupBox("About You") {
                    TextField("first name", text: $firstName)
                        .submitScope()
                    TextField("last name", text: $lastName)
                        .submitLabel(.continue)
                }
                .textFieldStyle(.roundedBorder)
                .onSubmit(of: .text) {
                    continueOnboarding = true
                }
                .navigationDestination(isPresented: $continueOnboarding) {
                    Text("Next Step")
                }
            }
            .navigationTitle("onSubmit")
        }
        .font(.title)
    }
}

#Preview("OnSubmit_SubmitScope") {
    OnSubmit_SubmitScope()
}

#Preview("OnSubmitView") {
    OnSubmitView()
}
