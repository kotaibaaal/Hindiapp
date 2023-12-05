//
//  ContentView.swift
//  Hindiapp
//
//  Created by Kotaiba Aal on 2023-12-05.
//

import SwiftUI

struct ContentView: View {
    @State var itemList: [String] = []
    @State var inputText: String = ""

    var body: some View {
        VStack {
            HStack {
                TextField("Enter text", text: $inputText)
                    .border(Color.gray)

                Button("Lägg till") {
                    itemList.append(inputText)
                    inputText = ""
                }
            }
            .padding()

            List(itemList, id: \.self) { item in
                Text(item)
            }

            Button("Nollställ") {
                itemList.removeAll()
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
