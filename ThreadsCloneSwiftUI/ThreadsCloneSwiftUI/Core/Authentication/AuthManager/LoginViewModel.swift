//
//  LoginViewModel.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 18.05.2024.
//

import SwiftUI

final class LoginViewModel: ObservableObject {

    private let authManager: AuthManager

    init(authManager: AuthManager) {
        self.authManager = authManager
    }

    func login(withEmail email: String, password: String) async {
        await authManager.login(withEmail: email, password: password)
    }
}
