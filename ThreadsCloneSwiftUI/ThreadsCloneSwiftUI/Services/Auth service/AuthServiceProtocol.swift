//
//  AuthServiceProtocol.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 18.05.2024.
//

import Foundation

protocol AuthServiceProtocol: AnyObject {
    func login(withEmail email: String, password: String) async throws -> String?
    func createUser(withEmail email: String, password: String, fullName: String, userName: String) async throws -> String?
    func signOut() async throws
}
