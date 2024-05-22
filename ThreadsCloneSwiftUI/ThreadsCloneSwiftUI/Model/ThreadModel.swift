//
//  ThreadModel.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 20.05.2024.
//

import Foundation

struct ThreadModel: Identifiable {
    var threadId: String?
    let ownerUid: String
    let caption: String
    let timestamp: Date
    var likes: Int
    var imageUrl: String?
    var replyCount: Int

    var user: User?
    var didLike: Bool? = false

    var id: String {
        threadId ?? UUID().uuidString
    }
}


extension ThreadModel {
    static let mockThreads: [ThreadModel] = [
        .init(ownerUid: User.mockUsers[0].id, caption: "Hello!", timestamp: Date(), likes: 0, replyCount: 0),
        .init(ownerUid: User.mockUsers[1].id, caption: "It's me!", timestamp: Date(), likes: 0, replyCount: 0),
        .init(ownerUid: User.mockUsers[0].id, caption: "Viva la loca", timestamp: Date(), likes: 0, replyCount: 0),
        .init(ownerUid: User.mockUsers[2].id, caption: "Hooray, I'm a rich", timestamp: Date(), likes: 0, replyCount: 0),
        .init(ownerUid: User.mockUsers[3].id, caption: "Wanda loves BoJack", timestamp: Date(), likes: 0, replyCount: 0),
        .init(ownerUid: User.mockUsers[4].id, caption: "Kavabunga", timestamp: Date(), likes: 0, replyCount: 0)
    ]
}
