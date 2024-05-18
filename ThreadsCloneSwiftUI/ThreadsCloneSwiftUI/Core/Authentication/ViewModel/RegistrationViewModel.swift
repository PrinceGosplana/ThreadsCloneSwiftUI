//
//  RegistrationViewModel.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 18.05.2024.
//

import SwiftUI

final class RegistrationViewModel: ObservableObject {

    @Published var email = ""
    @Published var password = ""
    @Published var fullName = ""
    @Published var userName = ""

    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            fullName: fullName,
            userName: userName
        )
    }
}
