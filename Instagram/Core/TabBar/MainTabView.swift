//
//  MainTabView.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 27/01/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem { Image(systemName: "house") }
            Text("Search")
                .tabItem { Image(systemName: "magnifyingglass") }
            Text("Upload Post")
                .tabItem { Image(systemName: "plus.app") }
            Text("Notification")
                .tabItem { Image(systemName: "bell.fill") }
            ProfileView()
                .tabItem { Image(systemName: "person.crop.circle.fill") }
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
