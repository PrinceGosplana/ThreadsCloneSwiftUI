//
//  MockUserService.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 19.05.2024.
//

import Foundation

actor MockUserService: UserServiceProtocol {

    static let shared = MockUserService()

    private var currentUser: User {
        User.mockUsers[0]
    }

    func fetchCurrentUser() async throws -> User? {
        currentUser
    }
}
