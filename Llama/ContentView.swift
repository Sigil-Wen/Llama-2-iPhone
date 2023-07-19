//
//  ContentView.swift
//  Llama
//
//  Created by Sigil Wen on 2023-07-19.
//

import Chat
import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel:  LlamaMessageModel = LlamaMessageModel()
    
    var body: some View {
        ChatView(messages: viewModel.messages) { draft in
            viewModel.send(draft: draft)
        } messageBuilder: { message, positionInGroup, showAttachmentClosure in
            VStack {
                Text(message.text)
                if !message.attachments.isEmpty {
                    ForEach(message.attachments, id: \.id) { at in
                        AsyncImage(url: at.thumbnail)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
