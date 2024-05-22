//
//  ThreadService.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 20.05.2024.
//

import Foundation

struct ThreadService: ThreadServiceProtocol {

    private static var allThreads = [ThreadModel]()

    static func uploadThread(_ thread: ThreadModel) async throws {
        allThreads.append(thread)
    }

    static func fetchThreads() async throws -> [ThreadModel] {
        if allThreads.isEmpty {
            allThreads.append(contentsOf: ThreadModel.mockThreads)
        }
        return allThreads
    }

    static func fetchUserThreads(uid: String) async throws -> [ThreadModel] {
        allThreads.filter({ $0.id == uid})
    }
}
