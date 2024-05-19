//
//  MockAuthService.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 18.05.2024.
//

import Foundation

actor MockAuthService: AuthServiceProtocol {
    
    private var currentUser: User {
        User.mockUsers[0]
    }

    func login(withEmail email: String, password: String) async throws -> String? {
        currentUser.id
    }
    
    func createUser(withEmail email: String, password: String, fullName: String, userName: String) async throws -> String? {
        currentUser.id
    }

    func signOut() async throws {}
}
