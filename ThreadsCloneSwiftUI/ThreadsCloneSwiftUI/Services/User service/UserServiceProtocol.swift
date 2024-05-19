//
//  UserServiceProtocol.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 19.05.2024.
//

import Foundation

protocol UserServiceProtocol: AnyObject {
    func fetchCurrentUser() async throws -> User?
}
