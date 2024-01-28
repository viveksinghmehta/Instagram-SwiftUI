//
//  ProfileImageView.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 28/01/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProfileImageView: View {
    let imageNumber: Int
    
    var body: some View {
        WebImage(url: URL(string: ImageUrl.getFullImageUrl(number: imageNumber)))
            .onSuccess()
            .resizable()
            .placeholder {
                ProgressView()
            }
            .indicator(.activity)
            .transition(.fade(duration: 0.5))
            .scaledToFit()
            .background(.black)
    }
}

#Preview {
    ProfileImageView(imageNumber: 5)
}
