import SwiftUI
import AuthenticationServices

struct SignUpView: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var showError: Bool = false
    @State private var errorMessage: String = ""
    @State private var rotateAnimation = false
    @State private var scaleAnimation = false
    
    var body: some View {
        ZStack {
            // Background Gradient
            LinearGradient(gradient: Gradient(colors: [.black, .gray.opacity(0.8)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            // Decorative Background Shapes
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [.purple.opacity(0.6), .blue.opacity(0.6)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 300, height: 300)
                .blur(radius: 100)
                .offset(x: -150, y: -200)
                .rotationEffect(.degrees(rotateAnimation ? 360 : 0))
                .scaleEffect(scaleAnimation ? 1.1 : 1.0)
                .animation(Animation.linear(duration: 10).repeatForever(autoreverses: false), value: rotateAnimation)
                .animation(Animation.easeInOut(duration: 6).repeatForever(autoreverses: true), value: scaleAnimation)
                .onAppear {
                    self.rotateAnimation.toggle()
                    self.scaleAnimation.toggle()
                }
            
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [.blue.opacity(0.5), .purple.opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 200, height: 200)
                .blur(radius: 80)
                .offset(x: 150, y: 200)
                .rotationEffect(.degrees(rotateAnimation ? -360 : 0))
                .scaleEffect(scaleAnimation ? 1.1 : 1.0)
                .animation(Animation.linear(duration: 10).repeatForever(autoreverses: false), value: rotateAnimation)
                .animation(Animation.easeInOut(duration: 6).repeatForever(autoreverses: true), value: scaleAnimation)
            
            VStack {
                Text("Sign Up")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                    .foregroundColor(.white)
                
                Text("Create your account")
                    .padding(.bottom, 20)
                    .foregroundColor(.white)
                
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.black)
                    .cornerRadius(5.0)
                    .padding(.bottom, 10)
                
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .textContentType(.emailAddress)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.black)
                    .cornerRadius(5.0)
                    .padding(.bottom, 10)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.white)
                    .cornerRadius(5.0)
                    .padding(.bottom, 10)
                
                SecureField("Confirm Password", text: $confirmPassword)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.white)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                if showError {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .padding(.bottom, 10)
                }
                
                // Submit Button
                Button(action: {
                    // Handle Submit Action
                }) {
                    Text("Submit")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(15.0)
                        .shadow(color: .purple.opacity(0.3), radius: 10, x: 0, y: 10)
                }
                
                Spacer().frame(height: 20)
                
                // Logos
                HStack(spacing: 20) {
                    // Apple Sign Up Button
                    Button(action: {
                        // Handle Apple Sign-Up Action
                    }) {
                        Image("apple")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 60, height: 60)
                            .background(LinearGradient(gradient: Gradient(colors: [.yellow, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(15)
                            .shadow(color: .yellow.opacity(0.3), radius: 10, x: 0, y: 10)
                    }
                    
                    // Google Sign Up Button
                    Button(action: {
                        // Handle Google Sign-Up Action
                    }) {
                        Image("google")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 60, height: 60)
                            .background(LinearGradient(gradient: Gradient(colors: [.yellow, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(15)
                            .shadow(color: .yellow.opacity(0.3), radius: 10, x: 0, y: 10)
                    }
                    
                    // Email Sign Up Button
                    Button(action: {
                        // Handle Email Sign-Up Action
                    }) {
                        Image(systemName: "envelope")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 60, height: 60)
                            .background(LinearGradient(gradient: Gradient(colors: [.yellow, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(15)
                            .shadow(color: .yellow.opacity(0.3), radius: 10, x: 0, y: 10)
                    }
                }
                .padding(.top, 20)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
