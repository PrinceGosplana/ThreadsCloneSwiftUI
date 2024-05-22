//
//  ContentActionButtons.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 22.05.2024.
//

import SwiftUI

struct ContentActionButtons: View {

    @ObservedObject var viewModel: ContentActionButtonsViewModel

    private var didLike: Bool {
        viewModel.thread.didLike ?? false
    }

    init(thread: ThreadModel) {
        self.viewModel = ContentActionButtonsViewModel(thread: thread)
    }

    var body: some View {
        HStack(spacing: 16) {
            Button {
                handleLikeTapped()
            } label: {
                Image(systemName: didLike ? "heart.fill" : "heart")
                    .foregroundStyle(didLike ? .red : .black)

            }

            Button {

            } label: {
                Image(systemName: "bubble.right")
            }

            Button {

            } label: {
                Image(systemName: "arrow.rectanglepath")
            }

            Button {

            } label: {
                Image(systemName: "paperplane")
            }
        }
    }

    private func handleLikeTapped() {
        if didLike {
            viewModel.unlikeThread()
        } else {
            viewModel.likeThread()
        }
    }
}

#Preview {
    ContentActionButtons(thread: ThreadModel.mockThreads[0])
}
