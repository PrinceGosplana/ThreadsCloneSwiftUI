//
//  RegistrationView.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 15.05.2024.
//

import SwiftUI

struct RegistrationView: View {

    @State var email = ""
    @State var password = ""
    @State var fullName = ""
    @State var userName = ""
    @EnvironmentObject var authManager: AuthManager
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
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

                TextField("Enter your full name", text: $fullName)
                    .modifier(ThreadsTextFieldModifier())

                TextField("Enter your user name", text: $userName)
                    .modifier(ThreadsTextFieldModifier())
            }
            .textInputAutocapitalization(.never)

            Button {
                Task {
                    await authManager.createUser(
                        withEmail: email,
                        password: password,
                        fullName: fullName,
                        userName: userName)
                }
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding(.vertical)

            Spacer()

            Divider()

            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")

                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    RegistrationView()
        .environmentObject(AuthManager(service: MockAuthService()))
}
