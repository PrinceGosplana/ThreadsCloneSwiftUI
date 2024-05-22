//
//  ThreadCell.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 16.05.2024.
//

import SwiftUI

struct ThreadCell: View {

    let thread: ThreadModel

    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImage(user: thread.user, size: .small)

                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(thread.user?.userName ?? "")
                            .font(.footnote)
                        .fontWeight(.semibold)

                        Spacer()

                        Text("18m")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))

                        Button {

                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                    }

                    Text(thread.caption)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)

                    HStack(spacing: 16) {
                        Button {

                        } label: {
                            Image(systemName: "heart")
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
                    .foregroundStyle(.black)
                    .padding(.vertical, 8)
                }
            }

            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadCell(thread: ThreadModel.mockThreads[0])
}
