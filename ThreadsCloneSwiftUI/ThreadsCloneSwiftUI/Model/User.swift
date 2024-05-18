//
//  User.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 18.05.2024.
//

import Foundation

struct User: Identifiable {
    let id: String
    let fullName: String
    let userName: String
    let email: String
    var profileImageUrl: String?
    var bio: String?
}

extension User {
    static let mockUser = User(id: "BC0B7A87-B914-47AA-A4A5-E37294CF236E", fullName: "Graham Nou", userName: "Kitten", email: "kitten@test.com", profileImageUrl: "lewis-hamilton", bio: "Am I a cat?")
}
