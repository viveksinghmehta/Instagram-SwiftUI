//
//  FeedCell.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 28/01/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct FeedCell: View {
    
    let post: PostModel
    
    var body: some View {
        VStack(spacing: 10) {
            
            // Profile image and username
            HStack(spacing: 10) {
                WebImage(url: URL(string: ImageUrl.getRandomAvatar()))
                    .resizable()
                    .indicator(.activity)
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .background(.indigo)
                    .clipShape(Circle())
                
                Text("mr.demo")
                    .font(.headline)
                    .fontWeight(.medium)
                    .fontDesign(.rounded)
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundStyle(.blue)
                    
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "ellipsis")
                        .rotationEffect(.degrees(90))
                        .tint(.primary)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            // Post image
            WebImage(url: URL(string: ImageUrl.getRandomImage()))
                .resizable()
                .indicator(.activity)
                .scaledToFit()
                .background(.blue)
            // Like button, share and comment
            HStack {
                HStack(spacing: 12) {
                    Button(action: {}) {
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFit()
                    }
                    .frame(width: 26, height: 26)
                    
                    Button(action: {}) {
                        Image(systemName: "message")
                            .resizable()
                            .scaledToFit()
                    }
                    .frame(width: 26, height: 26)
                    
                    Button(action: {}) {
                        Image(systemName: "paperplane")
                            .resizable()
                            .scaledToFit()
                    }
                    .frame(width: 26, height: 26)
                }
                
                Spacer()
                Button(action: {}) {
                    Image(systemName: "bookmark")
                        .resizable()
                        .scaledToFit()
                }
                .frame(width: 26, height: 26)
            }
            .tint(.primary)
            .padding(.horizontal)
            // Like label
            Text("78 Likes")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            // Caption Label
        }
        .padding(.vertical)
    }
}

#Preview {
    FeedCell(post: PostModel.MOCK_POSTS[3])
}
