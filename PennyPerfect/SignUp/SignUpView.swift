//
//  SignUpView.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 05/07/24.
//

import SwiftUI
import AuthenticationServices

struct SignUpView: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var showError: Bool = false
    @State private var errorMessage: String = ""
    
    var body: some View {
        VStack {
            Text("Sign Up")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            TextField("Username", text: $username)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5.0)
                .padding(.bottom, 10)
            
            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .textContentType(.emailAddress)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5.0)
                .padding(.bottom, 10)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5.0)
                .padding(.bottom, 10)
            
            SecureField("Confirm Password", text: $confirmPassword)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            if showError {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding(.bottom, 10)
            }
            
            Button(action: {
                signUp()
            }) {
                Text("Sign Up with Email")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color.blue)
                    .cornerRadius(15.0)
            }
            
            Spacer().frame(height: 20)
            
            // Google Sign Up Button (Simplified)
            Button(action: {
                signUpWithGoogle()
            }) {
                HStack {
                    Image(systemName: "globe")
                    Text("Sign Up with Google")
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.red)
                .cornerRadius(15.0)
            }
            
            Spacer().frame(height: 20)
            
            // Apple Sign Up Button
            SignInWithAppleButton(
                .signUp,
                onRequest: { request in
                    // Configure the request here
                },
                onCompletion: { result in
                    // Handle the result here
                    switch result {
                    case .success(let authorization):
                        handleAuthorization(authorization)
                    case .failure(let error):
                        showError(message: error.localizedDescription)
                    }
                }
            )
            .signInWithAppleButtonStyle(.black)
            .frame(width: 220, height: 60)
            .cornerRadius(15.0)
        }
        .padding()
    }
    
    func signUp() {
        // Example validation and sign-up logic
        guard !username.isEmpty, !email.isEmpty, !password.isEmpty, !confirmPassword.isEmpty else {
            showError(message: "All fields are required.")
            return
        }
        
        guard password == confirmPassword else {
            showError(message: "Passwords do not match.")
            return
        }
        
        // Add your sign-up logic here (e.g., API call to register the user)
        // For now, we'll just print to console
        print("User signed up with username: \(username), email: \(email)")
    }
    
    func signUpWithGoogle() {
        // Implement Google Sign-Up Logic
        print("Sign Up with Google")
    }
    
    func handleAuthorization(_ authorization: ASAuthorization) {
        // Handle Apple ID authorization
        print("Apple ID authorization successful")
    }
    
    func showError(message: String) {
        errorMessage = message
        showError = true
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
