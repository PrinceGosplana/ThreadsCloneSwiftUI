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
    }

    func unlikeThread() {
        thread.didLike = false
    }
}
