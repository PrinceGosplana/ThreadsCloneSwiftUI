//
//  CreateThreadViewModel.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 20.05.2024.
//

import Foundation

final class CreateThreadViewModel: ObservableObject {
    
    @Published var caption = ""

    func createThread() async throws {
        let thread = ThreadModel(
            threadId: UUID().uuidString,
            ownerUid: "",
            caption: caption,
            timestamp: Date(),
            likes: 0,
            imageUrl: "",
            replyCount: 0,
            user: User.mockUsers[0],
            didLike: false
        )
    }
}
