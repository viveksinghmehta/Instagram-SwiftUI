//
//  ProfileButtonModifier.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 24/03/24.
//

import SwiftUI

struct ProfileButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.medium)
            .foregroundStyle(Color(.customText))
            .frame(height: 36)
            .frame(maxWidth: .infinity)
            .background(Color.secondary.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 6))
    }
    
}
