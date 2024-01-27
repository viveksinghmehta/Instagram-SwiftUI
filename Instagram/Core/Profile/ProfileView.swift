//
//  ProfileView.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 27/01/24.
//

import SwiftUI

struct ProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        ScrollView {
            // Header
            VStack {
                // Pic and stats
                HStack {
                   Image("red-dragon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .background(.black)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack {
                        UserStatView(number: 324, stateText: "Posts")
                        UserStatView(number: 123, stateText: "Followers")
                        UserStatView(number: 4532, stateText: "Following")
                    }
                }
                .padding(.horizontal)
                
                // Name and bio
                VStack(alignment: .leading, spacing: 4) {
                   Text("Mr. Red Dragon")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .fontDesign(.rounded)
                    Text("Fire breathing")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .fontDesign(.rounded)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.bottom, 12)
                
                // Edit Button
                HStack {
                    Button(action: {}, label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .fontDesign(.rounded)
                            .foregroundStyle(.black)
                            .frame(height: 36)
                            .frame(maxWidth: .infinity)
                            .background(Color.secondary.opacity(0.5))
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                    })
                    Button(action: {}, label: {
                        Text("Share Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .fontDesign(.rounded)
                            .foregroundStyle(.black)
                            .frame(height: 36)
                            .frame(maxWidth: .infinity)
                            .background(Color.secondary.opacity(0.5))
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                    })
                }
                .padding(.horizontal)
                Divider()
            }
            LazyVGrid(columns: gridItems, spacing: 1) {
                ForEach(1 ... 48, id:  \.self) {
                    ImageView(imageNumber: $0)
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}

struct ImageView: View {
    let imageNumber: Int
    var body: some View {
        AsyncImage(url: URL(string: ImageUrl.getFullImageUrl(number: imageNumber))) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
                    .background(Color.black)
            } else if phase.error != nil {
                // Display a placeholder when loading failed
                ProgressView()
                let _ = print(imageNumber)
            } else {
                // Display a placeholder while loading
                ProgressView()
            }
        }
    }
}
