//
//  AuthService.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 18.05.2024.
//

import Foundation

actor AuthService: AuthServiceProtocol {

    static let shared = AuthService()

    private init() {}
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {

        } catch {
            print("Failed to login user with error \(error.localizedDescription)")
        }
    }

    @MainActor
    func createUser(withEmail email: String, password: String, fullName: String, userName: String) async throws {
        do {

        } catch {
            print("Failed to create user with error \(error.localizedDescription)")
        }
    }
}
