//
//  LoginView.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 28/02/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                // Instagram logo
                Image("instagram")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                //Textfields
                TextField("Enter your email", text: $email)
                    .textInputAutocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(IGTextFieldModifier())
                    .padding(.top, 5)
                
                Button(action: {
                    print("Forget password")
                }) {
                    Text("Forget Password ?")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .padding(.top)
                        .padding(.trailing, 24)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button(action: {
                    print("Login")
                }) {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(width: UIScreen.main.bounds.width * 0.9, height: 45)
                        .background(Color(.systemBlue))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.top)
                }
                
                // OR divider
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                    Text("OR")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .padding(.top)
                .foregroundStyle(.gray)
                
                //facebook logo
                HStack {
                    Button(action: {}) {
                        Text("Continue with Facbook")
                            .font(.headline)
                    }
                    .padding()
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account ?")
                            .font(.headline)
                        
                        Text("Sign Up")
                            .font(.headline)
                            .fontWeight(.bold)
                    }
                    .padding(.vertical, 16)
                }
            }

        }
    }
}

#Preview {
    LoginView()
}
