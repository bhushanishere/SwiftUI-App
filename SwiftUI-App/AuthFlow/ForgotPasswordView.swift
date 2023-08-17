//
//  ForgotPasswordView.swift
//  SwiftUI-App
//
//  Created by Bhushan  Borse on 10/08/23.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @State private var emailId: String = String()
    @State private var showAlert: Bool = false
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 10) {
                Text("Mail Address Here")
                    .font(.title)
                    .foregroundColor(.cyan)
                Text("Enter the email account associated with your account.")
                    .font(.title2)
                    .padding()
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                
                TextField("Email Id", text: $emailId)
                    .padding()
                    .font(.headline)
                    .keyboardType(.emailAddress)
                    .background(Color(hex: "#cbd5e1"))
                    .cornerRadius(9.0)
                
                Button {
                    print("Return to login page...")
                    self.showAlert = true
                } label: {
                    Text("Submit")
                }
                .buttonStyle(.bordered)
                .padding()
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Alert"), message: Text("Please check your email to regenerate the password"), dismissButton: .default(Text("Got it!")))
                }
            }
            .padding(30)
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
