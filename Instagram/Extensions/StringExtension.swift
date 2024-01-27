//
//  StringExtension.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 28/01/24.
//

import Foundation

class ImageUrl {
    class func getFullImageUrl(number: Int) -> String {
        return AppConstants.imageUrl + number.description + AppConstants.imageExtension
    }
}
