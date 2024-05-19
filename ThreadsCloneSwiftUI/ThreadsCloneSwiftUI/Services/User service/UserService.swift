//
//  UserService.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 19.05.2024.
//

import Foundation

actor UserService: UserServiceProtocol {

    static let shared = UserService()

    func fetchCurrentUser() async throws -> User? {
         User.mockUser
    }
}
