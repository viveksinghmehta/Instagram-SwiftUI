//
//  SearchView.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 28/01/24.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText: String = ""
    @State private var isEditing = false
    
    var body: some View {
        NavigationStack {
            HStack {
                TextField("Search", text: $searchText)
                    .padding(7)
                    .padding(.horizontal, 10)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal, 10)
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
                    ForEach(0 ... 10, id: \.self) { _ in
                        HStack {
                            Image("red-dragon")
                                .resizable()
                                .scaledToFit()
                                .background(.blue.opacity(0.3))
                                .clipShape(Circle())
                                .frame(width: 50, height: 50)
                            VStack(alignment: .leading) {
                                Text("mr.red.dragon")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .fontDesign(.monospaced)
                                Text("Mr Red Dragon")
                                    .font(.headline)
                                    .fontWeight(.medium)
                                    .fontDesign(.rounded)
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    SearchView()
}
