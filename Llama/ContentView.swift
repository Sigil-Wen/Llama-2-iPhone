//
//  ContentView.swift
//  Llama
//
//  Created by Sigil Wen on 2023-07-19.
//

import Chat
import SwiftUI

struct ContentView: View {
    @State var messages: [Message] = []

    var body: some View {
        ChatView(messages: messages) { draft in
            yourViewModel.send(draft: draft)
        }
    }
}

#Preview {
    ContentView()
}
