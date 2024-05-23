//
//  MockThreadService.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 20.05.2024.
//

import Foundation

struct MockThreadService: ThreadServiceProtocol {

    static func uploadThread(_ thread: ThreadModel) async throws {

    }

    static func fetchThreads() async throws -> [ThreadModel] {
        ThreadModel.mockThreads
    }

    static func fetchUserThreads(uid: String) async throws -> [ThreadModel] {
        var threads = ThreadModel.mockThreads
        threads.append(ThreadModel(ownerUid: User.mockUsers[1].id, caption: "New post is here", timestamp: Date(), likes: 0, replyCount: 0))
        return threads
    }
}

extension MockThreadService: ThreadLikeProtocol {

    static var isUserLikedThread = false

    static func likeThread(_ thread: ThreadModel) async throws { }
    
    static func unlikeThread(_ thread: ThreadModel) async throws { }
    
    static func checkIfUserLikedThread(_ thread: ThreadModel) async throws -> Bool {
        isUserLikedThread
    }
}
