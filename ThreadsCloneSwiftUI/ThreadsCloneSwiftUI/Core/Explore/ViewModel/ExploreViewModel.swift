//
//  ExploreViewModel.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 19.05.2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()

    init() {
        Task { try await fetchUsers() }
    }

    @MainActor
    private func fetchUsers() async throws {
        users = try await UserService.fetchUsers()
    }
}
