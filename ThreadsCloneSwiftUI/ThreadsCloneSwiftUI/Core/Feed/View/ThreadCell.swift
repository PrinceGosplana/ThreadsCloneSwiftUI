//
//  ThreadCell.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 16.05.2024.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImage()

                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("max")
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

                    Text("Formula 1 champion")
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
    ThreadCell()
}
