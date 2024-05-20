//
//  ExploreCell.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 17.05.2024.
//

import SwiftUI

struct ExploreCell: View {
    let user: User

    var body: some View {
        HStack {
            CircularProfileImage(user: user)

            VStack(alignment: .leading, spacing: 2) {
                Text(user.userName)
                    .fontWeight(.semibold)
                
                Text(user.fullName)
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ExploreCell(user: User.mockUsers[0])
}
