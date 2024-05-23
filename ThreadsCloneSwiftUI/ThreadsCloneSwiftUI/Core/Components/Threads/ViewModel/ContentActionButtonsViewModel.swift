//
//  ContentActionButtonsViewModel.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 22.05.2024.
//

import Foundation

final class ContentActionButtonsViewModel: ObservableObject {
    @Published var thread: ThreadModel

    init(thread: ThreadModel) {
        self.thread = thread
    }

    func likeThread() {
        thread.didLike = true
        thread.likes += 1
    }

    func unlikeThread() {
        thread.didLike = false
        if thread.likes > 0 {
            thread.likes -= 1
        }
    }

    func checkIfUserLikedThread() async throws {
        let didLike = try await ThreadService.checkIfUserLikedThread(thread)

        if didLike {
            thread.didLike = true
        }
    }
}
