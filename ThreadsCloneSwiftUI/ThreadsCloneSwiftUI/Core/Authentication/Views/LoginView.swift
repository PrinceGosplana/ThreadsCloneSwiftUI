//
//  LoginView.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 15.05.2024.
//

import SwiftUI

struct LoginView: View {

    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var authManager: AuthManager

    var body: some View {
        NavigationStack {
            VStack {

                Spacer()

                Image(.threadsAppIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()

                VStack {
                    TextField("Enter your email", text: $email)
                        .modifier(ThreadsTextFieldModifier())

                    SecureField("Enter your pasword", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                }

                NavigationLink {
                    Text("Forgot password?")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }

                Button {
                    Task { await authManager.login(withEmail: "", password: "")}
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }

                Spacer()

                Divider()

                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")

                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(AuthManager(service: MockAuthService()))
}


