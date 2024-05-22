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
    }
}
