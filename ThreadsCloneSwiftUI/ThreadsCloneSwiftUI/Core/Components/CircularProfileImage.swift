//
//  CircularProfileImage.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 17.05.2024.
//

import SwiftUI

struct CircularProfileImage: View {

    var user: User?

    init(user: User?) {
        self.user = user
    }

    var body: some View {
        if let imageUser = user?.profileImageUrl {
            Image(imageUser)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .foregroundStyle(Color(.systemGray4))
        }
    }
}

#Preview {
    CircularProfileImage(user: User.mockUsers[0])
}
