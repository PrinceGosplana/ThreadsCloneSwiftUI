//
//  ProfileView.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 16.05.2024.
//

import SwiftUI

enum ProfileMode {
    case edit, follow
}

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    let profileMode: ProfileMode

    private var currentUser: User? {
        viewModel.currentUser
    }

    var body: some View {
        ScrollView {
            // bio and stats
            VStack(spacing: 20) {

                ProfileHeader(user: currentUser)

                Button {

                } label: {
                    Text(profileMode == .edit ? "Edit Profile" : "Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(profileMode == .edit ? .black : .white)
                        .frame(width: 352, height: 32)
                        .background(profileMode == .edit ? .white : .black)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(.systemGray4), lineWidth: 1)
                        }
                }

                // user content list view
                UserContentList()
            }
        }
        
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal)
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ProfileView(profileMode: .follow)
}
