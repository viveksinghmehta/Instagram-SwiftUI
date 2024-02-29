//
//  AddEmailView.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 28/02/24.
//

import SwiftUI

struct AddEmailView: View {
    
    @State private var email: String = ""
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Add your email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            //Textfields
            TextField("Enter your email", text: $email)
                .textInputAutocapitalization(.none)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .padding(.horizontal, 24)
                .padding(.top)
            
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
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {}) {
                    Image(systemName: "chevron.backward")
                        .imageScale(.large)
                        .bold()
                }
            }
        }
    }
}

#Preview {
    AddEmailView()
}
