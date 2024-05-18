//
//  AuthService.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 18.05.2024.
//

import Foundation

actor AuthService: AuthServiceProtocol {
    
    func login(withEmail email: String, password: String) async throws -> String? {
        UUID().uuidString
    }

    func createUser(withEmail email: String, password: String, fullName: String, userName: String) async throws -> String? {
        UUID().uuidString
    }

    func signOut() async throws {
    }
}
