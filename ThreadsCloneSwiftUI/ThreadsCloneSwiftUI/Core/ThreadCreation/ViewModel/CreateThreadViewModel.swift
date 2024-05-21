//
//  CreateThreadViewModel.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 20.05.2024.
//

import Foundation

final class CreateThreadViewModel: ObservableObject {
    
    func uploadThread(caption: String) async throws {
        let thread = ThreadModel(
            ownerUid: User.mockUsers[0].id,
            caption: caption,
            timestamp: Date(),
            likes: 0,
            replyCount: 0
        )
        try await ThreadService.uploadThread(thread)
    }
    
    func createThread() async throws {
        let thread = ThreadModel(
            threadId: UUID().uuidString,
            ownerUid: "",
            caption: "",
            timestamp: Date(),
            likes: 0,
            imageUrl: "",
            replyCount: 0,
            user: User.mockUsers[0],
            didLike: false
        )
    }
}
