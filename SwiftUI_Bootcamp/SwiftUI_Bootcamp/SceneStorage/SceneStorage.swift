//
//  SceneStorage.swift
//  SwiftUI_Bootcamp
//
//  Created by macbook abdul on 08/03/2024.
//

import SwiftUI

struct SceneStorageView: View {
    @State private var textInput = ""
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                NavigationLink("Enter New Data", destination: DataEntryView())
            }
            .font(.title)
            .navigationTitle("@SceneStorage")
        }
    }
}

struct DataEntryView: View {
    @SceneStorage("textInput") var textInput = ""
    @State var stateText = ""
    var body: some View {
        VStack(spacing: 20) {
            TextEditor(text: $textInput)
                .border(Color.pink)
                .padding()
            TextEditor(text: $stateText)
                .border(Color.pink)
                .padding()
        }
        .font(.title)
    }
}

#Preview {
    SceneStorageView()
}
