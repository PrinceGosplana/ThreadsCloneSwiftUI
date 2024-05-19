//
//  ProfileViewModel.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 19.05.2024.
//

import Foundation

final class ProfileViewModel: ObservableObject {
    
    @Published var currentUser: User?

    init() {
        Task { await setupSubscribers() }
    }

    private func setupSubscribers() async {
        do {
            let user = try await UserService.shared.fetchCurrentUser()
            await MainActor.run {
                currentUser = user
            }
        } catch {
            print("Error with setup user \(error.localizedDescription)")
        }
    }
}
