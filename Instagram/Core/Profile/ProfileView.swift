//
//  ProfileView.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 27/01/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    let user: UserModel
    
    var body: some View {
            ScrollView {
                // Custom Navigation View
                ProfileTopNavigationView(user: user)
                // Header
                VStack {
                    // Pic and stats
                    HStack {
                        WebImage(url: URL(string: user.profileImageURL ?? ""))
                            .onSuccess()
                            .resizable()
                            .indicator(.activity)
                            .transition(.fade(duration: 0.5))
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
                        Text(user.fullName ?? "")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .fontDesign(.rounded)
                        Text(user.bio ?? "")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .fontDesign(.rounded)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.bottom, 12)
                    
                    // Edit Button and share Button
                    HStack {
                        Button(action: {}, label: {
                            Text("Edit Profile")
                                .modifier(ProfileButtonModifier())
                        })
                        Button(action: {}, label: {
                            Text("Share Profile")
                                .modifier(ProfileButtonModifier())
                        })
                        Button(action: {}) {
                            Image(systemName: "person.crop.circle.badge.plus")
                        }
                        .tint(.primary)
                        .frame(width: 36, height: 36)
                        .background(Color.secondary.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    }
                    .padding(.horizontal)
                    Divider()
                }
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(1 ... 48, id:  \.self) {
                        ProfileImageView(imageNumber: $0)
                    }
                }
            }
    }
}

#Preview {
    ProfileView(user: UserModel.MOCK_USERS[0])
}

struct ProfileTopNavigationView: View {
    
    @Environment(\ .dismiss) var dismiss
    let user: UserModel
    
    var body: some View {
        HStack {
            // Back Button
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .imageScale(.large)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
            })
            
            Spacer()
            
            // Notification settings
            HStack(spacing: 12) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bell")
                        .imageScale(.large)
                })
                
                // Extra settings
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "ellipsis")
                        .imageScale(.large)
                        .bold()
                })
            }
        }
        .overlay(content: {
            HStack {
                Text(user.userName)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .fontDesign(.rounded)
                if user.isVerified {
                    Image(systemName: "checkmark.seal.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18)
                        .foregroundStyle(.blue)
                }
            }
        })
        .tint(.primary)
        .padding(.horizontal)
    }
}
