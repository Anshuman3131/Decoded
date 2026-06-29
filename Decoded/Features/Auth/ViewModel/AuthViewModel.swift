//
//  AuthViewModel.swift
//  Decoded
//
//  Created by Anshuman Sharma on 29/06/26.
//

import Foundation
import SwiftUI
import Combine

@MainActor
final class AuthViewModel: ObservableObject {
    // MARK: - PROPERTIES
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    @Published var errorMessage: String?
    @Published var isLoginMode = true

    // MARK: - Actions

    /// Called when the user taps Sign In. Validates first; only proceeds if valid.
    func signIn() {
        guard validate() else { return }
        // TODO: call the Supabase AuthService here (next phase).
        // For now, valid input just clears the error.
    }

    // MARK: - Validation

    /// Returns true if inputs are valid. On failure sets `errorMessage` and returns false.
    /// On success clears `errorMessage`.
    private func validate() -> Bool {
        if email.isEmpty && password.isEmpty {
            errorMessage = "Please enter your email and password."
            return false
        }
        if email.isEmpty || !email.contains("@") || !email.contains(".") {
            errorMessage = "Please enter a valid email address."
            return false
        }
        if password.count < 6 {
            errorMessage = "Password must be at least 6 characters."
            return false
        }
        if !isLoginMode && password != confirmPassword {
            errorMessage = "Passwords don't match."
            return false
        }
        errorMessage = nil   // all good — clear any previous error
        return true
    }
}
