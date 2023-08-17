//
//  LoginView.swift
//  SwiftUI-App
//
//  Created by Bhushan  Borse on 08/08/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var userName: String = String()
    @State private var userPassword: String = String()
    @State private var isShowingDashboardView = false
    @State private var readyToNavigate: Bool = false
    
    
    var body: some View {
        NavigationStack {
            
            Color.init(CGColor(red: 10, green: 10, blue: 60, alpha: 1))
                .ignoresSafeArea()
                .overlay(
                    VStack(spacing: 20){
                        Text("Welcome back,")
                            .font(.largeTitle)
                            .foregroundStyle(.cyan)
                            .padding()
                        
                        TextField("username or email id", text: $userName)
                            .padding()
                            .font(.headline)
                            .background(Color(hex: "#cbd5e1"))
                            .cornerRadius(9.0)
                        SecureField("Password", text: $userPassword)
                            .padding()
                            .font(.headline)
                            .background(Color(hex: "#cbd5e1"))
                            .cornerRadius(5.0)
                        
                        HStack(){
                            Spacer()
                            NavigationLink("Forgot Password", destination: ForgotPasswordView())
                                .foregroundColor(.cyan)
                                .font(.subheadline)
                        }
                        
                        Button(action: {
                            isShowingDashboardView = true
                        }) {
                            Text(" Login ").font(.headline)
                        }
//                        .disabled(userName.count < 4 )
                        .buttonStyle(.bordered)
                        
                        HStack{
                            Text("Don't have an account?")
                            NavigationLink("SignUp", destination: SignupView())
                                .foregroundColor(.cyan)
                                .font(.headline)
                            
                        }
                    }.padding()
                        .navigationDestination(isPresented: $isShowingDashboardView, destination: {
                            DashboardView()
                        })
                )
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
