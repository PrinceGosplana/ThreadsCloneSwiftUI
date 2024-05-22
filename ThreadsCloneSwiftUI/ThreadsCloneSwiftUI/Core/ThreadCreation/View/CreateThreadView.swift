//
//  CreateThreadView.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 16.05.2024.
//

import SwiftUI

struct CreateThreadView: View {
    @StateObject var viewModel = CreateThreadViewModel()
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    @State var user: User?

    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    CircularProfileImage(user: user, size: .small)

                    VStack(alignment: .leading, spacing: 4) {
                        Text(user?.userName ?? "")
                            .fontWeight(.semibold)

                        TextField("Start a thread...", text: $caption, axis: .vertical)
                    }
                    .font(.footnote)

                    Spacer()

                    if !caption.isEmpty {
                        Button {
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.gray)
                        }
                    }

                }
                Spacer()
            }
            .task {
                do {
                    let user = try await UserService.shared.fetchCurrentUser()
                    await MainActor.run {
                        self.user = user
                    }
                } catch {
                    print("Error with setup user \(error.localizedDescription)")
                }
            }
            .padding()
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Post") {
                        Task { try await viewModel.uploadThread(caption: caption) }
                        dismiss()
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    CreateThreadView()
}
