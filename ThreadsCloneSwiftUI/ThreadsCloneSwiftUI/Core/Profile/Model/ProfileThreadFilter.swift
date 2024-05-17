//
//  ProfileThreadFilter.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 17.05.2024.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads, replies

    var title: String {
        switch self {
        case .threads: "Threads"
        case .replies: "Replies"
        }
    }

    var id: Int { rawValue }
}
