//
//  AppConstants.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 28/01/24.
//

import Foundation

struct AppConstants {
    static let imageUrl: String = "https://ik.imagekit.io/instagram123/instagram:images/"
    static let imageExtension: String = ".png"
}

class ImageUrl {
    class func getFullImageUrl(number: Int) -> String {
        return AppConstants.imageUrl + number.description + AppConstants.imageExtension
    }
    
    class func getRandomImage() -> String {
        return AppConstants.imageUrl + Int.random(in: 1 ... 48).description + AppConstants.imageExtension
    }
}
