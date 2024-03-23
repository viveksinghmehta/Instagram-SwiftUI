//
//  CompleteSignUpView.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 29/02/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    var body: some View {
        VStack(spacing: 12) {
            Spacer()
            Text("Welcome to Instagram, viveksinghmehta")
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 36)
                .padding(.top)
            
            Text("Click below to complete registration and start using Instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button(action: {
                print("Complete Sign up")
            }) {
                Text("Complete Sign Up")
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
                Button(action: {
//                    dismiss()
                }) {
                    Image(systemName: "chevron.backward")
                        .imageScale(.large)
                        .bold()
                }
            }
        }
    }
}

#Preview {
    CompleteSignUpView()
}
