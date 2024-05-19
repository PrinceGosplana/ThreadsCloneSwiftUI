//
//  AuthService.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 18.05.2024.
//

import Foundation

actor AuthService: AuthServiceProtocol {
    
    static var shared = AuthService()
    private init() {}
    
    func login(withEmail email: String, password: String) async throws -> String? {
        try await UserService.shared.fetchCurrentUser()?.id
    }

    func createUser(withEmail email: String, password: String, fullName: String, userName: String) async throws -> String? {
        try await UserService.shared.fetchCurrentUser()?.id
    }

    func signOut() async throws {
        await UserService.shared.reset()
    }
}
