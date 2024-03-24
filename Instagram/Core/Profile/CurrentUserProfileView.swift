//
//  CurrentUserProfileView.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 24/03/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        NavigationStack {
            ScrollView {
                // Custom Navigation View
                CurrentProfileTopNavigationView()
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
}

#Preview {
    CurrentUserProfileView()
}

struct CurrentProfileTopNavigationView: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                HStack {
                    Image(systemName: "lock")
                    Text("mr.red.dragon")
                        .font(.title)
                        .fontWeight(.bold)
                        .fontDesign(.rounded)
                    Image(systemName: "chevron.down")
                }
            })
            Spacer()
            HStack(spacing: 8) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "plus.app")
                        .imageScale(.large)
                        .bold()
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .bold()
                })
            }
        }
        .tint(.primary)
        .padding(.horizontal)
    }
}
