//
//  AuthView.swift
//  Decoded
//
//  Created by Anshuman Sharma on 29/06/26.
//

import SwiftUI

struct AuthView: View {
    // MARK: -  Properties
    @StateObject private var viewModel = AuthViewModel()
    @FocusState private var focusedField: Field?
    
    enum Field: Hashable {
        case email, password, confirmPassword
    }
    
    // MARK: -  Body
    var body: some View {
        ZStack {
            AppConstants.background
                       .ignoresSafeArea()
            
            // MARK: -  ScrollView
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20){
                    // MARK: -  Header
                    VStack(spacing: 6) {
                        Image(systemName: "newspaper.fill")
                            .font(.poppins(.medium, size: AppConstants.Spacing.lg44))
                            .foregroundStyle(AppConstants.accent)
                        Text("Decoded")
                            .font(.poppins(.bold, size: AppConstants.Spacing.md36))
                            .foregroundStyle(AppConstants.textPrimary)
                        Text("Sign In")
                            .font(.poppins(.regular, size: AppConstants.Spacing.sm16))
                            .foregroundStyle(AppConstants.textPrimary)
                    }
                    .padding(.top, 60)

                    // MARK: -  FormView
                    VStack(spacing: 16) {
                        
                        // EmailTextField
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Email")
                                .font(.poppins(.medium, size: AppConstants.Spacing.sm14))
                                .foregroundStyle(AppConstants.textPrimary)
                            
                            TextField("Enter youe Email", text: $viewModel.email)
                                .textFieldStyle(DecodedTextFieldStyle())
                                .textContentType(.emailAddress)
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                                .focused($focusedField, equals: .email)
                        }
                        
                        // PasswordField
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Password")
                                .font(.poppins(.medium, size: AppConstants.Spacing.sm14))
                                .foregroundStyle(AppConstants.textPrimary)
                          
                            SecureField("Enter your password", text: $viewModel.password)
                                .textFieldStyle(DecodedTextFieldStyle())
                                .focused($focusedField, equals: .password)
                                .foregroundStyle(AppConstants.textPrimary)
                            
                            // Confirm Password (sign up only)
                            if !viewModel.isLoginMode {
                                VStack(alignment: .leading, spacing: 6) {
                                    Text("Confirm Password")
                                        .font(.poppins(.medium, size: AppConstants.Spacing.sm14))
                                        .foregroundStyle(AppConstants.textPrimary)
                                    
                                    SecureField("Re-enter password", text: $viewModel.confirmPassword)
                                        .textFieldStyle(DecodedTextFieldStyle())
                                        .focused($focusedField, equals: .confirmPassword)
                                }
                                .transition(.opacity.combined(with: .move(edge: .top)))
                            }
                            
                        }
                        
                        // Error message
                        if let error = viewModel.errorMessage {
                            Text(error)
                                .font(.poppins(.medium, size: AppConstants.Spacing.sm14))
                                .foregroundStyle(.red)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, AppConstants.Spacing.md24)
                                .transition(.opacity)
                        }
                        
                        // MARK: -  SignIn Button
                        Button {
                            focusedField = nil
                            withAnimation { viewModel.signIn() }
                        } label: {
                            Text("Sign In")
                                .font(.poppins(.semibold, size: AppConstants.Spacing.sm14))
                                .foregroundStyle(AppConstants.onColor)
                                .frame(maxWidth: .infinity)
                                .frame(height: 52)
                                .background(AppConstants.buttonPrimary)
                                .clipShape(RoundedRectangle(cornerRadius: AppConstants.Spacing.sm10))
                        }
                        .padding(.top, AppConstants.Spacing.md24)

                        
                    }
                    .padding(.horizontal, AppConstants.Spacing.md24)
                }
            }
            
        }
    }
    
    // MARK: - Custom TextFieldStyle
    
    struct DecodedTextFieldStyle: TextFieldStyle {
        func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .padding(.horizontal, AppConstants.Spacing.sm14)
                .padding(.vertical, AppConstants.Spacing.sm14)
                .foregroundColor(AppConstants.textPrimary)
                .background(
                    RoundedRectangle(cornerRadius: AppConstants.Spacing.sm12)
                        .fill(AppConstants.surface)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: AppConstants.Spacing.sm12)
                        .stroke(AppConstants.textPrimary.opacity(0.2), lineWidth: 1)
                )
                .font(.poppins(.regular, size: AppConstants.Spacing.sm14))
        }
    }
    
    
}

#Preview {
    AuthView()
}
// MARK: -  End

