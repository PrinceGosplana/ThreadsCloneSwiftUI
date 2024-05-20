//
//  CurrentUserProfile.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 19.05.2024.
//

import SwiftUI

struct CurrentUserProfile: View {

    @EnvironmentObject var authManager: AuthManager
    
    var body: some View {
        NavigationStack {
            ProfileView(profileMode: .edit)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            Task { await authManager.signout() }
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                }
        }
    }
}

#Preview {
    CurrentUserProfile()
        .environmentObject(AuthManager(service: MockAuthService()))
}
