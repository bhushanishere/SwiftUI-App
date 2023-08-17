//
//  SignupView.swift
//  SwiftUI-App
//
//  Created by Bhushan  Borse on 09/08/23.
//

import SwiftUI

struct SignupView: View {
    @State var name: String = String()
    @State var email: String = String()
    @State var phoneNumber: String = String()
    @State var password: String = String()
    
    var body: some View {
       
        NavigationView {
            VStack (spacing: 10){
                TextField("Name", text: $name)
                    .padding()
                    .font(.headline)
                    .background(Color(hex: "#cbd5e1"))
                    .cornerRadius(9.0)
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .padding()
                    .font(.headline)
                    .background(Color(hex: "#cbd5e1"))
                    .cornerRadius(9.0)
                TextField("Phone Number", text: $phoneNumber)
                    .keyboardType(.numberPad)
                    .padding()
                    .font(.headline)
                    .background(Color(hex: "#cbd5e1"))
                    .cornerRadius(9.0)
                SecureField("Password", text: $password)
                    .padding()
                    .font(.headline)
                    .background(Color(hex: "#cbd5e1"))
                    .cornerRadius(5.0)
                
                Button {
                    print("Submit Button Pressed")
                } label: {
                    Text("Submit")
                        .font(.headline)
                        .buttonStyle(.bordered)
                }
                .padding()
                .buttonStyle(.bordered)
                
                
            }
            .padding(30)
            
            .navigationTitle("Sign Up")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
