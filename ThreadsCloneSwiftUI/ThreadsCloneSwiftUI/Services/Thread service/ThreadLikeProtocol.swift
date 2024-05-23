//
//  ThreadLikeProtocol.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 23.05.2024.
//

import Foundation

protocol ThreadLikeProtocol {
    static func likeThread(_ thread: ThreadModel) async throws
    static func unlikeThread(_ thread: ThreadModel) async throws
    static func checkIfUserLikedThread(_ thread: ThreadModel) async throws -> Bool
}
