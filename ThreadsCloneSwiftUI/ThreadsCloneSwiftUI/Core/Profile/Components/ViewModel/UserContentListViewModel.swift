//
//  UserContentListViewModel.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 22.05.2024.
//

import Foundation

final class UserContentListViewModel: ObservableObject {

    @Published var threads = [ThreadModel]()

    private let user: User

    init(user: User) {
        self.user = user
        Task { await fetchUserThreads() }
    }

    @MainActor
    private func fetchUserThreads() async {
        do {
            var threads = try await ThreadService.fetchUserThreads(uid: user.id)
            for i in 0 ..< threads.count {
                threads[i].user = self.user
            }
            self.threads = threads
        } catch {
            print("Error with fetching user threads \(error)")
        }
    }
}
