//
//  FeedViewModel.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 22.05.2024.
//

import Foundation

final class FeedViewModel: ObservableObject {
    @Published var threads = [ThreadModel]()

    init() {
        Task { try await fetchThreads() }
    }

    @MainActor
    private func fetchThreads() async throws {
        threads = try await ThreadService.fetchThreads()
        try await fetchUserDataForThreads()
    }

    private func fetchUserDataForThreads() async throws {
        for i in 0 ..< threads.count {
            let thread = threads[i]
            let ownerUid = thread.ownerUid
            
            let threadUser = try await UserService.fetchUser(withUid: ownerUid)

            await MainActor.run {
                threads[i].user = threadUser
            }
        }
    }
}
