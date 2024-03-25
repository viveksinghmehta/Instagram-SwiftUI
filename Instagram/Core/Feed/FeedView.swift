//
//  FeedView.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 28/01/24.
//

import SwiftUI

struct FeedView: View {
    private let gridItems: [GridItem] = [.init(.flexible())]
    var body: some View {
        NavigationStack {
            // Instagram logo and notifications and messages
            HStack {
            Image("instagram")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 105, height: 28)
                
                Spacer()
                HStack(spacing: 16) {
                    Button(action: {}) {
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFit()
                    }
                    .frame(width: 28, height: 28)
                    
                    Button(action: {}) {
                        Image(systemName: "message")
                            .resizable()
                            .scaledToFit()
                    }
                    .frame(width: 28, height: 28)
                }
            }
            .tint(.primary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            ScrollView {
                
                // Posts
                LazyVGrid(columns: gridItems, content: {
                    ForEach(PostModel.MOCK_POSTS) { post in
                        FeedCell(post: post)
                    }
                })
            }
        }
    }
}

#Preview {
    FeedView()
}
