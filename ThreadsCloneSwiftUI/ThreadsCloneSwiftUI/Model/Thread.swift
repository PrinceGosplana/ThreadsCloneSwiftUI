//
//  Thread.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 20.05.2024.
//

import Foundation

struct Thread: Identifiable {
    private var threadId: String?
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
