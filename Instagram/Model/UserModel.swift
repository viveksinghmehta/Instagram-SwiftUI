//
//  UserModel.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 08/03/24.
//

import Foundation

struct UserModel: Identifiable, Hashable, Codable {
    let id: String
    var userName: String
    var profileImageURL: String?
    var fullName: String?
    var bio: String?
    let email: String
    var isVerified: Bool = false
}

extension UserModel {
    static var MOCK_USERS: [UserModel] = [
        .init(id: UUID().uuidString, userName: "BatMan", profileImageURL: ImageUrl.getRandomAvatar(), fullName: "Bruce Wayne", bio: "I'm BatMan and i take care of Gautam City.\n I'm a DC Character", email: "batman@google.com", isVerified: true),
        .init(id: UUID().uuidString, userName: "Venom", profileImageURL: ImageUrl.getRandomAvatar(), fullName: "Eddy Broke", bio: "we are vemon", email: "vemon@google.com"),
        .init(id: UUID().uuidString, userName: "Iron Man", profileImageURL: ImageUrl.getRandomAvatar(), fullName: "Tony Stark", bio: "I'm Iron Man", email: "ironman@google.com"),
        .init(id: UUID().uuidString, userName: "Spider Man", profileImageURL: ImageUrl.getRandomAvatar(), fullName: nil, bio: "Hello i'm speidy", email: "spider@google.com", isVerified: true),
        .init(id: UUID().uuidString, userName: "blackPanther", profileImageURL: ImageUrl.getRandomAvatar(), fullName: "Tachale", bio: "Wakanda Forever", email: "blackpanther@google.com")
        
    ]
}
