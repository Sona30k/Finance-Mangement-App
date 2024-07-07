//
//  GetStartedView.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 05/07/24.
//

import SwiftUI

struct GetStartedView: View {
    @State private var rotateAnimation = false
    @State private var scaleAnimation = false
    
    var body: some View {
        NavigationView {
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
                
                VStack(spacing: 30) {
                    Spacer()
                    
                    Image(systemName: "creditcard.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                        
                        .rotationEffect(.degrees(rotateAnimation ? 360 : 0))
                        .animation(Animation.linear(duration: 5).repeatForever(autoreverses: false), value: rotateAnimation)
                    
                    Text("Welcome to PennyPerfect")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 5)
                    
                    Text("Manage your expenses, plan your budget, track savings and investments, and achieve financial independence with ease.")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .foregroundColor(.gray)
                        .lineSpacing(5)
                    
                    Spacer()
                    
                    NavigationLink(destination: SignUpView()) {
                        Text("Get Started")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 200, height: 50)
                            .background(LinearGradient(gradient: Gradient(colors: [.yellow, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(10)
                            .shadow(color: .yellow.opacity(0.3), radius: 10, x: 0, y: 10)
                            .scaleEffect(scaleAnimation ? 1.1 : 1.0)
                            .animation(Animation.easeInOut(duration: 0.6).repeatForever(autoreverses: true), value: scaleAnimation)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Spacer()
                }
                .padding()
                .navigationBarHidden(true)
            }
        }
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
