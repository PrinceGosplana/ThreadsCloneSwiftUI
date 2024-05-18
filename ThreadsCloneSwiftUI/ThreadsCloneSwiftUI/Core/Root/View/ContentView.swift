//
//  ContentView.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 15.05.2024.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var authManager: AuthManager

    var body: some View {
        Group {
            if authManager.userSessionId != nil  {
                ThreadsTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AuthManager(service: MockAuthService()))
}
