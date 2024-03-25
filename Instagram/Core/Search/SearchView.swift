//
//  SearchView.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 28/01/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct SearchView: View {
    
    @State private var searchText: String = ""
    @State private var isEditing = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("Search", text: $searchText)
                        .padding(7)
                        .padding(.horizontal, 10)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
//                        .padding(.horizontal, 10)
                        .onTapGesture {
                            self.isEditing = true
                        }
                    
                    if isEditing {
                        Button(action: {
                            self.isEditing = false
                            self.searchText = ""
                        }) {
                            Text("Cancel")
                        }
                        .padding(.trailing, 10)
                        .transition(.move(edge: .trailing))
                        .animation(.easeInOut, value: isEditing)
                    }
                }
                .padding(.horizontal)
                
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        ForEach(UserModel.MOCK_USERS) { user in
                            NavigationLink(value: user) {
                                HStack {
                                    WebImage(url: URL(string: user.profileImageURL ?? ""))
                                        .onSuccess()
                                        .resizable()
                                        .scaledToFit()
                                        .background(.blue.opacity(0.3))
                                        .clipShape(Circle())
                                        .frame(width: 50, height: 50)
                                    VStack(alignment: .leading) {
                                        Text(user.userName)
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .fontDesign(.monospaced)
                                            .foregroundStyle(Color(.customText))
                                        if let fullName = user.fullName {
                                            Text(fullName)
                                                .font(.headline)
                                                .fontWeight(.medium)
                                                .fontDesign(.rounded)
                                                .foregroundStyle(Color(.customText))
                                        }
                                    }
                                }
                                .foregroundStyle(.black)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .navigationDestination(for: UserModel.self, destination: { user in
                ProfileView(user: user)
                    .navigationBarBackButtonHidden()
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
