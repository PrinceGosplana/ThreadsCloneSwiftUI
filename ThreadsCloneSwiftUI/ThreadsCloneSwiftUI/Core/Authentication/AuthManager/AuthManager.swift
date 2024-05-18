//
//  AuthManager.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 18.05.2024.
//

import Foundation

final class AuthManager: ObservableObject {

    @Published var userSessionId: String?

    private let service: AuthServiceProtocol

    init(service: AuthServiceProtocol) {
        self.service = service
    }

    @MainActor
    func login(withEmail email: String, password: String) async {
        do {
            userSessionId = try await service.login(
                withEmail: email,
                password: password
            )
        } catch {
            print("Error with login \(error.localizedDescription)")
        }
    }

    @MainActor
    func createUser(withEmail email: String, password: String, fullName: String, userName: String) async {
        do {
            userSessionId = try await service.createUser(
                withEmail: email,
                password: password,
                fullName: fullName,
                userName: userName
            )
        } catch {
            print("Error with user createUser \(error.localizedDescription)")
        }
    }

    @MainActor
    func signout() async {
        do {
            try await service.signOut()
            userSessionId = nil
        } catch {
            print("Sign out error \(error.localizedDescription)")
        }
    }
}
