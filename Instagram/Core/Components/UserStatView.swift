//
//  UserStatView.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 27/01/24.
//

import SwiftUI

struct UserStatView: View {
    let number: Int
    let stateText: String
    var body: some View {
        VStack {
            Text("\(number)")
                .fontWeight(.bold)
            Text(stateText)
        }
        .fontDesign(.rounded)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    UserStatView(number: 345, stateText: "Posts")
}
