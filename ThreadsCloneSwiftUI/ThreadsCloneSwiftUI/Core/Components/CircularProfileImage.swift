//
//  CircularProfileImage.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 17.05.2024.
//

import SwiftUI

struct CircularProfileImage: View {
    var body: some View {
        Image(.lewisHamilton)
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImage()
}
