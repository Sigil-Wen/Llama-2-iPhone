//
//  LlamaMessageModel.swift
//  Llama
//
//  Created by Sigil Wen on 2023-07-19.
//

import Foundation
import Chat

class LlamaMessageModel: ObservableObject {
    
    @Published var messages: [Message] = []
    
    public func send(draft: DraftMessage) {
        messages.append(Message(id: draft.id ?? "",
                                user: User(id: "User", name: "User", avatarURL: URL(string:"https://pbs.twimg.com/profile_images/1659341834475253769/Ae19eLTH_400x400.jpg"),
                                           isCurrentUser: true), text: draft.text))
    }
    
}
