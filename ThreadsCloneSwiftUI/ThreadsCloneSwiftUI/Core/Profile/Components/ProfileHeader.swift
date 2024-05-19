//
//  ProfileHeader.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 19.05.2024.
//

import SwiftUI

struct ProfileHeader: View {

    var user: User?

    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 12) {
                // fullname and username
                VStack(alignment: .leading, spacing: 4) {
                    Text(user?.fullName ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)

                    Text(user?.userName ?? "")
                        .font(.subheadline)
                }

                if let bio = user?.bio {
                    Text(bio)
                        .font(.footnote)
                }

                Text("2 followers")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }

            Spacer()

            CircularProfileImage()
        }

    }
}

#Preview {
    ProfileHeader(user: User.mockUsers[0])
}
