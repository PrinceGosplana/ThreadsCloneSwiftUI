//
//  ThreadServiceProtocol.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 20.05.2024.
//

import Foundation

protocol ThreadServiceProtocol {
    static func uploadThread(_ thread: ThreadModel) async throws
    static func fetchThreads() async throws -> [ThreadModel]
}
