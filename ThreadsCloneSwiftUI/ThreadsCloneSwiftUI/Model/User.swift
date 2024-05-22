//
//  User.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 18.05.2024.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullName: String
    let userName: String
    let email: String
    var profileImageUrl: String?
    var bio: String?
}

extension User {
    static let mockUsers: [User] = [
        .init(id: "BC0B7A87-B914-47AA-A4A5-E37294CF236E", fullName: "Graham Nou", userName: "Kitten", email: "kitten@test.com", profileImageUrl: "lewis-hamilton", bio: "Am I a cat?"),
        .init(id: "BC0B7A87-B914-47AA-A4A5-E37294CF25Y5", fullName: "Mark Zakes", userName: "Gondor", email: "gondor@test.com", profileImageUrl: "batman", bio: "A knight"),
        .init(id: "BC0B7A87-B914-47AA-A4A5-E37294CF2Q1W", fullName: "Marlando Poor", userName: "Rohan", email: "rohan@test.com", profileImageUrl: "black-panther", bio: "La way kiki"),
        .init(id: "BC0B7A87-B914-47AA-A4A5-E37294CF2P44", fullName: "Adelaida Markez", userName: "Pensilvania", email: "pensilvania@test.com", profileImageUrl: "megan-fox", bio: "Beautiful life"),
        .init(id: "BC0B7A87-B914-47AA-A4A5-E37294CF2FF9", fullName: "Amber Rock", userName: "Rock-and-roll", email: "rock@test.com", profileImageUrl: "kelly", bio: "Happy nation"),
    ]
}
