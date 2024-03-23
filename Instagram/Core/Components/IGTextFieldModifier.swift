//
//  IGTextFieldModifier.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 29/02/24.
//
import SwiftUI
import Foundation

struct IGTextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .padding(.horizontal, 24)
    }
    
}
