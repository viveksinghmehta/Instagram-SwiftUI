//
//  UserModel.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 08/03/24.
//

import Foundation

struct UserModel: Identifiable, Codable {
    let id: String
    var userName: String
    var profileImageURL: String?
    var fullName: String?
    var bio: String?
    let email: String
}
