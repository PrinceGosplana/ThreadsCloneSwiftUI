//
//  MockUserService.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 19.05.2024.
//

import Foundation

actor MockUserService: UserServiceProtocol {

    static let shared = MockUserService()

    func fetchCurrentUser() async throws -> User? {
        User.mockUser
    }
}
