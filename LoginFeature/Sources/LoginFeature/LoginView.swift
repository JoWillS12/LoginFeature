// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(macOS 11.0, *)
public struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    public var onLoginSuccess: () -> Void

    public init(onLoginSuccess: @escaping () -> Void) {
        self.onLoginSuccess = onLoginSuccess
    }

    public var body: some View {
        VStack(spacing: 20) {
            Text("🔐 Login")
                .font(.largeTitle)
                .bold()

            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            Button("Login") {
                // simulasi login berhasil
                onLoginSuccess()
            }
            .buttonStyle(.borderedProminent)
            .disabled(username.isEmpty || password.isEmpty)
        }
        .padding()
    }
}
