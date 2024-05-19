//
//  UserService.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 19.05.2024.
//

import Foundation

actor UserService: UserServiceProtocol {

    static let shared = UserService()

    private var currentUser: User {
        User.mockUsers[0]
    }

    func fetchCurrentUser() async throws -> User? {
         currentUser
    }

    static func fetchUsers() async throws -> [User] {
        User.mockUsers
    }
    
    func reset() {
        // set current user nil
    }
}
