//
//  ContentViewModel.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 18.05.2024.
//

import Foundation
import Combine

final class ContentViewModel: ObservableObject {
    @MainActor @Published var userSession: String?

    init() {
        Task { await setupSubscribers() }
    }

    private func setupSubscribers() async  {
        let session = await AuthService.shared.userSession
        await MainActor.run {
            userSession = session
        }
    }
}
